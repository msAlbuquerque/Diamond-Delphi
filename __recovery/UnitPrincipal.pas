unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Datasnap.DBClient, Vcl.WinXPickers, Vcl.Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1codigo_venda: TFDAutoIncField;
    FDTable1nome_cli: TStringField;
    FDTable1sobrenome_cli: TStringField;
    FDTable1cpf: TStringField;
    FDTable1nf: TIntegerField;
    FDTable1data_venda: TDateField;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    FDTable1forma_pagar: TStringField;
    FDQuery1: TFDQuery;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    DBText1: TDBText;
    Label10: TLabel;
    FDTable2: TFDTable;
    DataSource3: TDataSource;
    FDTable2nf_compra: TIntegerField;
    FDTable2data_compra: TDateField;
    FDTable2codigo_compras: TFDAutoIncField;
    FDTable2cnpj: TStringField;
    FDTable2nm_usuario: TStringField;
    FDTable2forma_pagar: TStringField;
    GroupBox2: TGroupBox;
    FDQuery2: TFDQuery;
    DataSource4: TDataSource;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    Label19: TLabel;
    FDTable1valor_venda: TFloatField;
    FDTable2valor_compra: TFloatField;
    Image1: TImage;
    DBComboBox4: TDBComboBox;
    PageControl1: TPageControl;
    Vendas: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit7: TDBEdit;
    TabSheet1: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit9: TDBEdit;
    FDTable2nm_fornecedor: TStringField;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= MessageDLG('Deseja realmente fechar?',MTConfirmation,[MBYES,MBNO],0)=MRYES;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.Open;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FDQuery2.Close;
  FDQuery2.Open;
end;

end.
