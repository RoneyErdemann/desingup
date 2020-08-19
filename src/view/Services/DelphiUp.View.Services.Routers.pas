unit DelphiUp.View.Services.Routers;

interface

Type
  TRouters = class
  private
  public
    constructor Create;
    destructor Destroy;override;
  end;

var
  Routers : TRouters;

implementation

uses
  Router4D, DelphiUp.View.Layout.Principal;

{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D.Switch.Router('Principal',TLayoutPrincipal);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
  Routers := TRouters.Create;

finalization
  Routers.Free;

end.
