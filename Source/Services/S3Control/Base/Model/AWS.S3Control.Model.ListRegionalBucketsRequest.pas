unit AWS.S3Control.Model.ListRegionalBucketsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TListRegionalBucketsRequest = class;
  
  IListRegionalBucketsRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
    function Obj: TListRegionalBucketsRequest;
    function IsSetAccountId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOutpostId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OutpostId: string read GetOutpostId write SetOutpostId;
  end;
  
  TListRegionalBucketsRequest = class(TAmazonS3ControlRequest, IListRegionalBucketsRequest)
  strict private
    FAccountId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FOutpostId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
  strict protected
    function Obj: TListRegionalBucketsRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetOutpostId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property OutpostId: string read GetOutpostId write SetOutpostId;
  end;
  
implementation

{ TListRegionalBucketsRequest }

function TListRegionalBucketsRequest.Obj: TListRegionalBucketsRequest;
begin
  Result := Self;
end;

function TListRegionalBucketsRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TListRegionalBucketsRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TListRegionalBucketsRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TListRegionalBucketsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListRegionalBucketsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListRegionalBucketsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListRegionalBucketsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListRegionalBucketsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListRegionalBucketsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListRegionalBucketsRequest.GetOutpostId: string;
begin
  Result := FOutpostId.ValueOrDefault;
end;

procedure TListRegionalBucketsRequest.SetOutpostId(const Value: string);
begin
  FOutpostId := Value;
end;

function TListRegionalBucketsRequest.IsSetOutpostId: Boolean;
begin
  Result := FOutpostId.HasValue;
end;

end.
