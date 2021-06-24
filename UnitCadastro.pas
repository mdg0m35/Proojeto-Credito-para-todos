unit UnitCadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,uFormat;

type
  TFormCadd = class(TForm)
    Edit1Topo: TEdit;
    LabelNome: TLabel;
    LayoutCad: TLayout;
    EditNome: TEdit;
    EditRG: TEdit;
    LabelRG: TLabel;
    EditCPF: TEdit;
    LabelCPF: TLabel;
    EditDTnascimento: TEdit;
    LabelDataNascimento: TLabel;
    ImageFundocad: TImage;
    LayoutFundoBranco: TLayout;
    Imagelogo: TImage;
    botao: TRectangle;
    txtBotao: TText;
    EditRenda: TEdit;
    TextRenda: TText;
    LabelValorEmp: TLabel;
    EditvalorEmprestimo: TEdit;
    LabelParcelas: TLabel;
    EditParcelas: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    procedure txtBotaoClick(Sender: TObject);
    procedure EditNomePainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure EditRGPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure EditDTnascimentoPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure EditRendaPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure EditvalorEmprestimoPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure EditParcelasPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadd: TFormCadd;
implementation

{$R *.fmx}

uses UnitDM;


procedure TFormCadd.EditDTnascimentoPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
 Formatar(EditDTnascimento,TFormato.Dt );
end;

procedure TFormCadd.EditNomePainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
     Formatar(EditRg,TFormato.Personalizado, '###########-#' );
end;

procedure TFormCadd.EditParcelasPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  Formatar(EditParcelas,TFormato.Personalizado, '##,X' );
end;

procedure TFormCadd.EditRendaPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
   Formatar(EditRenda,TFormato.Money );
end;

procedure TFormCadd.EditRGPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
   Formatar(EditCPF,TFormato.CPF);
end;

procedure TFormCadd.EditvalorEmprestimoPainting(Sender: TObject;
  Canvas: TCanvas; const ARect: TRectF);
begin
  Formatar(EditvalorEmprestimo,TFormato.Money );
end;

procedure TFormCadd.txtBotaoClick(Sender: TObject);
begin    (*
        não prosseguir se os campos não estiverem preenchido corretamente
     *)

     if ((EditNome.Text = '') or (EditRG.Text = '') or (EditCPF.Text = '')
     or (EditDTnascimento.Text = '') or (EditRenda.Text = '' ) or (EditvalorEmprestimo.Text = '')
     or (EditParcelas.Text = '')) then
   begin
   ShowMessage('Preencha todos os campos!');
   exit
   end else;
        begin

     dm.conexao.Connected := false;
  with dm.FDCadastro do  // adcionar dados no banco de dados
  begin

    active := true;
    Open('select *from cadastro');
    Append;
    FieldByName('nome').AsString := EditNome.Text;
    FieldByName('rg').AsString := EditRG.Text;
    FieldByName('cpf').AsString := EditCPF.Text;
    FieldByName('datanascimento').AsString := EditDTnascimento.Text;
    FieldByName('renda').AsString := EditRenda.Text;
   FieldByName('valoremprestimo').AsString := EditvalorEmprestimo.Text;
    FieldByName('parcelas').AsString := EditParcelas.Text;

    Post;
    Close;
    end;
       ShowMessage('Cadastro realizado com sucesso');
  FormCadd.Close;

  dm.FDcadastro.Active := true;


        end;
end;

end.

