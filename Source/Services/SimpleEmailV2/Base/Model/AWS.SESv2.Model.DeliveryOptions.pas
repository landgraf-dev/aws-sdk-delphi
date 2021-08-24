unit AWS.SESv2.Model.DeliveryOptions;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TDeliveryOptions = class;
  
  IDeliveryOptions = interface
    function GetSendingPoolName: string;
    procedure SetSendingPoolName(const Value: string);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
    function Obj: TDeliveryOptions;
    function IsSetSendingPoolName: Boolean;
    function IsSetTlsPolicy: Boolean;
    property SendingPoolName: string read GetSendingPoolName write SetSendingPoolName;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
  TDeliveryOptions = class
  strict private
    FSendingPoolName: Nullable<string>;
    FTlsPolicy: Nullable<TTlsPolicy>;
    function GetSendingPoolName: string;
    procedure SetSendingPoolName(const Value: string);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
  strict protected
    function Obj: TDeliveryOptions;
  public
    function IsSetSendingPoolName: Boolean;
    function IsSetTlsPolicy: Boolean;
    property SendingPoolName: string read GetSendingPoolName write SetSendingPoolName;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
implementation

{ TDeliveryOptions }

function TDeliveryOptions.Obj: TDeliveryOptions;
begin
  Result := Self;
end;

function TDeliveryOptions.GetSendingPoolName: string;
begin
  Result := FSendingPoolName.ValueOrDefault;
end;

procedure TDeliveryOptions.SetSendingPoolName(const Value: string);
begin
  FSendingPoolName := Value;
end;

function TDeliveryOptions.IsSetSendingPoolName: Boolean;
begin
  Result := FSendingPoolName.HasValue;
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
