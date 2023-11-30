unit AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TPutAccountDedicatedIpWarmupAttributesRequest = class;
  
  IPutAccountDedicatedIpWarmupAttributesRequest = interface
    function GetAutoWarmupEnabled: Boolean;
    procedure SetAutoWarmupEnabled(const Value: Boolean);
    function Obj: TPutAccountDedicatedIpWarmupAttributesRequest;
    function IsSetAutoWarmupEnabled: Boolean;
    property AutoWarmupEnabled: Boolean read GetAutoWarmupEnabled write SetAutoWarmupEnabled;
  end;
  
  TPutAccountDedicatedIpWarmupAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutAccountDedicatedIpWarmupAttributesRequest)
  strict private
    FAutoWarmupEnabled: Nullable<Boolean>;
    function GetAutoWarmupEnabled: Boolean;
    procedure SetAutoWarmupEnabled(const Value: Boolean);
  strict protected
    function Obj: TPutAccountDedicatedIpWarmupAttributesRequest;
  public
    function IsSetAutoWarmupEnabled: Boolean;
    property AutoWarmupEnabled: Boolean read GetAutoWarmupEnabled write SetAutoWarmupEnabled;
  end;
  
implementation

{ TPutAccountDedicatedIpWarmupAttributesRequest }

function TPutAccountDedicatedIpWarmupAttributesRequest.Obj: TPutAccountDedicatedIpWarmupAttributesRequest;
begin
  Result := Self;
end;

function TPutAccountDedicatedIpWarmupAttributesRequest.GetAutoWarmupEnabled: Boolean;
begin
  Result := FAutoWarmupEnabled.ValueOrDefault;
end;

procedure TPutAccountDedicatedIpWarmupAttributesRequest.SetAutoWarmupEnabled(const Value: Boolean);
begin
  FAutoWarmupEnabled := Value;
end;

function TPutAccountDedicatedIpWarmupAttributesRequest.IsSetAutoWarmupEnabled: Boolean;
begin
  Result := FAutoWarmupEnabled.HasValue;
end;

end.
