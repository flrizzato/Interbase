unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Phys.IBDef, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.IB, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ControlList, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, Vcl.Bind.ControlList, Data.Bind.Grid;

type
  TForm1 = class(TForm)
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
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDConnection1: TFDConnection;
    Panel1: TPanel;
    ControlList1: TControlList;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses System.IOUtils;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.Open;
end;

procedure TForm1.FDConnection1BeforeConnect(Sender: TObject);
begin
  {$IF DEFINED(WIN64)}
  FDConnection1.Params.Values['Database'] := GetCurrentDir + PathDelim + 'employee.gdb';
  FDPhysIBDriverLink1.Lite := True;
  {$ENDIF}
  FDConnection1.Params.Values['User_name'] := 'sysdba';
  FDConnection1.Params.Values['Password'] := 'masterkey'
end;

end.
