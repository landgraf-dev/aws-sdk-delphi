unit AWS.Transcribe.Model.UpdateVocabularyFilterResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums;

type
  TUpdateVocabularyFilterResponse = class;
  
  IUpdateVocabularyFilterResponse = interface(IAmazonWebServiceResponse)
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function Obj: TUpdateVocabularyFilterResponse;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
  TUpdateVocabularyFilterResponse = class(TAmazonWebServiceResponse, IUpdateVocabularyFilterResponse)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModifiedTime: Nullable<TDateTime>;
    FVocabularyFilterName: Nullable<string>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
  strict protected
    function Obj: TUpdateVocabularyFilterResponse;
  public
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
implementation

{ TUpdateVocabularyFilterResponse }

function TUpdateVocabularyFilterResponse.Obj: TUpdateVocabularyFilterResponse;
begin
  Result := Self;
end;

function TUpdateVocabularyFilterResponse.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TUpdateVocabularyFilterResponse.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TUpdateVocabularyFilterResponse.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TUpdateVocabularyFilterResponse.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TUpdateVocabularyFilterResponse.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TUpdateVocabularyFilterResponse.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TUpdateVocabularyFilterResponse.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TUpdateVocabularyFilterResponse.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TUpdateVocabularyFilterResponse.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

end.
