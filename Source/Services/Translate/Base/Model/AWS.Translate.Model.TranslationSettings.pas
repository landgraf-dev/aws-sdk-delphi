unit AWS.Translate.Model.TranslationSettings;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Enums;

type
  TTranslationSettings = class;
  
  ITranslationSettings = interface
    function GetFormality: TFormality;
    procedure SetFormality(const Value: TFormality);
    function GetProfanity: TProfanity;
    procedure SetProfanity(const Value: TProfanity);
    function Obj: TTranslationSettings;
    function IsSetFormality: Boolean;
    function IsSetProfanity: Boolean;
    property Formality: TFormality read GetFormality write SetFormality;
    property Profanity: TProfanity read GetProfanity write SetProfanity;
  end;
  
  TTranslationSettings = class
  strict private
    FFormality: Nullable<TFormality>;
    FProfanity: Nullable<TProfanity>;
    function GetFormality: TFormality;
    procedure SetFormality(const Value: TFormality);
    function GetProfanity: TProfanity;
    procedure SetProfanity(const Value: TProfanity);
  strict protected
    function Obj: TTranslationSettings;
  public
    function IsSetFormality: Boolean;
    function IsSetProfanity: Boolean;
    property Formality: TFormality read GetFormality write SetFormality;
    property Profanity: TProfanity read GetProfanity write SetProfanity;
  end;
  
implementation

{ TTranslationSettings }

function TTranslationSettings.Obj: TTranslationSettings;
begin
  Result := Self;
end;

function TTranslationSettings.GetFormality: TFormality;
begin
  Result := FFormality.ValueOrDefault;
end;

procedure TTranslationSettings.SetFormality(const Value: TFormality);
begin
  FFormality := Value;
end;

function TTranslationSettings.IsSetFormality: Boolean;
begin
  Result := FFormality.HasValue;
end;

function TTranslationSettings.GetProfanity: TProfanity;
begin
  Result := FProfanity.ValueOrDefault;
end;

procedure TTranslationSettings.SetProfanity(const Value: TProfanity);
begin
  FProfanity := Value;
end;

function TTranslationSettings.IsSetProfanity: Boolean;
begin
  Result := FProfanity.HasValue;
end;

end.
