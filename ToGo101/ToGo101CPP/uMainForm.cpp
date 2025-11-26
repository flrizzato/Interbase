//---------------------------------------------------------------------------
#include <vcl.h>
#include <IOUtils.hpp>
#include "uMainForm.h"
#pragma hdrstop
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm* MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner) : TForm(Owner) {}
//---------------------------------------------------------------------------
void __fastcall TMainForm::Button1Click(TObject* Sender)
{
    FDQuery1->Open();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FDConnection1BeforeConnect(TObject* Sender)
{
#if defined(_WIN64)
	UnicodeString aPath = TPath::Combine(GetCurrentDir(), "employee.gdb");
	FDConnection1->Params->Values["Database"] = aPath;
	FDPhysIBDriverLink1->Lite = True;
#endif
	FDConnection1->Params->Values["User_Name"] = "sysdba";
    FDConnection1->Params->Values["Password"] = "masterkey";
}

//---------------------------------------------------------------------------

