program CreditoParadxs;
 uses
  System.StartUpCopy,
  FMX.Forms,
  UnitTela1 in 'UnitTela1.pas' {FrmTela1},
  UnitSplashScreen in 'UnitSplashScreen.pas' {FormSplashScreen},
  UnitTela2addForm in 'UnitTela2addForm.pas' {FormTela2addForm},
  UnitTelaInfor in 'UnitTelaInfor.pas' {FormTelaInfor},
  uFormat in 'UnitFormat\uFormat.pas',
  UnitCadastro in 'UnitCadastro.pas' {FormCadd},
  Unit1 in 'Unit1.pas' {Form1};
  UnitDM in 'UnitDM.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplashScreen, FormSplashScreen);
  Application.CreateForm(TFrmTela1, FrmTela1);
  Application.CreateForm(TFormTela2addForm, FormTela2addForm);
  Application.CreateForm(TFormTelaInfor, FormTelaInfor);
  Application.CreateForm(TFormCadd, FormCadd);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;

end.
