unit AWS.SNS.Model.GetPlatformApplicationAttributesRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TGetPlatformApplicationAttributesRequest = class;
  
  IGetPlatformApplicationAttributesRequest = interface
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TGetPlatformApplicationAttributesRequest;
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TGetPlatformApplicationAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, IGetPlatformApplicationAttributesRequest)
  strict private
    FPlatformApplicationArn: Nullable<string>;
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TGetPlatformApplicationAttributesRequest;
  public
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TGetPlatformApplicationAttributesRequest }

function TGetPlatformApplicationAttributesRequest.Obj: TGetPlatformApplicationAttributesRequest;
begin
  Result := Self;
end;

function TGetPlatformApplicationAttributesRequest.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TGetPlatformApplicationAttributesRequest.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TGetPlatformApplicationAttributesRequest.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
