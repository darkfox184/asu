unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  propuskiadd: Tpropuskiadd;

implementation

{$R *.dfm}

end.