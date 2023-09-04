using InterBaseSql.Data.Services;
using InterBaseSql.Data.InterBaseClient;
using System;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public delegate void MyServiceOutput(object sender, ServiceOutputEventArgs e);

    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void eMPLOYEEBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.eMPLOYEEBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.dataSet1);

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Form1_Shown(object sender, EventArgs e)
        {

        }

        public void OnServiceOutput(object sender, ServiceOutputEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(richTextBox1.Text))
            {
                richTextBox1.AppendText("\r\n" + e.Message);
            }
            else
            {
                richTextBox1.AppendText(e.Message);
            }
            richTextBox1.ScrollToCaret();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var connection = new IBConnection(ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString);
            connection.Open();

            var transaction = connection.BeginTransaction();
            try
            {
                var command = new IBCommand();
                command.Connection = connection;
                command.Transaction = transaction;
                command.CommandType = CommandType.Text;

                /* # Enable Embedded User Authentication and create users.
                   SYSDSO: for encryption management
                   HR_EMP: HR Dept. employee. Privilege to see "salary" info.
                   NEW_EMP: New employee. No privilege to see "salary" info.
                */
                command.CommandText = "ALTER DATABASE ADD ADMIN OPTION;";
                command.ExecuteNonQuery();
                command.CommandText = "CREATE USER SYSDSO SET PASSWORD 'sysdso';";
                command.ExecuteNonQuery();
                command.CommandText = "CREATE USER HR_EMP SET PASSWORD 'hr_emp';";
                command.ExecuteNonQuery();
                command.CommandText = "CREATE USER NEW_EMP SET PASSWORD 'new_emp';";
                command.ExecuteNonQuery();

                transaction.Commit();
                MessageBox.Show("New users are now created!");
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            var connection = new IBConnection(ConfigurationManager.ConnectionStrings["IBToGoSYSDSO"].ConnectionString);
            connection.Open();

            var transaction = connection.BeginTransaction();
            try
            {
                var command = new IBCommand();
                command.Connection = connection;
                command.Transaction = transaction;
                command.CommandType = CommandType.Text;

                /* # Create encryptions */
                command.CommandText = "ALTER DATABASE SET SYSTEM ENCRYPTION PASSWORD 'Secret Password';";
                command.ExecuteNonQuery();
                command.CommandText = "CREATE ENCRYPTION hr_key FOR AES WITH LENGTH 256 BITS;";
                command.ExecuteNonQuery();
                command.CommandText = "GRANT ENCRYPT ON ENCRYPTION hr_key TO SYSDBA;";
                command.ExecuteNonQuery();

                transaction.Commit();
                MessageBox.Show("Keys are now created!");
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }

        }

        private void button7_Click(object sender, EventArgs e)
        {
            var connection = new IBConnection(ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString);
            connection.Open();

            var transaction = connection.BeginTransaction();
            try
            {
                var command = new IBCommand();
                command.Connection = connection;
                command.Transaction = transaction;
                command.CommandType = CommandType.Text;

                /* # Encrypt database */
                //command.CommandText = "ALTER DATABASE ENCRYPT WITH hr_key;";
                //command.ExecuteNonQuery();

                /* # Encrypt column EMPLOYEE(SALARY) */
                command.CommandText = "ALTER TABLE EMPLOYEE ALTER COLUMN SALARY ENCRYPT WITH hr_key;";
                command.ExecuteNonQuery();
                command.CommandText = "ALTER TABLE EMPLOYEE ALTER COLUMN SALARY DECRYPT DEFAULT 0;";
                command.ExecuteNonQuery();
                command.CommandText = "GRANT DECRYPT(salary) ON EMPLOYEE TO HR_EMP;";
                command.ExecuteNonQuery();
                command.CommandText = "REVOKE ALL ON EMPLOYEE FROM PUBLIC;";
                command.ExecuteNonQuery();
                command.CommandText = "GRANT SELECT,INSERT,UPDATE,DELETE,REFERENCES ON EMPLOYEE TO PUBLIC;";
                command.ExecuteNonQuery();

                transaction.Commit();
                MessageBox.Show("Encryption rules are now applied!");
            }
            catch (Exception)
            {
                transaction.Rollback();
                throw;
            }

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.Close();
            this.dataSet1.EMPLOYEE.Clear();
            this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBToGoHREmp"].ConnectionString;
            this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.Close();
            this.dataSet1.EMPLOYEE.Clear();
            this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBToGoNEWEmp"].ConnectionString;
            this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = "";
            var backup = new IBBackup(ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString);
            backup.BackupFiles.Add(new IBBackupFile(@".\backup.ibk"));
            backup.Verbose = true;
            backup.ServiceOutput += OnServiceOutput;
            backup.Execute();
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            if (this.dataSet1.Tables[0].Rows.Count > 0)
            {
                MessageBox.Show("The restore operation needs to be done before trying any connection to the database!");
            }
            else
            {
                richTextBox1.Text = "";
                try
                {
                    var restore = new IBRestore(ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString);
                    restore.BackupFiles.Add(new IBBackupFile(@".\backup.ibk"));
                    restore.Options = IBRestoreFlags.Create | IBRestoreFlags.Replace;
                    restore.Verbose = true;
                    restore.ServiceOutput += OnServiceOutput;
                    restore.Execute();
                }
                finally
                {
                    this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString;
                    this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);
                }
            }
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString;
            this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);

        }
    }
}