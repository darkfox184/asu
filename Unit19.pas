unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Unit4,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportRTF, frxClass, frxExportPDF, frxDBSet;
type
  TOcenivanie = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    sistem: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery3: TFDQuery;
    Label7: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    FDQuery7: TFDQuery;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Label8: TLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Print: TFDQuery;
    Button3: TButton;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure sistemClick(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ALL_DELETE;
    procedure INSERTE;
    procedure UPDATE_pr_id;
    procedure UPDATE_tp_id;
    procedure UPDATE_mod_id;
    procedure FILTER;
    procedure SELECTE;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ocenivanie: TOcenivanie;
  xi: string;
  Again: string;
  in21:  string;

implementation

{$R *.dfm}

procedure TOcenivanie.ALL_DELETE;
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE FROM ocenka WHERE id<>0');
FDQuery6.ExecSQL;
end;


procedure TOcenivanie.INSERTE;
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('INSERT INTO ocenka (st_id) SELECT id FROM studs WHERE studs.gp_id=:in2');
// ���������� ��2 ����������� �������� �� ������� ������� � ��������
// ��������� ��������� � ������� ������
FDQuery5.ParamByName('in2').AsString:=DBLookupComboBox2.KeyValue;
FDQuery5.ExecSQL;
end;


procedure TOcenivanie.UPDATE_pr_id;
begin
FDquery2.SQL.Clear; //  ������� ����� ������� �������
FDquery2.SQL.Add ('UPDATE ocenka SET pr_id=:in5');
FDQuery2.ParamByName('in5').AsString:=DBLookupComboBox3.KeyValue;
FDQuery2.ExecSQL;
end;


procedure TOcenivanie.UPDATE_tp_id;
begin
if DBLookupComboBox6.KeyValue>0 then
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('UPDATE ocenka SET tp_id=:id');
FDQuery2.ParamByName('id').AsString:=DBLookupComboBox6.KeyValue;
FDQuery2.ExecSQL;
end;
end;


procedure TOcenivanie.UPDATE_mod_id;
begin
if DBLookupComboBox6.KeyValue=1 then
begin
if DBLookupComboBox4.KeyValue>0 then
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('UPDATE ocenka SET mod_id=:m');
FDQuery2.ParamByName('m').AsString:=DBLookupComboBox4.KeyValue;
FDQuery2.ExecSQL;
end;
end
else
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('UPDATE ocenka SET mod_id = NULL');
FDQuery2.ExecSQL;
end;
end;


procedure TOcenivanie.FILTER;
begin
FDQuery6.SQL.Clear;
if DBLookupComboBox4.KeyValue>0 then
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE ocenka.* FROM ocenka, ocenkanew  WHERE ocenka.st_id=ocenkanew.st_id and ocenka.pr_id=ocenkanew.pr_id and ocenka.tp_id=ocenkanew.tp_id and ocenka.mod_id=ocenkanew.mod_id');
FDQuery6.ExecSQL;
end
else
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE ocenka.* FROM ocenka, ocenkanew  WHERE ocenka.st_id=ocenkanew.st_id and ocenka.pr_id=ocenkanew.pr_id and ocenka.tp_id=ocenkanew.tp_id');
FDQuery6.ExecSQL;
// ������ ���� �� ���������� �������
end;
end;

procedure TOcenivanie.SELECTE;
begin
if ((DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0))
then
begin
if DBLookupComboBox4.KeyValue>0 then
begin
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch, ocenkanew.name FROM studs,ocenkanew WHERE ocenkanew.mod_id=:in1 and ocenkanew.tp_id=:in9 and ocenkanew.st_id=studs.id and studs.gp_id=:in6 and ocenkanew.pr_id=:in8');
FDQuery7.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery7.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery7.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery7.ParamByName('in1').AsString:=DBLookupComboBox4.KeyValue;
FDQuery7.Open;
DataSource3.DataSet:=FDQuery7; // ������� ������ �� ����� � DBGrid

DataSource1.DataSet:=FDQuery2;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch FROM studs, ocenka WHERE ocenka.tp_id=:in9 and studs.gp_id=:in6 and ocenka.pr_id=:in8 and ocenka.mod_id=:in1 and studs.id=ocenka.st_id');
FDQuery2.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery2.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery2.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery2.ParamByName('in1').AsString:=DBLookupComboBox4.KeyValue;
FDQuery2.Open;
FDQuery2.Refresh;
FDQuery7.Refresh;
end

else
begin
FDQuery7.SQL.Clear;
FDQuery7.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch, ocenkanew.name FROM studs,ocenkanew WHERE ocenkanew.tp_id=:in9 and studs.gp_id=:in6 and ocenkanew.pr_id=:in8 and studs.id=ocenkanew.st_id');
FDQuery7.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery7.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery7.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery7.Open;
DataSource3.DataSet:=FDQuery7; // ������� ������ �� ����� � DBGrid

DataSource1.DataSet:=FDQuery2;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch FROM studs, ocenka WHERE ocenka.tp_id=:in9 and studs.gp_id=:in6 and ocenka.pr_id=:in8 and studs.id=ocenka.st_id');
FDQuery2.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery2.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery2.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery2.Open;
end;
FDQuery2.Refresh;
FDQuery7.Refresh;
end;
end;


//������ �������
procedure TOcenivanie.Button1Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('DELETE FROM ocenkanew WHERE st_id='+DBGrid2.Fields[0].DisplayText+'');
FDQuery4.ExecSQL;
ALL_DELETE;
INSERTE;
UPDATE_pr_id;
if DBLookupComboBox6.KeyValue>0 then
begin
UPDATE_tp_id;
UPDATE_mod_id;
end;
FILTER;
SELECTE;
FDQuery2.Refresh;
FDQuery7.Refresh;
end;



// ��������� ������
procedure TOcenivanie.Button2Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('UPDATE ocenka SET name=:name WHERE st_id='+DBGrid1.Fields[0].DisplayText+'');
FDQuery4.ParamByName('name').AsString:=DBLookupComboBox5.Text;
FDQuery4.ExecSQL;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('INSERT INTO ocenkanew (id,name,pr_id,mod_id,st_id,tp_id) SELECT * FROM ocenka WHERE name>1');
FDQuery4.ExecSQL;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('DELETE FROM ocenka WHERE name>1');
FDQuery4.ExecSQL;
DBLookupComboBox5.KeyValue:=-1;
FDQuery2.Refresh;
FDQuery7.Refresh;
end;


// ������
procedure TOcenivanie.Button3Click(Sender: TObject);
begin
Print.SQL.Clear;
Print.Active:=false;
Print.SQL.Add ('DELETE FROM  `printo`');
Print.ExecSQL;
Print.SQL.Clear;
Print.SQL.Add ('INSERT INTO printo (id,pr_id,mod_id,st_id,tp_id) SELECT id,pr_id,mod_id,st_id,tp_id FROM ocenka WHERE pr_id=:in21 AND mod_id=:in22 AND tp_id=:in24 ');
Print.ParamByName('in21').AsString:= DBLookupComboBox3.KeyValue;
Print.ParamByName('in22').AsString:= DBLookupComboBox4.KeyValue;
Print.ParamByName('in24').AsString:= DBLookupComboBox6.KeyValue;
Print.ExecSQL;
Print.Active:=true;
FrxReport1.ShowReport;
                                         (*
if DBLookupComboBox6.KeyValue=1 then
begin
Print.SQL.Add ('INSERT INTO printo(id,pr_id,mod_id ,st_id,tp_id) SELECT name,pr_id, mod_id , st_id, tp_id FROM ocenka, ocenkanew WHERE ocenkanew.pr_id=:in21 AND ocenkanew.mod_id=:in22 AND ocenkanew.st_id=:in23 AND ocenkanew.tp_id=:in24');
Print.ParamByName('in21').AsString:= DBLookupComboBox3.Text;
Print.ParamByName('in23').AsString:= DBGrid1.Fields[0].AsString;
Print.ParamByName('in24').AsString:= DBLookupComboBox6.Text;
Print.ParamByName('in22').AsString:= DBLookupComboBox6.KeyField;
//Print.ParamByName('in25').AsString:= DBGrid2.Fields[2].AsString;
end;
if DBLookupComboBox6.KeyValue>1 then
begin
Print.SQL.Add ('INSERT INTO printo(id,name, pr_id, mod_id , st_id, tp_id) SELECT ocenka.name ,ocenkanew.name,ocenka.st_id,ocenkanew.pr_id,ocenkanew.mod_id,ocenkanew.st_id,ocenkanew.tp_id FROM ocenka, ocenkanew WHERE ocenkanew.pr_id=:in21 AND ocenkanew.st_id=:in23 AND ocenkanew.tp_id=:in24 AND pr_id=:in21');
Print.ParamByName('in21').AsString:= DBLookupComboBox3.Text;
Print.ParamByName('in23').AsString:= DBGrid1.Fields[0].AsString;
Print.ParamByName('in24').AsString:= DBLookupComboBox6.Text;
//Print.ParamByName('in25').AsString:= DBGrid2.Fields[2].Text;
end;
                                         *)
end;

//������ ��������
procedure TOcenivanie.Button4Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('UPDATE ocenkanew SET name=:name WHERE st_id='+DBGrid2.Fields[0].DisplayText+'');
FDQuery4.ParamByName('name').AsString:=DBLookupComboBox5.Text;
FDQuery4.ExecSQL;
FDQuery7.Refresh;
end;



//� � � � �   � � � � � � � � � � � � �
procedure TOcenivanie.DBLookupComboBox1Click(Sender: TObject);
begin
DBLookupComboBox2.Enabled:=true;
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True; // ON �������
DBGrid2.Visible:=True; // ON �������
end
else
begin
DBGrid1.Visible:=False; // OFF �������
DBGrid2.Visible:=False; // OFF �������
end;
FDquery3.SQL.Clear; //
FDquery3.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery3.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery3.Open;
DBLookupComboBox2.ListSource:=DataSource2;
//������ ��� ������� ������� ����� �� DataSource2
DBLookupComboBox2.ListField:='name';
// ���������� � ������� ������� name
DBLookupComboBox2.KeyField:='id'; //�������� ����
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name FROM predmeti WHERE sp_id=:in3');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
end;


//� � � � �    � � � � � �
procedure TOcenivanie.DBLookupComboBox2Click(Sender: TObject);
begin
DBLookupComboBox3.Enabled:=true;
ALL_DELETE;
INSERTE;
if DBLookupComboBox3.KeyValue>0 then
begin
UPDATE_pr_id;
end;
if DBLookupComboBox6.KeyValue>0 then
begin
UPDATE_tp_id;
UPDATE_mod_id;
end;
FILTER;
SELECTE;
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end
else
begin
DBGrid1.Visible:=False; // OFF �������
DBGrid2.Visible:=False; // OFF �������
end;
DataSource1.DataSet:=FDQuery2; // ������� ������ �� ����� � DBGrid
DBLookupComboBox2.ListField:='name';
// ���������� � ������� ������� name
DBLookupComboBox2.KeyField:='id'; //�������� ����
end;


//� � � � �    � � � � � � � �
procedure TOcenivanie.DBLookupComboBox3Click(Sender: TObject);
begin
DBLookupComboBox6.Enabled:=true;
ALL_DELETE;
INSERTE;
UPDATE_pr_id;
if DBLookupComboBox6.KeyValue>0 then
begin
UPDATE_tp_id;
UPDATE_mod_id;
end;
FILTER;
SELECTE;

if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end
else
begin
DBGrid1.Visible:=False; // OFF �������
DBGrid2.Visible:=False; // OFF �������
end;
end;



// � � � � �    � � � � � �
procedure TOcenivanie.DBLookupComboBox4Click(Sender: TObject);
begin
ALL_DELETE;
INSERTE;
UPDATE_pr_id;
if DBLookupComboBox6.KeyValue>0 then
begin
UPDATE_tp_id;
UPDATE_mod_id;
end;
FILTER;
SELECTE;

DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
FDQuery2.Refresh;
FDQuery7.Refresh;
end;


//� � � � �    � � � �    � � � � � �
 procedure TOcenivanie.DBLookupComboBox6Click(Sender: TObject);
begin
if ((DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0))
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end
else
begin
DBGrid1.Visible:=False; // OFF �������
DBGrid2.Visible:=False; // OFF �������
end;

if(DBLookupComboBox6.KeyValue=1) then
begin
DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select  id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBLookupComboBox3.KeyValue;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
DBLookupComboBox4.Enabled:=true;
end
else
begin
DBLookupComboBox4.Enabled:=false;
DBLookupComboBox4.KeyValue:=-1;
ALL_DELETE;
INSERTE;
UPDATE_pr_id;
if DBLookupComboBox6.KeyValue>0 then
begin
UPDATE_tp_id;
UPDATE_mod_id;
end;
FILTER;
SELECTE;
FDQuery2.Refresh;
FDQuery7.Refresh;
end;
end;


procedure TOcenivanie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DBLookupComboBox1.KeyValue:=-1;
DBLookupComboBox2.KeyValue:=-1;
DBLookupComboBox3.KeyValue:=-1;
DBLookupComboBox4.KeyValue:=-1;
DBLookupComboBox6.KeyValue:=-1;
DBLookupComboBox2.Enabled:=false;
DBLookupComboBox3.Enabled:=false;
DBLookupComboBox4.Enabled:=false;
DBLookupComboBox6.Enabled:=false;
DBGrid1.Visible:=False; // OFF �������
DBGrid2.Visible:=False; // OFF �������
end;

procedure TOcenivanie.FormCreate(Sender: TObject);
begin
if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;
end;


procedure TOcenivanie.sistemClick(Sender: TObject);
begin
if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;
end;
end.
