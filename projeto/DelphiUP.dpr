program DelphiUP;

uses
  System.StartUpCopy,
  FMX.Forms,
  DelphiUp.View.Pages.Index in '..\src\view\Pages\DelphiUp.View.Pages.Index.pas' {FrmMain},
  DelphiUp.View.Layout.Principal in '..\src\view\Layouts\DelphiUp.View.Layout.Principal.pas' {LayoutPrincipal},
  DelphiUp.View.Services.Routers in '..\src\view\Services\DelphiUp.View.Services.Routers.pas',
  DelphiUp.View.Styles in '..\src\view\Styles\DelphiUp.View.Styles.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
