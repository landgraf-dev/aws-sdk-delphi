unit AWS.Rekognition.Model.GetPersonTrackingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Enums;

type
  TGetPersonTrackingRequest = class;
  
  IGetPersonTrackingRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TPersonTrackingSortBy;
    procedure SetSortBy(const Value: TPersonTrackingSortBy);
    function Obj: TGetPersonTrackingRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TPersonTrackingSortBy read GetSortBy write SetSortBy;
  end;
  
  TGetPersonTrackingRequest = class(TAmazonRekognitionRequest, IGetPersonTrackingRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSortBy: Nullable<TPersonTrackingSortBy>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TPersonTrackingSortBy;
    procedure SetSortBy(const Value: TPersonTrackingSortBy);
  strict protected
    function Obj: TGetPersonTrackingRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TPersonTrackingSortBy read GetSortBy write SetSortBy;
  end;
  
implementation

{ TGetPersonTrackingRequest }

function TGetPersonTrackingRequest.Obj: TGetPersonTrackingRequest;
begin
  Result := Self;
end;

function TGetPersonTrackingRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetPersonTrackingRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetPersonTrackingRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetPersonTrackingRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetPersonTrackingRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetPersonTrackingRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetPersonTrackingRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetPersonTrackingRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetPersonTrackingRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetPersonTrackingRequest.GetSortBy: TPersonTrackingSortBy;
begin
  Result := FSortBy.ValueOrDefault;
end;

procedure TGetPersonTrackingRequest.SetSortBy(const Value: TPersonTrackingSortBy);
begin
  FSortBy := Value;
end;

function TGetPersonTrackingRequest.IsSetSortBy: Boolean;
begin
  Result := FSortBy.HasValue;
end;

end.
