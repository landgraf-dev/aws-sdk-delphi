unit AWS.Translate.Model.TranslateTextResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.AppliedTerminology;

type
  TTranslateTextResponse = class;
  
  ITranslateTextResponse = interface(IAmazonWebServiceResponse)
    function GetAppliedTerminologies: TObjectList<TAppliedTerminology>;
    procedure SetAppliedTerminologies(const Value: TObjectList<TAppliedTerminology>);
    function GetKeepAppliedTerminologies: Boolean;
    procedure SetKeepAppliedTerminologies(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCode: string;
    procedure SetTargetLanguageCode(const Value: string);
    function GetTranslatedText: string;
    procedure SetTranslatedText(const Value: string);
    function Obj: TTranslateTextResponse;
    function IsSetAppliedTerminologies: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTranslatedText: Boolean;
    property AppliedTerminologies: TObjectList<TAppliedTerminology> read GetAppliedTerminologies write SetAppliedTerminologies;
    property KeepAppliedTerminologies: Boolean read GetKeepAppliedTerminologies write SetKeepAppliedTerminologies;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
    property TranslatedText: string read GetTranslatedText write SetTranslatedText;
  end;
  
  TTranslateTextResponse = class(TAmazonWebServiceResponse, ITranslateTextResponse)
  strict private
    FAppliedTerminologies: TObjectList<TAppliedTerminology>;
    FKeepAppliedTerminologies: Boolean;
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCode: Nullable<string>;
    FTranslatedText: Nullable<string>;
    function GetAppliedTerminologies: TObjectList<TAppliedTerminology>;
    procedure SetAppliedTerminologies(const Value: TObjectList<TAppliedTerminology>);
    function GetKeepAppliedTerminologies: Boolean;
    procedure SetKeepAppliedTerminologies(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCode: string;
    procedure SetTargetLanguageCode(const Value: string);
    function GetTranslatedText: string;
    procedure SetTranslatedText(const Value: string);
  strict protected
    function Obj: TTranslateTextResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAppliedTerminologies: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTranslatedText: Boolean;
    property AppliedTerminologies: TObjectList<TAppliedTerminology> read GetAppliedTerminologies write SetAppliedTerminologies;
    property KeepAppliedTerminologies: Boolean read GetKeepAppliedTerminologies write SetKeepAppliedTerminologies;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
    property TranslatedText: string read GetTranslatedText write SetTranslatedText;
  end;
  
implementation

{ TTranslateTextResponse }

constructor TTranslateTextResponse.Create;
begin
  inherited;
  FAppliedTerminologies := TObjectList<TAppliedTerminology>.Create;
end;

destructor TTranslateTextResponse.Destroy;
begin
  AppliedTerminologies := nil;
  inherited;
end;

function TTranslateTextResponse.Obj: TTranslateTextResponse;
begin
  Result := Self;
end;

function TTranslateTextResponse.GetAppliedTerminologies: TObjectList<TAppliedTerminology>;
begin
  Result := FAppliedTerminologies;
end;

procedure TTranslateTextResponse.SetAppliedTerminologies(const Value: TObjectList<TAppliedTerminology>);
begin
  if FAppliedTerminologies <> Value then
  begin
    if not KeepAppliedTerminologies then
      FAppliedTerminologies.Free;
    FAppliedTerminologies := Value;
  end;
end;

function TTranslateTextResponse.GetKeepAppliedTerminologies: Boolean;
begin
  Result := FKeepAppliedTerminologies;
end;

procedure TTranslateTextResponse.SetKeepAppliedTerminologies(const Value: Boolean);
begin
  FKeepAppliedTerminologies := Value;
end;

function TTranslateTextResponse.IsSetAppliedTerminologies: Boolean;
begin
  Result := (FAppliedTerminologies <> nil) and (FAppliedTerminologies.Count > 0);
end;

function TTranslateTextResponse.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TTranslateTextResponse.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TTranslateTextResponse.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TTranslateTextResponse.GetTargetLanguageCode: string;
begin
  Result := FTargetLanguageCode.ValueOrDefault;
end;

procedure TTranslateTextResponse.SetTargetLanguageCode(const Value: string);
begin
  FTargetLanguageCode := Value;
end;

function TTranslateTextResponse.IsSetTargetLanguageCode: Boolean;
begin
  Result := FTargetLanguageCode.HasValue;
end;

function TTranslateTextResponse.GetTranslatedText: string;
begin
  Result := FTranslatedText.ValueOrDefault;
end;

procedure TTranslateTextResponse.SetTranslatedText(const Value: string);
begin
  FTranslatedText := Value;
end;

function TTranslateTextResponse.IsSetTranslatedText: Boolean;
begin
  Result := FTranslatedText.HasValue;
end;

end.
