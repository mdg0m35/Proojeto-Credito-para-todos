unit UnitSplashScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TFormSplashScreen = class(TForm)
    Timer1: TTimer;
    ImageLogo: TImage;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplashScreen: TFormSplashScreen;

  implementation

{$R *.fmx}

uses UnitPrincipal, UnitTela1;

procedure TFormSplashScreen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := TCloseAction.caFree;
    FormSplashScreen := nil;
end;

procedure TFormSplashScreen.FormCreate(Sender: TObject);
begin
    ImageLogo.Align := TAlignLayout.Center;
    Image2.Align := TAlignLayout.Center;
end;

procedure TFormSplashScreen.FormShow(Sender: TObject);
begin
 Timer1.Interval := 2000;
    Timer1.Enabled := true;
    ImageLogo.Opacity := 0;

    ImageLogo.Align := TAlignLayout.None;
    ImageLogo.AnimateFloat('Opacity', 1, 0.3);
    ImageLogo.AnimateFloatDelay('Position.Y', 0, 0.3, 1.7, TAnimationType.&In, TInterpolationType.Back);

    ImageLogo.Align := TAlignLayout.None;
    ImageLogo.AnimateFloat('Opacity', 1, 1);
    ImageLogo.AnimateFloatDelay('Position.X', 9, 0.9, 0.7, TAnimationType.&In, TInterpolationType.Back);

    Image2.Opacity := 1;
    Image2.Align := TAlignLayout.None;
    Image2.AnimateFloat('Opacity', 1, 0.3);
    Image2.AnimateFloatDelay('Position.X', -1, -10, -0.2, TAnimationType.&In, TInterpolationType.Back);
end;



procedure TFormSplashScreen.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled := false;

    if NOT Assigned(FrmTela1) then
        Application.CreateForm(TFrmTela1, FrmTela1);

    Application.MainForm := FrmTela1;
    FrmTela1.Show;
    FormSplashScreen.Close;
end;

end.



