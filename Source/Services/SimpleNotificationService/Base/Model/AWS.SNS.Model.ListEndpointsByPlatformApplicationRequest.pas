unit AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TListEndpointsByPlatformApplicationRequest = class;
  
  IListEndpointsByPlatformApplicationRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TListEndpointsByPlatformApplicationRequest;
    function IsSetNextToken: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TListEndpointsByPlatformApplicationRequest = class(TAmazonSimpleNotificationServiceRequest, IListEndpointsByPlatformApplicationRequest)
  strict private
    FNextToken: Nullable<string>;
    FPlatformApplicationArn: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TListEndpointsByPlatformApplicationRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TListEndpointsByPlatformApplicationRequest }

function TListEndpointsByPlatformApplicationRequest.Obj: TListEndpointsByPlatformApplicationRequest;
begin
  Result := Self;
end;

function TListEndpointsByPlatformApplicationRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListEndpointsByPlatformApplicationRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListEndpointsByPlatformApplicationRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListEndpointsByPlatformApplicationRequest.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TListEndpointsByPlatformApplicationRequest.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TListEndpointsByPlatformApplicationRequest.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
