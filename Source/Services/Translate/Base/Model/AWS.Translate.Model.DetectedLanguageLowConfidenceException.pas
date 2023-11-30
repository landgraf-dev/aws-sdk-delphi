unit AWS.Translate.Model.DetectedLanguageLowConfidenceException;

interface

uses
  AWS.Translate.Exception, 
  AWS.Nullable;

type
  EDetectedLanguageLowConfidenceException = class(EAmazonTranslateException)
  strict private
    FDetectedLanguageCode: Nullable<string>;
    function GetDetectedLanguageCode: string;
    procedure SetDetectedLanguageCode(const Value: string);
  public
    function IsSetDetectedLanguageCode: Boolean;
    property DetectedLanguageCode: string read GetDetectedLanguageCode write SetDetectedLanguageCode;
  end;
  
implementation

{ EDetectedLanguageLowConfidenceException }

function EDetectedLanguageLowConfidenceException.GetDetectedLanguageCode: string;
begin
  Result := FDetectedLanguageCode.ValueOrDefault;
end;

procedure EDetectedLanguageLowConfidenceException.SetDetectedLanguageCode(const Value: string);
begin
  FDetectedLanguageCode := Value;
end;

function EDetectedLanguageLowConfidenceException.IsSetDetectedLanguageCode: Boolean;
begin
  Result := FDetectedLanguageCode.HasValue;
end;

end.
