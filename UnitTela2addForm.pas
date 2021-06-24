unit UnitTela2addForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListBox;

type
  TFormTela2addForm = class(TForm)
    botao: TRectangle;
    txtBotao: TText;
    ComboBoxParcelas: TComboBox;
    ListBoxItemPrimeira2: TListBoxItem;
    ListBoxItem12x: TListBoxItem;
    ListBoxItem15x: TListBoxItem;
    ListBoxItem24X: TListBoxItem;
    ListBoxItem36x: TListBoxItem;
    ListBoxItem48x: TListBoxItem;
    ComboBoxRenda: TComboBox;
    RectangleReal: TRectangle;
    TxtReal: TText;
    ListBoxItemPrimeiro: TListBoxItem;
    ListBoxItemMenos1000: TListBoxItem;
    ListBoxItem1500e2000: TListBoxItem;
    ListBoxItem2000e3000: TListBoxItem;
    ListBoxItem3000e4000: TListBoxItem;
    ListBoxItem4000e5000: TListBoxItem;
    ListBoxItem5000e6000: TListBoxItem;
    ListBoxItemMais6000: TListBoxItem;
    ListBoxItem1000e1500: TListBoxItem;
    ComboBoxValorEmprestimo: TComboBox;
    RectangleReal2: TRectangle;
    Text1: TText;
    ListBoxItemPriimeiro1: TListBoxItem;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    ListBoxItem13: TListBoxItem;
    ImageIcone: TImage;
    TextEmprestimo: TText;
    TextParcelas: TText;
    TextRenda: TText;
    procedure txtBotaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTela2addForm: TFormTela2addForm;



 implementation

{$R *.fmx}

uses UnitCadastro, UnitTelaInfor;



procedure TFormTela2addForm.txtBotaoClick(Sender: TObject);
begin
     (*
        não prosseguir se os campos não estiverem preenchido corretamente
     *)
  if ((ComboBoxRenda.ItemIndex = 0) and (ComboBoxValorEmprestimo.ItemIndex = 0) and (ComboBoxParcelas.ItemIndex = 0) ) then

    begin
      ShowMessage('Preencha todos os campos.');
    end;


    (*
      ir para a proxima tela
    *)
case ComboBoxRenda.ItemIndex of


1: ShowMessage('Infelismente não podemos continuar com seu emprestimo.');
2:
  begin

    FormTelaInfor.Show;
  end;
3:
  begin

    FormTelaInfor.Show;
  end;

4:
  begin

    FormTelaInfor.Show;
  end;

5:
  begin

    FormTelaInfor.Show;
  end;
6:
  begin

    FormTelaInfor.Show;
  end;

7:
  begin

    FormTelaInfor.Show;
  end;

8:
  begin

    FormTelaInfor.Show;
  end;

9:
  begin

    FormTelaInfor.Show;
  end;

10:
  begin

    FormTelaInfor.Show;
  end;
11:
  begin

    FormCadd.Show;
  end;
12:
  begin
      FormCadd.Show;

  end;
end;
end;

end.



