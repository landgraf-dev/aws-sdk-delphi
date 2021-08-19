unit AWS.Polly.Model.Voice;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Polly.Enums;

type
  TVoice = class;
  
  IVoice = interface
    function GetAdditionalLanguageCodes: TList<string>;
    procedure SetAdditionalLanguageCodes(const Value: TList<string>);
    function GetGender: TGender;
    procedure SetGender(const Value: TGender);
    function GetId: TVoiceId;
    procedure SetId(const Value: TVoiceId);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageName: string;
    procedure SetLanguageName(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSupportedEngines: TList<string>;
    procedure SetSupportedEngines(const Value: TList<string>);
    function Obj: TVoice;
    function IsSetAdditionalLanguageCodes: Boolean;
    function IsSetGender: Boolean;
    function IsSetId: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageName: Boolean;
    function IsSetName: Boolean;
    function IsSetSupportedEngines: Boolean;
    property AdditionalLanguageCodes: TList<string> read GetAdditionalLanguageCodes write SetAdditionalLanguageCodes;
    property Gender: TGender read GetGender write SetGender;
    property Id: TVoiceId read GetId write SetId;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageName: string read GetLanguageName write SetLanguageName;
    property Name: string read GetName write SetName;
    property SupportedEngines: TList<string> read GetSupportedEngines write SetSupportedEngines;
  end;
  
  TVoice = class
  strict private
    FAdditionalLanguageCodes: TList<string>;
    FGender: Nullable<TGender>;
    FId: Nullable<TVoiceId>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLanguageName: Nullable<string>;
    FName: Nullable<string>;
    FSupportedEngines: TList<string>;
    function GetAdditionalLanguageCodes: TList<string>;
    procedure SetAdditionalLanguageCodes(const Value: TList<string>);
    function GetGender: TGender;
    procedure SetGender(const Value: TGender);
    function GetId: TVoiceId;
    procedure SetId(const Value: TVoiceId);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLanguageName: string;
    procedure SetLanguageName(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSupportedEngines: TList<string>;
    procedure SetSupportedEngines(const Value: TList<string>);
  strict protected
    function Obj: TVoice;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAdditionalLanguageCodes: Boolean;
    function IsSetGender: Boolean;
    function IsSetId: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLanguageName: Boolean;
    function IsSetName: Boolean;
    function IsSetSupportedEngines: Boolean;
    property AdditionalLanguageCodes: TList<string> read GetAdditionalLanguageCodes write SetAdditionalLanguageCodes;
    property Gender: TGender read GetGender write SetGender;
    property Id: TVoiceId read GetId write SetId;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LanguageName: string read GetLanguageName write SetLanguageName;
    property Name: string read GetName write SetName;
    property SupportedEngines: TList<string> read GetSupportedEngines write SetSupportedEngines;
  end;
  
implementation

{ TVoice }

constructor TVoice.Create;
begin
  inherited;
  FAdditionalLanguageCodes := TList<string>.Create;
  FSupportedEngines := TList<string>.Create;
end;

destructor TVoice.Destroy;
begin
  FSupportedEngines.Free;
  FAdditionalLanguageCodes.Free;
  inherited;
end;

function TVoice.Obj: TVoice;
begin
  Result := Self;
end;

function TVoice.GetAdditionalLanguageCodes: TList<string>;
begin
  Result := FAdditionalLanguageCodes;
end;

procedure TVoice.SetAdditionalLanguageCodes(const Value: TList<string>);
begin
  if FAdditionalLanguageCodes <> Value then
  begin
    FAdditionalLanguageCodes.Free;
    FAdditionalLanguageCodes := Value;
  end;
end;

function TVoice.IsSetAdditionalLanguageCodes: Boolean;
begin
  Result := (FAdditionalLanguageCodes <> nil) and (FAdditionalLanguageCodes.Count > 0);
end;

function TVoice.GetGender: TGender;
begin
  Result := FGender.ValueOrDefault;
end;

procedure TVoice.SetGender(const Value: TGender);
begin
  FGender := Value;
end;

function TVoice.IsSetGender: Boolean;
begin
  Result := FGender.HasValue;
end;

function TVoice.GetId: TVoiceId;
begin
  Result := FId.ValueOrDefault;
end;

procedure TVoice.SetId(const Value: TVoiceId);
begin
  FId := Value;
end;

function TVoice.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TVoice.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TVoice.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TVoice.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TVoice.GetLanguageName: string;
begin
  Result := FLanguageName.ValueOrDefault;
end;

procedure TVoice.SetLanguageName(const Value: string);
begin
  FLanguageName := Value;
end;

function TVoice.IsSetLanguageName: Boolean;
begin
  Result := FLanguageName.HasValue;
end;

function TVoice.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TVoice.SetName(const Value: string);
begin
  FName := Value;
end;

function TVoice.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TVoice.GetSupportedEngines: TList<string>;
begin
  Result := FSupportedEngines;
end;

procedure TVoice.SetSupportedEngines(const Value: TList<string>);
begin
  if FSupportedEngines <> Value then
  begin
    FSupportedEngines.Free;
    FSupportedEngines := Value;
  end;
end;

function TVoice.IsSetSupportedEngines: Boolean;
begin
  Result := (FSupportedEngines <> nil) and (FSupportedEngines.Count > 0);
end;

end.
