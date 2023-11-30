unit AWS.SNS.Model.ListPlatformApplicationsRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TListPlatformApplicationsRequest = class;
  
  IListPlatformApplicationsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListPlatformApplicationsRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListPlatformApplicationsRequest = class(TAmazonSimpleNotificationServiceRequest, IListPlatformApplicationsRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListPlatformApplicationsRequest;
  public
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListPlatformApplicationsRequest }

function TListPlatformApplicationsRequest.Obj: TListPlatformApplicationsRequest;
begin
  Result := Self;
end;

function TListPlatformApplicationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListPlatformApplicationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListPlatformApplicationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
