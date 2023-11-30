unit AWS.Transcribe.Model.CreateMedicalVocabularyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TCreateMedicalVocabularyResponse = class;
  
  ICreateMedicalVocabularyResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TCreateMedicalVocabularyResponse;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
  TCreateMedicalVocabularyResponse = class(TAmazonWebServiceResponse, ICreateMedicalVocabularyResponse)
  strict private
    FFailureReason: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FVocabularyName: Nullable<string>;
    FVocabularyState: Nullable<TVocabularyState>;
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
    function Obj: TCreateMedicalVocabularyResponse;
  public
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
implementation

{ TCreateMedicalVocabularyResponse }

function TCreateMedicalVocabularyResponse.Obj: TCreateMedicalVocabularyResponse;
begin
  Result := Self;
end;

function TCreateMedicalVocabularyResponse.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyResponse.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TCreateMedicalVocabularyResponse.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TCreateMedicalVocabularyResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateMedicalVocabularyResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateMedicalVocabularyResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TCreateMedicalVocabularyResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TCreateMedicalVocabularyResponse.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyResponse.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TCreateMedicalVocabularyResponse.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

function TCreateMedicalVocabularyResponse.GetVocabularyState: TVocabularyState;
begin
  Result := FVocabularyState.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyResponse.SetVocabularyState(const Value: TVocabularyState);
begin
  FVocabularyState := Value;
end;

function TCreateMedicalVocabularyResponse.IsSetVocabularyState: Boolean;
begin
  Result := FVocabularyState.HasValue;
end;

end.
