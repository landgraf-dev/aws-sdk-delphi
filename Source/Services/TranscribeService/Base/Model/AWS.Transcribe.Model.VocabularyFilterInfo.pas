unit AWS.Transcribe.Model.VocabularyFilterInfo;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Enums;

type
  TVocabularyFilterInfo = class;
  
  IVocabularyFilterInfo = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModifiedTime: TDateTime;
    procedure SetLastModifiedTime(const Value: TDateTime);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function Obj: TVocabularyFilterInfo;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
  TVocabularyFilterInfo = class
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
    function Obj: TVocabularyFilterInfo;
  public
    function IsSetLanguageCode: Boolean;
    function IsSetLastModifiedTime: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModifiedTime: TDateTime read GetLastModifiedTime write SetLastModifiedTime;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
implementation

{ TVocabularyFilterInfo }

function TVocabularyFilterInfo.Obj: TVocabularyFilterInfo;
begin
  Result := Self;
end;

function TVocabularyFilterInfo.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TVocabularyFilterInfo.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TVocabularyFilterInfo.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TVocabularyFilterInfo.GetLastModifiedTime: TDateTime;
begin
  Result := FLastModifiedTime.ValueOrDefault;
end;

procedure TVocabularyFilterInfo.SetLastModifiedTime(const Value: TDateTime);
begin
  FLastModifiedTime := Value;
end;

function TVocabularyFilterInfo.IsSetLastModifiedTime: Boolean;
begin
  Result := FLastModifiedTime.HasValue;
end;

function TVocabularyFilterInfo.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TVocabularyFilterInfo.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TVocabularyFilterInfo.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

end.
