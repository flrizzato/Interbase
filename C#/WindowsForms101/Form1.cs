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

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBServer"].ConnectionString;
            this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["IBToGo"].ConnectionString;
            this.eMPLOYEETableAdapter.Fill(this.dataSet1.EMPLOYEE);
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            this.eMPLOYEETableAdapter.Connection.Close();
            this.dataSet1.EMPLOYEE.Clear();
        }
    }
}