unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.ListBox, FMX.Controls.Presentation, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.IB,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListView,
  FireDAC.Phys.IBLiteDef;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDQuery1EMP_NO: TSmallintField;
    FDQuery1FIRST_NAME: TStringField;
    FDQuery1LAST_NAME: TStringField;
    FDQuery1PHONE_EXT: TStringField;
    FDQuery1HIRE_DATE: TSQLTimeStampField;
    FDQuery1DEPT_NO: TStringField;
    FDQuery1JOB_CODE: TStringField;
    FDQuery1JOB_GRADE: TSmallintField;
    FDQuery1JOB_COUNTRY: TStringField;
    FDQuery1SALARY: TFMTBCDField;
    FDQuery1FULL_NAME: TStringField;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure Button1Click(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses System.IOUtils;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  FDQuery1.Open;
end;

procedure TMainForm.FDConnection1BeforeConnect(Sender: TObject);
var bToGo: boolean;
begin
  bToGo := False;
  {$IF DEFINED(IOS) OR DEFINED(ANDROID)}
  FDConnection1.Params.Values['Database'] := TPath.GetDocumentsPath + PathDelim + 'employee.gdb';
  bToGo := True;
  {$ELSEIF DEFINED(LINUX) OR DEFINED(WIN64)}
  FDConnection1.Params.Values['Database'] := GetCurrentDir + PathDelim + 'employee.gdb';
  bToGo := True;
  {$ELSEIF DEFINED(MACOS)}
  FDConnection1.Params.Values['Database'] := TPath.GetHomePath + PathDelim + 'employee.gdb';
  bToGo := True;
  {$ENDIF}
  FDPhysIBDriverLink1.Lite := bToGo;
  FDConnection1.Params.Values['User_name'] := 'sysdba';
  FDConnection1.Params.Values['Password'] := 'masterkey';
end;

end.
