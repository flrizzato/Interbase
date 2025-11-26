//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.DBScope.hpp>
#include <Data.Bind.EngExt.hpp>
#include <Data.Bind.Grid.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.Comp.UI.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.IB.hpp>
#include <FireDAC.Phys.IBBase.hpp>
#include <FireDAC.Phys.IBDef.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <Vcl.Bind.ControlList.hpp>
#include <Vcl.Bind.DBEngExt.hpp>
#include <Vcl.Bind.Editors.hpp>
#include <Vcl.ControlList.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TButton *Button1;
	TControlList *ControlList1;
	TLabel *Label1;
	TLabel *Label2;
	TFDQuery *FDQuery1;
	TSmallintField *FDQuery1EMP_NO;
	TStringField *FDQuery1FIRST_NAME;
	TStringField *FDQuery1LAST_NAME;
	TStringField *FDQuery1PHONE_EXT;
	TSQLTimeStampField *FDQuery1HIRE_DATE;
	TStringField *FDQuery1DEPT_NO;
	TStringField *FDQuery1JOB_CODE;
	TSmallintField *FDQuery1JOB_GRADE;
	TStringField *FDQuery1JOB_COUNTRY;
	TFMTBCDField *FDQuery1SALARY;
	TStringField *FDQuery1FULL_NAME;
	TFDGUIxWaitCursor *FDGUIxWaitCursor1;
	TFDPhysIBDriverLink *FDPhysIBDriverLink1;
	TFDConnection *FDConnection1;
	TBindSourceDB *BindSourceDB1;
	TBindingsList *BindingsList1;
	TLinkPropertyToField *LinkPropertyToFieldCaption;
	TLinkPropertyToField *LinkPropertyToFieldCaption2;
	TLinkGridToDataSource *LinkGridToDataSourceBindSourceDB1;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall FDConnection1BeforeConnect(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
