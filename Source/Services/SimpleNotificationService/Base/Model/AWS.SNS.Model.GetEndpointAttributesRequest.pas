unit AWS.SNS.Model.GetEndpointAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TGetEndpointAttributesRequest = class;
  
  IGetEndpointAttributesRequest = interface
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TGetEndpointAttributesRequest;
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TGetEndpointAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, IGetEndpointAttributesRequest)
  strict private
    FEndpointArn: Nullable<string>;
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
  strict protected
    function Obj: TGetEndpointAttributesRequest;
  public
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
implementation

{ TGetEndpointAttributesRequest }

function TGetEndpointAttributesRequest.Obj: TGetEndpointAttributesRequest;
begin
  Result := Self;
end;

function TGetEndpointAttributesRequest.GetEndpointArn: string;
begin
  Result := FEndpointArn.ValueOrDefault;
end;

procedure TGetEndpointAttributesRequest.SetEndpointArn(const Value: string);
begin
  FEndpointArn := Value;
end;

function TGetEndpointAttributesRequest.IsSetEndpointArn: Boolean;
begin
  Result := FEndpointArn.HasValue;
end;

end.
