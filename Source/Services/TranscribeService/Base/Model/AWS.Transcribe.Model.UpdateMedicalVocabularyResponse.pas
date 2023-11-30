unit AWS.Transcribe.Model.UpdateMedicalVocabularyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TUpdateMedicalVocabularyResponse = class;
  
  IUpdateMedicalVocabularyResponse = interface(IAmazonWebServiceResponse)
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function GetVocabularyState: TVocabularyState;
    procedure SetVocabularyState(const Value: TVocabularyState);
    function Obj: TUpdateMedicalVocabularyResponse;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
  TUpdateMedicalVocabularyResponse = class(TAmazonWebServiceResponse, IUpdateMedicalVocabularyResponse)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FVocabularyName: Nullable<string>;
    FVocabularyState: Nullable<TVocabularyState>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function GetVocabularyState: TVocabularyState;
    procedure SetVocabularyState(const Value: TVocabularyState);
  strict protected
    function Obj: TUpdateMedicalVocabularyResponse;
  public
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
implementation

{ TUpdateMedicalVocabularyResponse }

function TUpdateMedicalVocabularyResponse.Obj: TUpdateMedicalVocabularyResponse;
begin
  Result := Self;
end;

function TUpdateMedicalVocabularyResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TUpdateMedicalVocabularyResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TUpdateMedicalVocabularyResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TUpdateMedicalVocabularyResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TUpdateMedicalVocabularyResponse.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyResponse.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TUpdateMedicalVocabularyResponse.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

function TUpdateMedicalVocabularyResponse.GetVocabularyState: TVocabularyState;
begin
  Result := FVocabularyState.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyResponse.SetVocabularyState(const Value: TVocabularyState);
begin
  FVocabularyState := Value;
end;

function TUpdateMedicalVocabularyResponse.IsSetVocabularyState: Boolean;
begin
  Result := FVocabularyState.HasValue;
end;

end.
