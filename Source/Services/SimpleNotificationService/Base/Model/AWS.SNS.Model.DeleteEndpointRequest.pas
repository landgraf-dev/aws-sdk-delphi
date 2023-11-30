unit AWS.SNS.Model.DeleteEndpointRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TDeleteEndpointRequest = class;
  
  IDeleteEndpointRequest = interface
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TDeleteEndpointRequest;
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TDeleteEndpointRequest = class(TAmazonSimpleNotificationServiceRequest, IDeleteEndpointRequest)
  strict private
    FEndpointArn: Nullable<string>;
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
  strict protected
    function Obj: TDeleteEndpointRequest;
  public
    function IsSetEndpointArn: Boolean;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
implementation

{ TDeleteEndpointRequest }

function TDeleteEndpointRequest.Obj: TDeleteEndpointRequest;
begin
  Result := Self;
end;

function TDeleteEndpointRequest.GetEndpointArn: string;
begin
  Result := FEndpointArn.ValueOrDefault;
end;

procedure TDeleteEndpointRequest.SetEndpointArn(const Value: string);
begin
  FEndpointArn := Value;
end;

function TDeleteEndpointRequest.IsSetEndpointArn: Boolean;
begin
  Result := FEndpointArn.HasValue;
end;

end.
