unit AWS.Transcribe.Model.GetVocabularyResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums;

type
  TGetVocabularyResponse = class;
  
  IGetVocabularyResponse = interface(IAmazonWebServiceResponse)
    function GetDownloadUri: string;
    procedure SetDownloadUri(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function GetVocabularyState: TVocabularyState;
    procedure SetVocabularyState(const Value: TVocabularyState);
    function Obj: TGetVocabularyResponse;
    function IsSetDownloadUri: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property DownloadUri: string read GetDownloadUri write SetDownloadUri;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
  TGetVocabularyResponse = class(TAmazonWebServiceResponse, IGetVocabularyResponse)
  strict private
    FDownloadUri: Nullable<string>;
    FFailureReason: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FVocabularyName: Nullable<string>;
    FVocabularyState: Nullable<TVocabularyState>;
    function GetDownloadUri: string;
    procedure SetDownloadUri(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function GetVocabularyState: TVocabularyState;
    procedure SetVocabularyState(const Value: TVocabularyState);
  strict protected
    function Obj: TGetVocabularyResponse;
  public
    function IsSetDownloadUri: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property DownloadUri: string read GetDownloadUri write SetDownloadUri;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
implementation

{ TGetVocabularyResponse }

function TGetVocabularyResponse.Obj: TGetVocabularyResponse;
begin
  Result := Self;
end;

function TGetVocabularyResponse.GetDownloadUri: string;
begin
  Result := FDownloadUri.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetDownloadUri(const Value: string);
begin
  FDownloadUri := Value;
end;

function TGetVocabularyResponse.IsSetDownloadUri: Boolean;
begin
  Result := FDownloadUri.HasValue;
end;

function TGetVocabularyResponse.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TGetVocabularyResponse.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TGetVocabularyResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TGetVocabularyResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TGetVocabularyResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TGetVocabularyResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TGetVocabularyResponse.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TGetVocabularyResponse.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

function TGetVocabularyResponse.GetVocabularyState: TVocabularyState;
begin
  Result := FVocabularyState.ValueOrDefault;
end;

procedure TGetVocabularyResponse.SetVocabularyState(const Value: TVocabularyState);
begin
  FVocabularyState := Value;
end;

function TGetVocabularyResponse.IsSetVocabularyState: Boolean;
begin
  Result := FVocabularyState.HasValue;
end;

end.
