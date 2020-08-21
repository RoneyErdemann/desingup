program DelphiUP;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  DelphiUp.View.Pages.Index in '..\src\view\Pages\DelphiUp.View.Pages.Index.pas' {FrmMain},
  DelphiUp.View.Layout.Principal in '..\src\view\Layouts\DelphiUp.View.Layout.Principal.pas' {LayoutPrincipal},
  DelphiUp.View.Services.Routers in '..\src\view\Services\DelphiUp.View.Services.Routers.pas',
  DelphiUp.View.Styles in '..\src\view\Styles\DelphiUp.View.Styles.pas',
  DelphiUp.View.Pages.Menu.Principal in '..\src\view\Pages\DelphiUp.View.Pages.Menu.Principal.pas' {PageMenuPrincipal},
  DelphiUp.View.Component.Button1 in '..\src\view\Component\DelphiUp.View.Component.Button1.pas' {ComponentButton001};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TComponentButton001, ComponentButton001);
  Application.Run;
end.
