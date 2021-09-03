unit AWS.Rekognition.Model.GetLabelDetectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Enums;

type
  TGetLabelDetectionRequest = class;
  
  IGetLabelDetectionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TLabelDetectionSortBy;
    procedure SetSortBy(const Value: TLabelDetectionSortBy);
    function Obj: TGetLabelDetectionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TLabelDetectionSortBy read GetSortBy write SetSortBy;
  end;
  
  TGetLabelDetectionRequest = class(TAmazonRekognitionRequest, IGetLabelDetectionRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSortBy: Nullable<TLabelDetectionSortBy>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TLabelDetectionSortBy;
    procedure SetSortBy(const Value: TLabelDetectionSortBy);
  strict protected
    function Obj: TGetLabelDetectionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TLabelDetectionSortBy read GetSortBy write SetSortBy;
  end;
  
implementation

{ TGetLabelDetectionRequest }

function TGetLabelDetectionRequest.Obj: TGetLabelDetectionRequest;
begin
  Result := Self;
end;

function TGetLabelDetectionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetLabelDetectionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetLabelDetectionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetLabelDetectionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetLabelDetectionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetLabelDetectionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetLabelDetectionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetLabelDetectionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetLabelDetectionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetLabelDetectionRequest.GetSortBy: TLabelDetectionSortBy;
begin
  Result := FSortBy.ValueOrDefault;
end;

procedure TGetLabelDetectionRequest.SetSortBy(const Value: TLabelDetectionSortBy);
begin
  FSortBy := Value;
end;

function TGetLabelDetectionRequest.IsSetSortBy: Boolean;
begin
  Result := FSortBy.HasValue;
end;

end.
