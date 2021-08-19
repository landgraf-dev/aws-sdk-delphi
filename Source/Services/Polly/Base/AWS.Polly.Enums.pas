unit AWS.Polly.Enums;

interface

type
  TEngine = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Neural: TEngine; static;
    class function Standard: TEngine; static;
    class operator Equal(a: TEngine; b: TEngine): Boolean;
    class operator NotEqual(a: TEngine; b: TEngine): Boolean;
    class operator Implicit(a: string): TEngine;
    property Value: string read FValue;
  end;
  
  TGender = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Female: TGender; static;
    class function Male: TGender; static;
    class operator Equal(a: TGender; b: TGender): Boolean;
    class operator NotEqual(a: TGender; b: TGender): Boolean;
    class operator Implicit(a: string): TGender;
    property Value: string read FValue;
  end;
  
  TLanguageCode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Arb: TLanguageCode; static;
    class function CmnCN: TLanguageCode; static;
    class function CyGB: TLanguageCode; static;
    class function DaDK: TLanguageCode; static;
    class function DeDE: TLanguageCode; static;
    class function EnAU: TLanguageCode; static;
    class function EnGB: TLanguageCode; static;
    class function EnGBWLS: TLanguageCode; static;
    class function EnIN: TLanguageCode; static;
    class function EnUS: TLanguageCode; static;
    class function EsES: TLanguageCode; static;
    class function EsMX: TLanguageCode; static;
    class function EsUS: TLanguageCode; static;
    class function FrCA: TLanguageCode; static;
    class function FrFR: TLanguageCode; static;
    class function HiIN: TLanguageCode; static;
    class function IsIS: TLanguageCode; static;
    class function ItIT: TLanguageCode; static;
    class function JaJP: TLanguageCode; static;
    class function KoKR: TLanguageCode; static;
    class function NbNO: TLanguageCode; static;
    class function NlNL: TLanguageCode; static;
    class function PlPL: TLanguageCode; static;
    class function PtBR: TLanguageCode; static;
    class function PtPT: TLanguageCode; static;
    class function RoRO: TLanguageCode; static;
    class function RuRU: TLanguageCode; static;
    class function SvSE: TLanguageCode; static;
    class function TrTR: TLanguageCode; static;
    class operator Equal(a: TLanguageCode; b: TLanguageCode): Boolean;
    class operator NotEqual(a: TLanguageCode; b: TLanguageCode): Boolean;
    class operator Implicit(a: string): TLanguageCode;
    property Value: string read FValue;
  end;
  
  TOutputFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Json: TOutputFormat; static;
    class function Mp3: TOutputFormat; static;
    class function Ogg_vorbis: TOutputFormat; static;
    class function Pcm: TOutputFormat; static;
    class operator Equal(a: TOutputFormat; b: TOutputFormat): Boolean;
    class operator NotEqual(a: TOutputFormat; b: TOutputFormat): Boolean;
    class operator Implicit(a: string): TOutputFormat;
    property Value: string read FValue;
  end;
  
  TSpeechMarkType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Sentence: TSpeechMarkType; static;
    class function Ssml: TSpeechMarkType; static;
    class function Viseme: TSpeechMarkType; static;
    class function Word: TSpeechMarkType; static;
    class operator Equal(a: TSpeechMarkType; b: TSpeechMarkType): Boolean;
    class operator NotEqual(a: TSpeechMarkType; b: TSpeechMarkType): Boolean;
    class operator Implicit(a: string): TSpeechMarkType;
    property Value: string read FValue;
  end;
  
  TTaskStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Completed: TTaskStatus; static;
    class function Failed: TTaskStatus; static;
    class function InProgress: TTaskStatus; static;
    class function Scheduled: TTaskStatus; static;
    class operator Equal(a: TTaskStatus; b: TTaskStatus): Boolean;
    class operator NotEqual(a: TTaskStatus; b: TTaskStatus): Boolean;
    class operator Implicit(a: string): TTaskStatus;
    property Value: string read FValue;
  end;
  
  TTextType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Ssml: TTextType; static;
    class function Text: TTextType; static;
    class operator Equal(a: TTextType; b: TTextType): Boolean;
    class operator NotEqual(a: TTextType; b: TTextType): Boolean;
    class operator Implicit(a: string): TTextType;
    property Value: string read FValue;
  end;
  
  TVoiceId = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Aditi: TVoiceId; static;
    class function Amy: TVoiceId; static;
    class function Astrid: TVoiceId; static;
    class function Bianca: TVoiceId; static;
    class function Brian: TVoiceId; static;
    class function Camila: TVoiceId; static;
    class function Carla: TVoiceId; static;
    class function Carmen: TVoiceId; static;
    class function Celine: TVoiceId; static;
    class function Chantal: TVoiceId; static;
    class function Conchita: TVoiceId; static;
    class function Cristiano: TVoiceId; static;
    class function Dora: TVoiceId; static;
    class function Emma: TVoiceId; static;
    class function Enrique: TVoiceId; static;
    class function Ewa: TVoiceId; static;
    class function Filiz: TVoiceId; static;
    class function Gabrielle: TVoiceId; static;
    class function Geraint: TVoiceId; static;
    class function Giorgio: TVoiceId; static;
    class function Gwyneth: TVoiceId; static;
    class function Hans: TVoiceId; static;
    class function Ines: TVoiceId; static;
    class function Ivy: TVoiceId; static;
    class function Jacek: TVoiceId; static;
    class function Jan: TVoiceId; static;
    class function Joanna: TVoiceId; static;
    class function Joey: TVoiceId; static;
    class function Justin: TVoiceId; static;
    class function Karl: TVoiceId; static;
    class function Kendra: TVoiceId; static;
    class function Kevin: TVoiceId; static;
    class function Kimberly: TVoiceId; static;
    class function Lea: TVoiceId; static;
    class function Liv: TVoiceId; static;
    class function Lotte: TVoiceId; static;
    class function Lucia: TVoiceId; static;
    class function Lupe: TVoiceId; static;
    class function Mads: TVoiceId; static;
    class function Maja: TVoiceId; static;
    class function Marlene: TVoiceId; static;
    class function Mathieu: TVoiceId; static;
    class function Matthew: TVoiceId; static;
    class function Maxim: TVoiceId; static;
    class function Mia: TVoiceId; static;
    class function Miguel: TVoiceId; static;
    class function Mizuki: TVoiceId; static;
    class function Naja: TVoiceId; static;
    class function Nicole: TVoiceId; static;
    class function Olivia: TVoiceId; static;
    class function Penelope: TVoiceId; static;
    class function Raveena: TVoiceId; static;
    class function Ricardo: TVoiceId; static;
    class function Ruben: TVoiceId; static;
    class function Russell: TVoiceId; static;
    class function Salli: TVoiceId; static;
    class function Seoyeon: TVoiceId; static;
    class function Takumi: TVoiceId; static;
    class function Tatyana: TVoiceId; static;
    class function Vicki: TVoiceId; static;
    class function Vitoria: TVoiceId; static;
    class function Zeina: TVoiceId; static;
    class function Zhiyu: TVoiceId; static;
    class operator Equal(a: TVoiceId; b: TVoiceId): Boolean;
    class operator NotEqual(a: TVoiceId; b: TVoiceId): Boolean;
    class operator Implicit(a: string): TVoiceId;
    property Value: string read FValue;
  end;
  
implementation

{ TEngine }

constructor TEngine.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEngine.Neural: TEngine;
begin
  Result := TEngine.Create('neural');
end;

class function TEngine.Standard: TEngine;
begin
  Result := TEngine.Create('standard');
end;

class operator TEngine.Equal(a: TEngine; b: TEngine): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEngine.NotEqual(a: TEngine; b: TEngine): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEngine.Implicit(a: string): TEngine;
begin
  Result.FValue := a;;
end;

{ TGender }

constructor TGender.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TGender.Female: TGender;
begin
  Result := TGender.Create('Female');
end;

class function TGender.Male: TGender;
begin
  Result := TGender.Create('Male');
end;

class operator TGender.Equal(a: TGender; b: TGender): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TGender.NotEqual(a: TGender; b: TGender): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TGender.Implicit(a: string): TGender;
begin
  Result.FValue := a;;
end;

{ TLanguageCode }

constructor TLanguageCode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLanguageCode.Arb: TLanguageCode;
begin
  Result := TLanguageCode.Create('arb');
end;

class function TLanguageCode.CmnCN: TLanguageCode;
begin
  Result := TLanguageCode.Create('cmn-CN');
end;

class function TLanguageCode.CyGB: TLanguageCode;
begin
  Result := TLanguageCode.Create('cy-GB');
end;

class function TLanguageCode.DaDK: TLanguageCode;
begin
  Result := TLanguageCode.Create('da-DK');
end;

class function TLanguageCode.DeDE: TLanguageCode;
begin
  Result := TLanguageCode.Create('de-DE');
end;

class function TLanguageCode.EnAU: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-AU');
end;

class function TLanguageCode.EnGB: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-GB');
end;

class function TLanguageCode.EnGBWLS: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-GB-WLS');
end;

class function TLanguageCode.EnIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-IN');
end;

class function TLanguageCode.EnUS: TLanguageCode;
begin
  Result := TLanguageCode.Create('en-US');
end;

class function TLanguageCode.EsES: TLanguageCode;
begin
  Result := TLanguageCode.Create('es-ES');
end;

class function TLanguageCode.EsMX: TLanguageCode;
begin
  Result := TLanguageCode.Create('es-MX');
end;

class function TLanguageCode.EsUS: TLanguageCode;
begin
  Result := TLanguageCode.Create('es-US');
end;

class function TLanguageCode.FrCA: TLanguageCode;
begin
  Result := TLanguageCode.Create('fr-CA');
end;

class function TLanguageCode.FrFR: TLanguageCode;
begin
  Result := TLanguageCode.Create('fr-FR');
end;

class function TLanguageCode.HiIN: TLanguageCode;
begin
  Result := TLanguageCode.Create('hi-IN');
end;

class function TLanguageCode.IsIS: TLanguageCode;
begin
  Result := TLanguageCode.Create('is-IS');
end;

class function TLanguageCode.ItIT: TLanguageCode;
begin
  Result := TLanguageCode.Create('it-IT');
end;

class function TLanguageCode.JaJP: TLanguageCode;
begin
  Result := TLanguageCode.Create('ja-JP');
end;

class function TLanguageCode.KoKR: TLanguageCode;
begin
  Result := TLanguageCode.Create('ko-KR');
end;

class function TLanguageCode.NbNO: TLanguageCode;
begin
  Result := TLanguageCode.Create('nb-NO');
end;

class function TLanguageCode.NlNL: TLanguageCode;
begin
  Result := TLanguageCode.Create('nl-NL');
end;

class function TLanguageCode.PlPL: TLanguageCode;
begin
  Result := TLanguageCode.Create('pl-PL');
end;

class function TLanguageCode.PtBR: TLanguageCode;
begin
  Result := TLanguageCode.Create('pt-BR');
end;

class function TLanguageCode.PtPT: TLanguageCode;
begin
  Result := TLanguageCode.Create('pt-PT');
end;

class function TLanguageCode.RoRO: TLanguageCode;
begin
  Result := TLanguageCode.Create('ro-RO');
end;

class function TLanguageCode.RuRU: TLanguageCode;
begin
  Result := TLanguageCode.Create('ru-RU');
end;

class function TLanguageCode.SvSE: TLanguageCode;
begin
  Result := TLanguageCode.Create('sv-SE');
end;

class function TLanguageCode.TrTR: TLanguageCode;
begin
  Result := TLanguageCode.Create('tr-TR');
end;

class operator TLanguageCode.Equal(a: TLanguageCode; b: TLanguageCode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLanguageCode.NotEqual(a: TLanguageCode; b: TLanguageCode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLanguageCode.Implicit(a: string): TLanguageCode;
begin
  Result.FValue := a;;
end;

{ TOutputFormat }

constructor TOutputFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOutputFormat.Json: TOutputFormat;
begin
  Result := TOutputFormat.Create('json');
end;

class function TOutputFormat.Mp3: TOutputFormat;
begin
  Result := TOutputFormat.Create('mp3');
end;

class function TOutputFormat.Ogg_vorbis: TOutputFormat;
begin
  Result := TOutputFormat.Create('ogg_vorbis');
end;

class function TOutputFormat.Pcm: TOutputFormat;
begin
  Result := TOutputFormat.Create('pcm');
end;

class operator TOutputFormat.Equal(a: TOutputFormat; b: TOutputFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOutputFormat.NotEqual(a: TOutputFormat; b: TOutputFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOutputFormat.Implicit(a: string): TOutputFormat;
begin
  Result.FValue := a;;
end;

{ TSpeechMarkType }

constructor TSpeechMarkType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSpeechMarkType.Sentence: TSpeechMarkType;
begin
  Result := TSpeechMarkType.Create('sentence');
end;

class function TSpeechMarkType.Ssml: TSpeechMarkType;
begin
  Result := TSpeechMarkType.Create('ssml');
end;

class function TSpeechMarkType.Viseme: TSpeechMarkType;
begin
  Result := TSpeechMarkType.Create('viseme');
end;

class function TSpeechMarkType.Word: TSpeechMarkType;
begin
  Result := TSpeechMarkType.Create('word');
end;

class operator TSpeechMarkType.Equal(a: TSpeechMarkType; b: TSpeechMarkType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSpeechMarkType.NotEqual(a: TSpeechMarkType; b: TSpeechMarkType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSpeechMarkType.Implicit(a: string): TSpeechMarkType;
begin
  Result.FValue := a;;
end;

{ TTaskStatus }

constructor TTaskStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTaskStatus.Completed: TTaskStatus;
begin
  Result := TTaskStatus.Create('completed');
end;

class function TTaskStatus.Failed: TTaskStatus;
begin
  Result := TTaskStatus.Create('failed');
end;

class function TTaskStatus.InProgress: TTaskStatus;
begin
  Result := TTaskStatus.Create('inProgress');
end;

class function TTaskStatus.Scheduled: TTaskStatus;
begin
  Result := TTaskStatus.Create('scheduled');
end;

class operator TTaskStatus.Equal(a: TTaskStatus; b: TTaskStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTaskStatus.NotEqual(a: TTaskStatus; b: TTaskStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTaskStatus.Implicit(a: string): TTaskStatus;
begin
  Result.FValue := a;;
end;

{ TTextType }

constructor TTextType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTextType.Ssml: TTextType;
begin
  Result := TTextType.Create('ssml');
end;

class function TTextType.Text: TTextType;
begin
  Result := TTextType.Create('text');
end;

class operator TTextType.Equal(a: TTextType; b: TTextType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTextType.NotEqual(a: TTextType; b: TTextType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTextType.Implicit(a: string): TTextType;
begin
  Result.FValue := a;;
end;

{ TVoiceId }

constructor TVoiceId.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TVoiceId.Aditi: TVoiceId;
begin
  Result := TVoiceId.Create('Aditi');
end;

class function TVoiceId.Amy: TVoiceId;
begin
  Result := TVoiceId.Create('Amy');
end;

class function TVoiceId.Astrid: TVoiceId;
begin
  Result := TVoiceId.Create('Astrid');
end;

class function TVoiceId.Bianca: TVoiceId;
begin
  Result := TVoiceId.Create('Bianca');
end;

class function TVoiceId.Brian: TVoiceId;
begin
  Result := TVoiceId.Create('Brian');
end;

class function TVoiceId.Camila: TVoiceId;
begin
  Result := TVoiceId.Create('Camila');
end;

class function TVoiceId.Carla: TVoiceId;
begin
  Result := TVoiceId.Create('Carla');
end;

class function TVoiceId.Carmen: TVoiceId;
begin
  Result := TVoiceId.Create('Carmen');
end;

class function TVoiceId.Celine: TVoiceId;
begin
  Result := TVoiceId.Create('Celine');
end;

class function TVoiceId.Chantal: TVoiceId;
begin
  Result := TVoiceId.Create('Chantal');
end;

class function TVoiceId.Conchita: TVoiceId;
begin
  Result := TVoiceId.Create('Conchita');
end;

class function TVoiceId.Cristiano: TVoiceId;
begin
  Result := TVoiceId.Create('Cristiano');
end;

class function TVoiceId.Dora: TVoiceId;
begin
  Result := TVoiceId.Create('Dora');
end;

class function TVoiceId.Emma: TVoiceId;
begin
  Result := TVoiceId.Create('Emma');
end;

class function TVoiceId.Enrique: TVoiceId;
begin
  Result := TVoiceId.Create('Enrique');
end;

class function TVoiceId.Ewa: TVoiceId;
begin
  Result := TVoiceId.Create('Ewa');
end;

class function TVoiceId.Filiz: TVoiceId;
begin
  Result := TVoiceId.Create('Filiz');
end;

class function TVoiceId.Gabrielle: TVoiceId;
begin
  Result := TVoiceId.Create('Gabrielle');
end;

class function TVoiceId.Geraint: TVoiceId;
begin
  Result := TVoiceId.Create('Geraint');
end;

class function TVoiceId.Giorgio: TVoiceId;
begin
  Result := TVoiceId.Create('Giorgio');
end;

class function TVoiceId.Gwyneth: TVoiceId;
begin
  Result := TVoiceId.Create('Gwyneth');
end;

class function TVoiceId.Hans: TVoiceId;
begin
  Result := TVoiceId.Create('Hans');
end;

class function TVoiceId.Ines: TVoiceId;
begin
  Result := TVoiceId.Create('Ines');
end;

class function TVoiceId.Ivy: TVoiceId;
begin
  Result := TVoiceId.Create('Ivy');
end;

class function TVoiceId.Jacek: TVoiceId;
begin
  Result := TVoiceId.Create('Jacek');
end;

class function TVoiceId.Jan: TVoiceId;
begin
  Result := TVoiceId.Create('Jan');
end;

class function TVoiceId.Joanna: TVoiceId;
begin
  Result := TVoiceId.Create('Joanna');
end;

class function TVoiceId.Joey: TVoiceId;
begin
  Result := TVoiceId.Create('Joey');
end;

class function TVoiceId.Justin: TVoiceId;
begin
  Result := TVoiceId.Create('Justin');
end;

class function TVoiceId.Karl: TVoiceId;
begin
  Result := TVoiceId.Create('Karl');
end;

class function TVoiceId.Kendra: TVoiceId;
begin
  Result := TVoiceId.Create('Kendra');
end;

class function TVoiceId.Kevin: TVoiceId;
begin
  Result := TVoiceId.Create('Kevin');
end;

class function TVoiceId.Kimberly: TVoiceId;
begin
  Result := TVoiceId.Create('Kimberly');
end;

class function TVoiceId.Lea: TVoiceId;
begin
  Result := TVoiceId.Create('Lea');
end;

class function TVoiceId.Liv: TVoiceId;
begin
  Result := TVoiceId.Create('Liv');
end;

class function TVoiceId.Lotte: TVoiceId;
begin
  Result := TVoiceId.Create('Lotte');
end;

class function TVoiceId.Lucia: TVoiceId;
begin
  Result := TVoiceId.Create('Lucia');
end;

class function TVoiceId.Lupe: TVoiceId;
begin
  Result := TVoiceId.Create('Lupe');
end;

class function TVoiceId.Mads: TVoiceId;
begin
  Result := TVoiceId.Create('Mads');
end;

class function TVoiceId.Maja: TVoiceId;
begin
  Result := TVoiceId.Create('Maja');
end;

class function TVoiceId.Marlene: TVoiceId;
begin
  Result := TVoiceId.Create('Marlene');
end;

class function TVoiceId.Mathieu: TVoiceId;
begin
  Result := TVoiceId.Create('Mathieu');
end;

class function TVoiceId.Matthew: TVoiceId;
begin
  Result := TVoiceId.Create('Matthew');
end;

class function TVoiceId.Maxim: TVoiceId;
begin
  Result := TVoiceId.Create('Maxim');
end;

class function TVoiceId.Mia: TVoiceId;
begin
  Result := TVoiceId.Create('Mia');
end;

class function TVoiceId.Miguel: TVoiceId;
begin
  Result := TVoiceId.Create('Miguel');
end;

class function TVoiceId.Mizuki: TVoiceId;
begin
  Result := TVoiceId.Create('Mizuki');
end;

class function TVoiceId.Naja: TVoiceId;
begin
  Result := TVoiceId.Create('Naja');
end;

class function TVoiceId.Nicole: TVoiceId;
begin
  Result := TVoiceId.Create('Nicole');
end;

class function TVoiceId.Olivia: TVoiceId;
begin
  Result := TVoiceId.Create('Olivia');
end;

class function TVoiceId.Penelope: TVoiceId;
begin
  Result := TVoiceId.Create('Penelope');
end;

class function TVoiceId.Raveena: TVoiceId;
begin
  Result := TVoiceId.Create('Raveena');
end;

class function TVoiceId.Ricardo: TVoiceId;
begin
  Result := TVoiceId.Create('Ricardo');
end;

class function TVoiceId.Ruben: TVoiceId;
begin
  Result := TVoiceId.Create('Ruben');
end;

class function TVoiceId.Russell: TVoiceId;
begin
  Result := TVoiceId.Create('Russell');
end;

class function TVoiceId.Salli: TVoiceId;
begin
  Result := TVoiceId.Create('Salli');
end;

class function TVoiceId.Seoyeon: TVoiceId;
begin
  Result := TVoiceId.Create('Seoyeon');
end;

class function TVoiceId.Takumi: TVoiceId;
begin
  Result := TVoiceId.Create('Takumi');
end;

class function TVoiceId.Tatyana: TVoiceId;
begin
  Result := TVoiceId.Create('Tatyana');
end;

class function TVoiceId.Vicki: TVoiceId;
begin
  Result := TVoiceId.Create('Vicki');
end;

class function TVoiceId.Vitoria: TVoiceId;
begin
  Result := TVoiceId.Create('Vitoria');
end;

class function TVoiceId.Zeina: TVoiceId;
begin
  Result := TVoiceId.Create('Zeina');
end;

class function TVoiceId.Zhiyu: TVoiceId;
begin
  Result := TVoiceId.Create('Zhiyu');
end;

class operator TVoiceId.Equal(a: TVoiceId; b: TVoiceId): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TVoiceId.NotEqual(a: TVoiceId; b: TVoiceId): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TVoiceId.Implicit(a: string): TVoiceId;
begin
  Result.FValue := a;;
end;

end.
