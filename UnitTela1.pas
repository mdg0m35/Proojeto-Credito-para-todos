unit UnitTela1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TFrmTela1 = class(TForm)
    Logo: TImage;
    botao: TRectangle;
    txtBotao: TText;
    TextParadodxs: TText;
    procedure txtBotaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela1: TFrmTela1;


   implementation

{$R *.fmx}

uses UnitTela2addForm;


procedure TFrmTela1.txtBotaoClick(Sender: TObject);
begin
     FormTela2addForm.Show;
end;

end.







