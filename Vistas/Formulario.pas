unit Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnSaludar: TButton;
    edtSaludo: TEdit;
    lblSaludo: TLabel;
    procedure btnSaludarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  GeneradorSaludos;

{$R *.dfm}

procedure TForm2.btnSaludarClick(Sender: TObject);
var
  FGeneradorSaludo: TGeneradorSaludos;
begin
  FGeneradorSaludo := TGeneradorSaludos.Create;
  lblSaludo.Caption := FGeneradorSaludo.Saludar(edtSaludo.Text);
end;

end.
