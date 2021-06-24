unit UnitTelaInfor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.StdCtrls, uFormat;

type
  TFormTelaInfor = class(TForm)
    Layout1: TLayout;
    Edit1Topo: TEdit;
    TextValor: TText;
    TextParcelas: TText;
    LabelDetalhes: TLabel;
    Layout2: TLayout;
    LabelCont: TLabel;
    TextCont: TText;
    LabelCont2: TLabel;
    mask1: TEdit;
    TextVParcelas: TText;
    Label3: TLabel;
    Label2: TLabel;
    TextValorFinal: TText;
    Layout3: TLayout;
    Layout4: TLayout;
    ImageFundo: TImage;
    botao: TRectangle;
    txtBotao: TText;
    ImageLogo: TImage;
    ImageMao: TImage;
    procedure FormShow(Sender: TObject);
    procedure mask1Typing(Sender: TObject);
    procedure txtBotaoClick(Sender: TObject);

  private
    { Private declarations }
    Vparcelas,valo, parcelas: real ;
    VParcelasF,valorF,valor : real;
    VFinal ,mask: string;

  public
    { Public declarations }
  end;

var
  FormTelaInfor: TFormTelaInfor;

 implementation

{$R *.fmx}

uses UnitTela2addForm, UnitCadastro;

procedure TFormTelaInfor.FormShow(Sender: TObject);
begin
case FormTela2addForm.ComboBoxParcelas.ItemIndex of     // add juros para cada valor digitado

1:  begin
        (TextParcelas.Text := '12' );
        Vparcelas := StrToInt('10');

    end;

2: begin
        TextParcelas.Text := '15';
        Vparcelas := StrToInt('12');
   end;


3:   begin
        TextParcelas.Text := '24';
        Vparcelas := StrToInt('15');
   end;

4:   begin
        TextParcelas.Text := '36';
        Vparcelas := StrToInt('15');
   end;

5:   begin
        TextParcelas.Text := '48';
        Vparcelas := StrToInt('20');
   end;

end;
  case FormTela2addForm.ComboBoxValorEmprestimo.ItemIndex of    //converter texto sem o ponto

1:   begin
        TextValor.Text := '1.000';
        valor := strToInt('1000')
     end;

2:     begin
        TextValor.Text := '2.000';
        valor := strToInt('2000')
     end;

3:   begin
        TextValor.Text := '3.000';
        valor := strToInt('3000');
     end;

4:     begin
        TextValor.Text := '4.000';
        valor := strToInt('4000');
     end;

5:    begin
        TextValor.Text := '5.000';
        valor := strToInt('5000');
     end;

6:   begin
        TextValor.Text := '6.000';
        valor := strToInt('6000');
     end;

7:     begin
        TextValor.Text := '7.000';
        valor := strToInt('7000');
     end;

8:    begin
        TextValor.Text := '8.000';
        valor := strToInt('8000');
     end;

9:     begin
        TextValor.Text := '9.000';
        valor := strToInt('9000');
     end;

10:    begin
        TextValor.Text := '10.000';
        valor := strToInt('10000');
     end;

11:  TextValor.Text := 'O ';
end;

  begin

    VParcelasF :=  StrToFloat(FormatFloat('#0.00 ',(valor*Vparcelas/100)+ valor));   //calcular o valor final com juros
    parcelas := StrToFloat(FormatFloat('#0.00 ', VParcelasF/StrToInt(TextParcelas.Text)));   // calcular parcelas com juros
    VFinal := FloatToStr(VParcelasF);  // valor final com juros
     TextValorFinal.Text := VFinal;   // valor final convertido em String


    mask1.text := FloatToStr(parcelas);
   // mask1:= TextVParcelas.Text;
    TextVParcelas.Text :=  mask1.Text;
    //Formatar(TextVParcelas,TFormato.valor );

  end;

end;







procedure TFormTelaInfor.mask1Typing(Sender: TObject);
begin
    Formatar(TextValorFinal,TFormato.valor );


end;

procedure TFormTelaInfor.txtBotaoClick(Sender: TObject);
begin
 FormCadd.Show;
end;

end.




