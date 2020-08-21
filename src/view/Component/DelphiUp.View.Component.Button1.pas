unit DelphiUp.View.Component.Button1;

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
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Effects,
  FMX.Filter.Effects,
  Router4D.Props;

type
  TComponentButton001 = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    FillRGBEffect1: TFillRGBEffect;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    FImage: String;
    FOnClick: TProc<TObject>;
    FClicked: Boolean;
  public
    { Public declarations }
    function Component: TFMXObject;
    function Image(aValue: String): TComponentButton001;
    function OnClick(aValue: TProc<TObject> ) : TComponentButton001;

    [Subscribe]
    procedure Props(aValue: TProps);
  end;

const
  MinhaKey = 'Button001';

var
  ComponentButton001: TComponentButton001;

implementation

uses
  DelphiUp.View.Styles;

{$R *.fmx}

function TComponentButton001.Component: TFMXObject;
begin
   Result := Layout1;
   Layout1.Align := TAlignLayout.Top;
   FillRGBEffect1.Color := WHITE;

   FClicked := False;
   GlobalEventBus.RegisterSubscriber(Self);
end;

function TComponentButton001.Image(aValue: String): TComponentButton001;
var
  Resource : TResourceStream;
begin
  Result := Self;
  FImage := aValue;

  Resource := TResourceStream.Create(HInstance, aValue, RT_RCDATA);
  try
    Image1.Bitmap.LoadFromStream(Resource);
  finally
    Resource.Free;
  end;
end;

function TComponentButton001.OnClick(
  aValue: TProc<TObject>): TComponentButton001;
begin
  Result := Self;
  FOnClick := aValue;
end;

procedure TComponentButton001.Props(aValue: TProps);
begin
  FClicked := False;
  if aValue.Key = MinhaKey then
    if aValue.PropString = FImage then
       FClicked := True
    else
       FillRGBEffect1.Color := WHITE;
end;

procedure TComponentButton001.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FOnClick) then
    FOnClick(Sender);

  GlobalEventBus.Post(TProps.Create.PropString(FImage).Key(MinhaKey));
end;

procedure TComponentButton001.SpeedButton1MouseEnter(Sender: TObject);
begin
  FillRGBEffect1.Color := INFO;
end;

procedure TComponentButton001.SpeedButton1MouseLeave(Sender: TObject);
begin
  if not FClicked then
    FillRGBEffect1.Color := WHITE;
end;

end.
