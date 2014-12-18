unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Unit4,
  Vcl.DBGrids, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  Tpropuskiadd = class(TForm)
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
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    Edit1: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    FDQuery5: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure SELECTE;
    procedure INSERTE;
    procedure UPDATES;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ALL_DELETE;
    procedure FILTER;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  propuskiadd: Tpropuskiadd;

implementation

{$R *.dfm}

procedure Tpropuskiadd.FILTER;// ������ ���� �� ���������� �������
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add ('DELETE propuskinew.* FROM propuskinew, propuski  WHERE propuskinew.date=propuski.date and propuskinew.st_id=propuski.st_id');
FDQuery1.ExecSQL;
end;


procedure Tpropuskiadd.ALL_DELETE;
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add ('DELETE FROM propuskinew WHERE id<>0');
FDQuery1.ExecSQL;
end;



procedure Tpropuskiadd.INSERTE;
begin
FDquery1.SQL.Clear;
FDquery1.SQL.Add ('INSERT INTO propuskinew (st_id) SELECT id FROM studs WHERE studs.gp_id=:in2');
FDQuery1.ParamByName('in2').AsString:=DBLookupComboBox2.KeyValue;
FDQuery1.ExecSQL;
end;




procedure Tpropuskiadd.UPDATES;
begin
FDquery1.SQL.Clear;
FDquery1.SQL.Add ('UPDATE propuskinew SET date=:date');
FDQuery1.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery1.ExecSQL;
end;



procedure Tpropuskiadd.SELECTE;
begin
FDquery1.SQL.Clear; //
FDquery1.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch FROM studs, propuskinew WHERE gp_id=:id and studs.id=propuskinew.st_id');
FDQuery1.ParamByName('id').AsString:=DBLookupComboBox2.KeyValue;
FDQuery1.Open;

FDquery3.SQL.Clear; //
FDquery3.SQL.Add ('SELECT propuski.id, studs.fam, propuski.date, propuski.koll, propuski.prichina FROM studs, propuski WHERE studs.gp_id=:id and propuski.date=:in1 and studs.id=propuski.st_id');
FDQuery3.ParamByName('id').AsString:=DBLookupComboBox2.KeyValue;
FDQuery3.ParamByName('in1').AsDate:=DateTimePicker1.Date;
FDQuery3.Open;
end;



procedure Tpropuskiadd.Button1Click(Sender: TObject);//�������
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('DELETE FROM propuski WHERE id='+DBGrid2.Fields[0].DisplayText+'');
FDQuery4.ExecSQL;
ALL_DELETE;
INSERTE;
UPDATES;
FILTER;
SELECTE;
end;

procedure Tpropuskiadd.Button2Click(Sender: TObject); // ��������� �������
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('INSERT INTO propuski (date,koll,st_id,prichina) VALUES (:date,:koll,:st_id,:prichina)');
FDQuery4.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery4.ParamByName('koll').AsString:=Edit1.Text;
FDQuery4.ParamByName('st_id').AsString:=DBGrid1.Fields[0].DisplayText;
if radiogroup1.ItemIndex=0 then
FDQuery4.ParamByName('prichina').AsString:='������������'
else
FDQuery4.ParamByName('prichina').AsString:='��������������';
FDQuery4.ExecSQL;

if CheckBox2.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuski SET one="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
if CheckBox3.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuski SET two="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
if CheckBox4.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuski SET three="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
if CheckBox5.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuski SET four="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
if CheckBox6.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuski SET five="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
FILTER;
SELECTE;
end;



procedure Tpropuskiadd.Button3Click(Sender: TObject);
begin
if CheckBox2.Checked=true then
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('UPDATE propuskinew SET one="��" WHERE st_id=:id and date=:date ');
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].DisplayText;
FDQuery5.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery5.ExecSQL;
end;
end;




procedure Tpropuskiadd.Button4Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('UPDATE propuski SET koll=:koll WHERE id='+DBGrid2.Fields[0].DisplayText+'');
FDQuery4.ParamByName('koll').AsString:=Edit1.Text;
FDQuery4.ExecSQL;
FDQuery3.Refresh;
end;




procedure Tpropuskiadd.DateTimePicker1Change(Sender: TObject);
begin
ALL_DELETE;
INSERTE;
UPDATES;
FILTER;
SELECTE;
end;



procedure Tpropuskiadd.DBLookupComboBox1Click(Sender: TObject);
begin
DBGrid1.Visible:=False;
DBGrid2.Visible:=False;
FDquery2.SQL.Clear; //
FDquery2.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery2.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery2.Open;
DBLookupComboBox2.ListSource:=DataSource2;
DBLookupComboBox2.ListField:='name';
DBLookupComboBox2.KeyField:='id';
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name from predmeti WHERE sp_id=:in3');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
end;



procedure Tpropuskiadd.DBLookupComboBox2Click(Sender: TObject);
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
ALL_DELETE;
INSERTE;
UPDATES;
FILTER;
SELECTE;
end;



procedure Tpropuskiadd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ALL_DELETE;
DBLookupComboBox1.KeyValue:=-1;
DBLookupComboBox2.KeyValue:=-1;
DBGrid1.Visible:=False;
DBGrid2.Visible:=False;
end;

end.
