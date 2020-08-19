unit DelphiUp.View.Pages.Index;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts;

type
  TFrmMain = class(TForm)
    lytMain: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  Router4D,
  DelphiUp.View.Layout.Principal;

{$R *.fmx}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TLayoutPrincipal>.SetElement(lytMain, lytMain);
end;

end.
