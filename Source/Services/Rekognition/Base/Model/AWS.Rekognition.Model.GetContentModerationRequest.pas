unit AWS.Rekognition.Model.GetContentModerationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Enums;

type
  TGetContentModerationRequest = class;
  
  IGetContentModerationRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TContentModerationSortBy;
    procedure SetSortBy(const Value: TContentModerationSortBy);
    function Obj: TGetContentModerationRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TContentModerationSortBy read GetSortBy write SetSortBy;
  end;
  
  TGetContentModerationRequest = class(TAmazonRekognitionRequest, IGetContentModerationRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSortBy: Nullable<TContentModerationSortBy>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TContentModerationSortBy;
    procedure SetSortBy(const Value: TContentModerationSortBy);
  strict protected
    function Obj: TGetContentModerationRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TContentModerationSortBy read GetSortBy write SetSortBy;
  end;
  
implementation

{ TGetContentModerationRequest }

function TGetContentModerationRequest.Obj: TGetContentModerationRequest;
begin
  Result := Self;
end;

function TGetContentModerationRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetContentModerationRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetContentModerationRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetContentModerationRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetContentModerationRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetContentModerationRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetContentModerationRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetContentModerationRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetContentModerationRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetContentModerationRequest.GetSortBy: TContentModerationSortBy;
begin
  Result := FSortBy.ValueOrDefault;
end;

procedure TGetContentModerationRequest.SetSortBy(const Value: TContentModerationSortBy);
begin
  FSortBy := Value;
end;

function TGetContentModerationRequest.IsSetSortBy: Boolean;
begin
  Result := FSortBy.HasValue;
end;

end.
