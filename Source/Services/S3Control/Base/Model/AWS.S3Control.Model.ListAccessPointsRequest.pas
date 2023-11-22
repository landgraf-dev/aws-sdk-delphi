unit AWS.S3Control.Model.ListAccessPointsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TListAccessPointsRequest = class;
  
  IListAccessPointsRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAccessPointsRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAccessPointsRequest = class(TAmazonS3ControlRequest, IListAccessPointsRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAccessPointsRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAccessPointsRequest }

function TListAccessPointsRequest.Obj: TListAccessPointsRequest;
begin
  Result := Self;
end;

function TListAccessPointsRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TListAccessPointsRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TListAccessPointsRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TListAccessPointsRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TListAccessPointsRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TListAccessPointsRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TListAccessPointsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListAccessPointsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListAccessPointsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListAccessPointsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAccessPointsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAccessPointsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
