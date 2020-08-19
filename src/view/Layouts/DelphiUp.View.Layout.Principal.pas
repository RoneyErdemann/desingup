unit DelphiUp.View.Layout.Principal;

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
  FMX.Layouts,
  Router4D.Interfaces,
  FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Objects, FMX.MultiView;

type
  TLayoutPrincipal = class(TForm,  IRouter4DComponent)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    Layout2: TLayout;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Button1: TButton;
    Layout5: TLayout;
    MultiView1: TMultiView;
    Rectangle5: TRectangle;
  private
    { Private declarations }
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TFMXObject;
    procedure UnRender;
  end;

var
  LayoutPrincipal: TLayoutPrincipal;

implementation

uses
  DelphiUp.View.Styles;

{$R *.fmx}

{ TLayoutPrincipal }

procedure TLayoutPrincipal.ApplyStyle;
begin
  Rectangle1.Fill.Color := BACKGROUND;
  Rectangle2.Fill.Color := DARK;
  Rectangle3.Fill.Color := PRIMARY;
  Rectangle4.Fill.Color := LIGHT;
  Rectangle5.Fill.Color := PRIMARY;
end;

function TLayoutPrincipal.Render: TFMXObject;
begin
  Result := Layout1;
  ApplyStyle;
end;

procedure TLayoutPrincipal.UnRender;
begin

end;

end.
