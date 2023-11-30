unit AWS.Rekognition.Model.GetCelebrityRecognitionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Enums;

type
  TGetCelebrityRecognitionRequest = class;
  
  IGetCelebrityRecognitionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TCelebrityRecognitionSortBy;
    procedure SetSortBy(const Value: TCelebrityRecognitionSortBy);
    function Obj: TGetCelebrityRecognitionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TCelebrityRecognitionSortBy read GetSortBy write SetSortBy;
  end;
  
  TGetCelebrityRecognitionRequest = class(TAmazonRekognitionRequest, IGetCelebrityRecognitionRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSortBy: Nullable<TCelebrityRecognitionSortBy>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSortBy: TCelebrityRecognitionSortBy;
    procedure SetSortBy(const Value: TCelebrityRecognitionSortBy);
  strict protected
    function Obj: TGetCelebrityRecognitionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSortBy: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SortBy: TCelebrityRecognitionSortBy read GetSortBy write SetSortBy;
  end;
  
implementation

{ TGetCelebrityRecognitionRequest }

function TGetCelebrityRecognitionRequest.Obj: TGetCelebrityRecognitionRequest;
begin
  Result := Self;
end;

function TGetCelebrityRecognitionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetCelebrityRecognitionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetCelebrityRecognitionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetCelebrityRecognitionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetCelebrityRecognitionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetCelebrityRecognitionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetCelebrityRecognitionRequest.GetSortBy: TCelebrityRecognitionSortBy;
begin
  Result := FSortBy.ValueOrDefault;
end;

procedure TGetCelebrityRecognitionRequest.SetSortBy(const Value: TCelebrityRecognitionSortBy);
begin
  FSortBy := Value;
end;

function TGetCelebrityRecognitionRequest.IsSetSortBy: Boolean;
begin
  Result := FSortBy.HasValue;
end;

end.
