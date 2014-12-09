unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Unit4,
  Vcl.DBGrids, Vcl.DBCtrls;

type
  TPropuskiadd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    RadioGroup1: TRadioGroup;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Propuskiadd: TPropuskiadd;

implementation

{$R *.dfm}

procedure TPropuskiadd.DBLookupComboBox1Click(Sender: TObject);
begin
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name from predmeti WHERE sp_id=:in3');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
end;



procedure TPropuskiadd.DBLookupComboBox2Click(Sender: TObject);
begin
DBLookupComboBox2.ListField:='name';
// показывать в комбике столбик name
DBLookupComboBox2.KeyField:='id'; //ключевое поле
end;

end.
