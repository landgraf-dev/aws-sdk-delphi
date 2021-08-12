unit AWS.SNS.Model.CreatePlatformEndpointResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreatePlatformEndpointResponse = class;
  
  ICreatePlatformEndpointResponse = interface(IAmazonWebServiceResponse)
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TCreatePlatformEndpointResponse;
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TCreatePlatformEndpointResponse = class(TAmazonWebServiceResponse, ICreatePlatformEndpointResponse)
  strict private
    FEndpointArn: Nullable<string>;
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
  strict protected
    function Obj: TCreatePlatformEndpointResponse;
  public
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
implementation

{ TCreatePlatformEndpointResponse }

function TCreatePlatformEndpointResponse.Obj: TCreatePlatformEndpointResponse;
begin
  Result := Self;
end;

function TCreatePlatformEndpointResponse.GetEndpointArn: string;
begin
  Result := FEndpointArn.ValueOrDefault;
end;

procedure TCreatePlatformEndpointResponse.SetEndpointArn(const Value: string);
begin
  FEndpointArn := Value;
end;

function TCreatePlatformEndpointResponse.IsSetEndpointArn: Boolean;
begin
  Result := FEndpointArn.HasValue;
end;

end.
