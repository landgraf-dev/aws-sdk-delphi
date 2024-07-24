unit AWS.SSM.Model.GetParameterHistoryRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetParameterHistoryRequest = class;
  
  IGetParameterHistoryRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
    function Obj: TGetParameterHistoryRequest;
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWithDecryption: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
  TGetParameterHistoryRequest = class(TAmazonSimpleSystemsManagementRequest, IGetParameterHistoryRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FName: Nullable<string>;
    FNextToken: Nullable<string>;
    FWithDecryption: Nullable<Boolean>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
  strict protected
    function Obj: TGetParameterHistoryRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetName: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetWithDecryption: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property Name: string read GetName write SetName;
    property NextToken: string read GetNextToken write SetNextToken;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
implementation

{ TGetParameterHistoryRequest }

function TGetParameterHistoryRequest.Obj: TGetParameterHistoryRequest;
begin
  Result := Self;
end;

function TGetParameterHistoryRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetParameterHistoryRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetParameterHistoryRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetParameterHistoryRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetParameterHistoryRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetParameterHistoryRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetParameterHistoryRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetParameterHistoryRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetParameterHistoryRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetParameterHistoryRequest.GetWithDecryption: Boolean;
begin
  Result := FWithDecryption.ValueOrDefault;
end;

procedure TGetParameterHistoryRequest.SetWithDecryption(const Value: Boolean);
begin
  FWithDecryption := Value;
end;

function TGetParameterHistoryRequest.IsSetWithDecryption: Boolean;
begin
  Result := FWithDecryption.HasValue;
end;

end.
