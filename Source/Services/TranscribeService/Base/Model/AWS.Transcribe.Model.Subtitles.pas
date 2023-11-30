unit AWS.Transcribe.Model.Subtitles;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TSubtitles = class;
  
  ISubtitles = interface
    function GetFormats: TList<string>;
    procedure SetFormats(const Value: TList<string>);
    function GetKeepFormats: Boolean;
    procedure SetKeepFormats(const Value: Boolean);
    function GetOutputStartIndex: Integer;
    procedure SetOutputStartIndex(const Value: Integer);
    function Obj: TSubtitles;
    function IsSetFormats: Boolean;
    function IsSetOutputStartIndex: Boolean;
    property Formats: TList<string> read GetFormats write SetFormats;
    property KeepFormats: Boolean read GetKeepFormats write SetKeepFormats;
    property OutputStartIndex: Integer read GetOutputStartIndex write SetOutputStartIndex;
  end;
  
  TSubtitles = class
  strict private
    FFormats: TList<string>;
    FKeepFormats: Boolean;
    FOutputStartIndex: Nullable<Integer>;
    function GetFormats: TList<string>;
    procedure SetFormats(const Value: TList<string>);
    function GetKeepFormats: Boolean;
    procedure SetKeepFormats(const Value: Boolean);
    function GetOutputStartIndex: Integer;
    procedure SetOutputStartIndex(const Value: Integer);
  strict protected
    function Obj: TSubtitles;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFormats: Boolean;
    function IsSetOutputStartIndex: Boolean;
    property Formats: TList<string> read GetFormats write SetFormats;
    property KeepFormats: Boolean read GetKeepFormats write SetKeepFormats;
    property OutputStartIndex: Integer read GetOutputStartIndex write SetOutputStartIndex;
  end;
  
implementation

{ TSubtitles }

constructor TSubtitles.Create;
begin
  inherited;
  FFormats := TList<string>.Create;
end;

destructor TSubtitles.Destroy;
begin
  Formats := nil;
  inherited;
end;

function TSubtitles.Obj: TSubtitles;
begin
  Result := Self;
end;

function TSubtitles.GetFormats: TList<string>;
begin
  Result := FFormats;
end;

procedure TSubtitles.SetFormats(const Value: TList<string>);
begin
  if FFormats <> Value then
  begin
    if not KeepFormats then
      FFormats.Free;
    FFormats := Value;
  end;
end;

function TSubtitles.GetKeepFormats: Boolean;
begin
  Result := FKeepFormats;
end;

procedure TSubtitles.SetKeepFormats(const Value: Boolean);
begin
  FKeepFormats := Value;
end;

function TSubtitles.IsSetFormats: Boolean;
begin
  Result := (FFormats <> nil) and (FFormats.Count > 0);
end;

function TSubtitles.GetOutputStartIndex: Integer;
begin
  Result := FOutputStartIndex.ValueOrDefault;
end;

procedure TSubtitles.SetOutputStartIndex(const Value: Integer);
begin
  FOutputStartIndex := Value;
end;

function TSubtitles.IsSetOutputStartIndex: Boolean;
begin
  Result := FOutputStartIndex.HasValue;
end;

end.
