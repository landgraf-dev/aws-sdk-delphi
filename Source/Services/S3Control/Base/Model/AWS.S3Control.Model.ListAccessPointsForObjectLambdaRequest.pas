unit AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TListAccessPointsForObjectLambdaRequest = class;
  
  IListAccessPointsForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAccessPointsForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAccessPointsForObjectLambdaRequest = class(TAmazonS3ControlRequest, IListAccessPointsForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAccessPointsForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAccessPointsForObjectLambdaRequest }

function TListAccessPointsForObjectLambdaRequest.Obj: TListAccessPointsForObjectLambdaRequest;
begin
  Result := Self;
end;

function TListAccessPointsForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TListAccessPointsForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TListAccessPointsForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TListAccessPointsForObjectLambdaRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListAccessPointsForObjectLambdaRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListAccessPointsForObjectLambdaRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListAccessPointsForObjectLambdaRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAccessPointsForObjectLambdaRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAccessPointsForObjectLambdaRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
