unit AWS.Transcribe.Model.GetMedicalVocabularyResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums;

type
  TGetMedicalVocabularyResponse = class;
  
  IGetMedicalVocabularyResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TGetMedicalVocabularyResponse;
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
  
  TGetMedicalVocabularyResponse = class(TAmazonWebServiceResponse, IGetMedicalVocabularyResponse)
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
    function Obj: TGetMedicalVocabularyResponse;
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

{ TGetMedicalVocabularyResponse }

function TGetMedicalVocabularyResponse.Obj: TGetMedicalVocabularyResponse;
begin
  Result := Self;
end;

function TGetMedicalVocabularyResponse.GetDownloadUri: string;
begin
  Result := FDownloadUri.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetDownloadUri(const Value: string);
begin
  FDownloadUri := Value;
end;

function TGetMedicalVocabularyResponse.IsSetDownloadUri: Boolean;
begin
  Result := FDownloadUri.HasValue;
end;

function TGetMedicalVocabularyResponse.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TGetMedicalVocabularyResponse.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TGetMedicalVocabularyResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TGetMedicalVocabularyResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TGetMedicalVocabularyResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TGetMedicalVocabularyResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TGetMedicalVocabularyResponse.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TGetMedicalVocabularyResponse.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

function TGetMedicalVocabularyResponse.GetVocabularyState: TVocabularyState;
begin
  Result := FVocabularyState.ValueOrDefault;
end;

procedure TGetMedicalVocabularyResponse.SetVocabularyState(const Value: TVocabularyState);
begin
  FVocabularyState := Value;
end;

function TGetMedicalVocabularyResponse.IsSetVocabularyState: Boolean;
begin
  Result := FVocabularyState.HasValue;
end;

end.
