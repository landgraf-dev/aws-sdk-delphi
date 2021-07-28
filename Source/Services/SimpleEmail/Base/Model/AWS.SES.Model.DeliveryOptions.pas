unit AWS.SES.Model.DeliveryOptions;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums;

type
  TDeliveryOptions = class;
  
  IDeliveryOptions = interface
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
    function Obj: TDeliveryOptions;
    function IsSetTlsPolicy: Boolean;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
  TDeliveryOptions = class
  strict private
    FTlsPolicy: Nullable<TTlsPolicy>;
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
  strict protected
    function Obj: TDeliveryOptions;
  public
    function IsSetTlsPolicy: Boolean;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
implementation

{ TDeliveryOptions }

function TDeliveryOptions.Obj: TDeliveryOptions;
begin
  Result := Self;
end;

function TDeliveryOptions.GetTlsPolicy: TTlsPolicy;
begin
  Result := FTlsPolicy.ValueOrDefault;
end;

procedure TDeliveryOptions.SetTlsPolicy(const Value: TTlsPolicy);
begin
  FTlsPolicy := Value;
end;

function TDeliveryOptions.IsSetTlsPolicy: Boolean;
begin
  Result := FTlsPolicy.HasValue;
end;

end.
