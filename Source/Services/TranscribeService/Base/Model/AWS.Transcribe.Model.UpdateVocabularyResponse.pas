unit AWS.Transcribe.Model.UpdateVocabularyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TUpdateVocabularyResponse = class;
  
  IUpdateVocabularyResponse = interface(IAmazonWebServiceResponse)
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function GetVocabularyState: TVocabularyState;
    procedure SetVocabularyState(const Value: TVocabularyState);
    function Obj: TUpdateVocabularyResponse;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyName: Boolean;
    function IsSetVocabularyState: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
    property VocabularyState: TVocabularyState read GetVocabularyState write SetVocabularyState;
  end;
  
  TUpdateVocabularyResponse = class(TAmazonWebServiceResponse, IUpdateVocabularyResponse)
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
    function Obj: TUpdateVocabularyResponse;
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

{ TUpdateVocabularyResponse }

function TUpdateVocabularyResponse.Obj: TUpdateVocabularyResponse;
begin
  Result := Self;
end;

function TUpdateVocabularyResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TUpdateVocabularyResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TUpdateVocabularyResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TUpdateVocabularyResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TUpdateVocabularyResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TUpdateVocabularyResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TUpdateVocabularyResponse.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TUpdateVocabularyResponse.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TUpdateVocabularyResponse.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

function TUpdateVocabularyResponse.GetVocabularyState: TVocabularyState;
begin
  Result := FVocabularyState.ValueOrDefault;
end;

procedure TUpdateVocabularyResponse.SetVocabularyState(const Value: TVocabularyState);
begin
  FVocabularyState := Value;
end;

function TUpdateVocabularyResponse.IsSetVocabularyState: Boolean;
begin
  Result := FVocabularyState.HasValue;
end;

end.
