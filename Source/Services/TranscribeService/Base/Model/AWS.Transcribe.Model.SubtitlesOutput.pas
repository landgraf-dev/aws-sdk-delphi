unit AWS.Transcribe.Model.SubtitlesOutput;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TSubtitlesOutput = class;
  
  ISubtitlesOutput = interface
    function GetFormats: TList<string>;
    procedure SetFormats(const Value: TList<string>);
    function GetKeepFormats: Boolean;
    procedure SetKeepFormats(const Value: Boolean);
    function GetOutputStartIndex: Integer;
    procedure SetOutputStartIndex(const Value: Integer);
    function GetSubtitleFileUris: TList<string>;
    procedure SetSubtitleFileUris(const Value: TList<string>);
    function GetKeepSubtitleFileUris: Boolean;
    procedure SetKeepSubtitleFileUris(const Value: Boolean);
    function Obj: TSubtitlesOutput;
    function IsSetFormats: Boolean;
    function IsSetOutputStartIndex: Boolean;
    function IsSetSubtitleFileUris: Boolean;
    property Formats: TList<string> read GetFormats write SetFormats;
    property KeepFormats: Boolean read GetKeepFormats write SetKeepFormats;
    property OutputStartIndex: Integer read GetOutputStartIndex write SetOutputStartIndex;
    property SubtitleFileUris: TList<string> read GetSubtitleFileUris write SetSubtitleFileUris;
    property KeepSubtitleFileUris: Boolean read GetKeepSubtitleFileUris write SetKeepSubtitleFileUris;
  end;
  
  TSubtitlesOutput = class
  strict private
    FFormats: TList<string>;
    FKeepFormats: Boolean;
    FOutputStartIndex: Nullable<Integer>;
    FSubtitleFileUris: TList<string>;
    FKeepSubtitleFileUris: Boolean;
    function GetFormats: TList<string>;
    procedure SetFormats(const Value: TList<string>);
    function GetKeepFormats: Boolean;
    procedure SetKeepFormats(const Value: Boolean);
    function GetOutputStartIndex: Integer;
    procedure SetOutputStartIndex(const Value: Integer);
    function GetSubtitleFileUris: TList<string>;
    procedure SetSubtitleFileUris(const Value: TList<string>);
    function GetKeepSubtitleFileUris: Boolean;
    procedure SetKeepSubtitleFileUris(const Value: Boolean);
  strict protected
    function Obj: TSubtitlesOutput;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFormats: Boolean;
    function IsSetOutputStartIndex: Boolean;
    function IsSetSubtitleFileUris: Boolean;
    property Formats: TList<string> read GetFormats write SetFormats;
    property KeepFormats: Boolean read GetKeepFormats write SetKeepFormats;
    property OutputStartIndex: Integer read GetOutputStartIndex write SetOutputStartIndex;
    property SubtitleFileUris: TList<string> read GetSubtitleFileUris write SetSubtitleFileUris;
    property KeepSubtitleFileUris: Boolean read GetKeepSubtitleFileUris write SetKeepSubtitleFileUris;
  end;
  
implementation

{ TSubtitlesOutput }

constructor TSubtitlesOutput.Create;
begin
  inherited;
  FFormats := TList<string>.Create;
  FSubtitleFileUris := TList<string>.Create;
end;

destructor TSubtitlesOutput.Destroy;
begin
  SubtitleFileUris := nil;
  Formats := nil;
  inherited;
end;

function TSubtitlesOutput.Obj: TSubtitlesOutput;
begin
  Result := Self;
end;

function TSubtitlesOutput.GetFormats: TList<string>;
begin
  Result := FFormats;
end;

procedure TSubtitlesOutput.SetFormats(const Value: TList<string>);
begin
  if FFormats <> Value then
  begin
    if not KeepFormats then
      FFormats.Free;
    FFormats := Value;
  end;
end;

function TSubtitlesOutput.GetKeepFormats: Boolean;
begin
  Result := FKeepFormats;
end;

procedure TSubtitlesOutput.SetKeepFormats(const Value: Boolean);
begin
  FKeepFormats := Value;
end;

function TSubtitlesOutput.IsSetFormats: Boolean;
begin
  Result := (FFormats <> nil) and (FFormats.Count > 0);
end;

function TSubtitlesOutput.GetOutputStartIndex: Integer;
begin
  Result := FOutputStartIndex.ValueOrDefault;
end;

procedure TSubtitlesOutput.SetOutputStartIndex(const Value: Integer);
begin
  FOutputStartIndex := Value;
end;

function TSubtitlesOutput.IsSetOutputStartIndex: Boolean;
begin
  Result := FOutputStartIndex.HasValue;
end;

function TSubtitlesOutput.GetSubtitleFileUris: TList<string>;
begin
  Result := FSubtitleFileUris;
end;

procedure TSubtitlesOutput.SetSubtitleFileUris(const Value: TList<string>);
begin
  if FSubtitleFileUris <> Value then
  begin
    if not KeepSubtitleFileUris then
      FSubtitleFileUris.Free;
    FSubtitleFileUris := Value;
  end;
end;

function TSubtitlesOutput.GetKeepSubtitleFileUris: Boolean;
begin
  Result := FKeepSubtitleFileUris;
end;

procedure TSubtitlesOutput.SetKeepSubtitleFileUris(const Value: Boolean);
begin
  FKeepSubtitleFileUris := Value;
end;

function TSubtitlesOutput.IsSetSubtitleFileUris: Boolean;
begin
  Result := (FSubtitleFileUris <> nil) and (FSubtitleFileUris.Count > 0);
end;

end.
