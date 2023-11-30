unit AWS.Translate.Model.UnsupportedLanguagePairException;

interface

uses
  AWS.Translate.Exception, 
  AWS.Nullable;

type
  EUnsupportedLanguagePairException = class(EAmazonTranslateException)
  strict private
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCode: Nullable<string>;
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCode: string;
    procedure SetTargetLanguageCode(const Value: string);
  public
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
  end;
  
implementation

{ EUnsupportedLanguagePairException }

function EUnsupportedLanguagePairException.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure EUnsupportedLanguagePairException.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function EUnsupportedLanguagePairException.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function EUnsupportedLanguagePairException.GetTargetLanguageCode: string;
begin
  Result := FTargetLanguageCode.ValueOrDefault;
end;

procedure EUnsupportedLanguagePairException.SetTargetLanguageCode(const Value: string);
begin
  FTargetLanguageCode := Value;
end;

function EUnsupportedLanguagePairException.IsSetTargetLanguageCode: Boolean;
begin
  Result := FTargetLanguageCode.HasValue;
end;

end.
