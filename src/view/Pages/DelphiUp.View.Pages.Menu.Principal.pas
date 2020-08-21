unit DelphiUp.View.Pages.Menu.Principal;

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
  FMX.Layouts, FMX.MultiView, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TPageMenuPrincipal = class(TForm)
    Layout1: TLayout;
  private
    { Private declarations }
    FMultiView: TMultiView;
    procedure MultiViewStatus(Sender: TObject);
  public
    { Public declarations }
    function Component: TFmxObject;
    function MultiView(aValue: TMultiView): TPageMenuPrincipal;
  end;

var
  PageMenuPrincipal: TPageMenuPrincipal;

implementation

uses
  DelphiUp.View.Component.Button1;

{$R *.fmx}

{ TPageMenuPrincipal }

function TPageMenuPrincipal.Component: TFmxObject;
begin
  Result := Layout1;

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_home')
      .OnClick(MultiViewStatus)
      .Component
  );

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_graph')
      .OnClick(MultiViewStatus)
      .Component
  );

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_price')
      .OnClick(MultiViewStatus)
      .Component
  );

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_market')
      .OnClick(MultiViewStatus)
      .Component
  );

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_sale')
      .OnClick(MultiViewStatus)
      .Component
  );

  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_cart')
      .OnClick(MultiViewStatus)
      .Component
  );


  Layout1.AddObject(
    TComponentButton001
      .Create(Self)
      .Image('ic_star')
      .OnClick(MultiViewStatus)
      .Component
  );
end;

function TPageMenuPrincipal.MultiView(aValue: TMultiView): TPageMenuPrincipal;
begin
  Result := Self;
  FMultiView := aValue;
end;

procedure TPageMenuPrincipal.MultiViewStatus(Sender: TObject);
begin
  if not FMultiView.IsShowed then
    FMultiView.ShowMaster;
end;

end.
