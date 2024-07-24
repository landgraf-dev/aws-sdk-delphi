unit AWS.SSM.Model.GetOpsMetadataRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetOpsMetadataRequest = class;
  
  IGetOpsMetadataRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function Obj: TGetOpsMetadataRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
  TGetOpsMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, IGetOpsMetadataRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FOpsMetadataArn: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
  strict protected
    function Obj: TGetOpsMetadataRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
implementation

{ TGetOpsMetadataRequest }

function TGetOpsMetadataRequest.Obj: TGetOpsMetadataRequest;
begin
  Result := Self;
end;

function TGetOpsMetadataRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetOpsMetadataRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetOpsMetadataRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetOpsMetadataRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetOpsMetadataRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetOpsMetadataRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetOpsMetadataRequest.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TGetOpsMetadataRequest.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TGetOpsMetadataRequest.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

end.
