unit AWS.Rekognition.Model.GetFaceSearchRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Enums;

type
  TGetFaceSearchRequest = class;
  
  IGetFaceSearchRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TFaceSearchSortBy;
    procedure SetSortBy(const Value: TFaceSearchSortBy);
    function Obj: TGetFaceSearchRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TFaceSearchSortBy read GetSortBy write SetSortBy;
  end;
  
  TGetFaceSearchRequest = class(TAmazonRekognitionRequest, IGetFaceSearchRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSortBy: Nullable<TFaceSearchSortBy>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TFaceSearchSortBy;
    procedure SetSortBy(const Value: TFaceSearchSortBy);
  strict protected
    function Obj: TGetFaceSearchRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TFaceSearchSortBy read GetSortBy write SetSortBy;
  end;
  
implementation

{ TGetFaceSearchRequest }

function TGetFaceSearchRequest.Obj: TGetFaceSearchRequest;
begin
  Result := Self;
end;

function TGetFaceSearchRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetFaceSearchRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetFaceSearchRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetFaceSearchRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetFaceSearchRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetFaceSearchRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetFaceSearchRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetFaceSearchRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetFaceSearchRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetFaceSearchRequest.GetSortBy: TFaceSearchSortBy;
begin
  Result := FSortBy.ValueOrDefault;
end;

procedure TGetFaceSearchRequest.SetSortBy(const Value: TFaceSearchSortBy);
begin
  FSortBy := Value;
end;

function TGetFaceSearchRequest.IsSetSortBy: Boolean;
begin
  Result := FSortBy.HasValue;
end;

end.
