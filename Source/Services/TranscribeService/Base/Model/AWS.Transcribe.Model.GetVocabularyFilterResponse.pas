unit AWS.Transcribe.Model.GetVocabularyFilterResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TGetVocabularyFilterResponse = class;
  
  IGetVocabularyFilterResponse = interface(IAmazonWebServiceResponse)
    function GetDownloadUri: string;
    procedure SetDownloadUri(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function Obj: TGetVocabularyFilterResponse;
    function IsSetDownloadUri: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property DownloadUri: string read GetDownloadUri write SetDownloadUri;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
  TGetVocabularyFilterResponse = class(TAmazonWebServiceResponse, IGetVocabularyFilterResponse)
  strict private
    FDownloadUri: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FVocabularyFilterName: Nullable<string>;
    function GetDownloadUri: string;
    procedure SetDownloadUri(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
  strict protected
    function Obj: TGetVocabularyFilterResponse;
  public
    function IsSetDownloadUri: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property DownloadUri: string read GetDownloadUri write SetDownloadUri;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
implementation

{ TGetVocabularyFilterResponse }

function TGetVocabularyFilterResponse.Obj: TGetVocabularyFilterResponse;
begin
  Result := Self;
end;

function TGetVocabularyFilterResponse.GetDownloadUri: string;
begin
  Result := FDownloadUri.ValueOrDefault;
end;

procedure TGetVocabularyFilterResponse.SetDownloadUri(const Value: string);
begin
  FDownloadUri := Value;
end;

function TGetVocabularyFilterResponse.IsSetDownloadUri: Boolean;
begin
  Result := FDownloadUri.HasValue;
end;

function TGetVocabularyFilterResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TGetVocabularyFilterResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TGetVocabularyFilterResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TGetVocabularyFilterResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TGetVocabularyFilterResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TGetVocabularyFilterResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TGetVocabularyFilterResponse.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TGetVocabularyFilterResponse.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TGetVocabularyFilterResponse.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

end.
