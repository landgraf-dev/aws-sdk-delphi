unit AWS.Xml.Base;
{$INCLUDE AWS.inc}
{$INLINE ON}
interface
uses Classes, SysUtils, Generics.Collections, Bcl.Collections;

type
  TNamespaceAndLevel = class //making it a record would make it slower, paradoxically, because record must be finalized as it has strings.
    public
      Level: Int32;
      Pref: string;
      Nm: string;

      constructor Create(const aLevel: Int32; const aPref, aNm: string);
  end;

  TNamespaceStack = class
  private
    FNamespaceList: TObjectList<TNamespaceAndLevel>;
    GlobalLevel: Int32;
    PendingDelete: boolean;
    CachedPref, CachedNm: string;
    procedure InvalidateCache;
    function TryGetValueSlow(const pref: string; out nm: string): boolean;
  public
    constructor Create;
    destructor Destroy; override;

    procedure IncLevel; inline;
    procedure DecLevel; inline;
    procedure DoDecLevel;
    function TryGetValue(const pref: string; out nm: string): boolean; inline;
    function AlreadyExists(const pref, nm: string): boolean;
    procedure Add(const pref, nm: string);
    function EmptyCached: boolean; inline;
    function GetPrefixes(const UsedPrefixes: HashSet<string>): string;
  end;

  procedure RaiseInvalidFile;

implementation
resourcestring
  ErrInvalidXmlFile = 'Invalid xml file.';

procedure RaiseInvalidFile;
begin
  raise Exception.Create(ErrInvalidXmlFile);
end;

{ TNamespaceStack }

function TNamespaceStack.TryGetValue(const pref: string; out nm: string): boolean;
begin
  if pref = CachedPref then begin; nm := CachedNm; exit(true); end;
  Result := TryGetValueSlow(pref, nm);
end;

function TNamespaceStack.AlreadyExists(const pref, nm: string): boolean;
var
  nm1: string;
begin
  if (pref = CachedPref) and (nm = CachedNm) then exit(true);

  if not TryGetValue(pref, nm1) then exit(false);
  Result := nm = nm1;
end;

procedure TNamespaceStack.IncLevel;
begin
  if PendingDelete then DoDecLevel;
  Inc(GlobalLevel);
end;

constructor TNamespaceStack.Create;
begin
  inherited;
  InvalidateCache;
  FNamespaceList := TObjectList<TNamespaceAndLevel>.Create;
  IncLevel;
  Add('xml', 'xml'); //xml:space
  Add('', '');
end;

destructor TNamespaceStack.Destroy;
begin
  FreeAndNil(FNamespaceList);
  inherited;
end;

procedure TNamespaceStack.Add(const pref, nm: string);
begin
  FNamespaceList.Add(TNamespaceAndLevel.Create(GlobalLevel, pref, nm));
  CachedPref := pref;
  CachedNm := nm;
end;

procedure TNamespaceStack.InvalidateCache;
begin
  CachedPref := #1#2#1;
  CachedNm := '';
end;

procedure TNamespaceStack.DecLevel;
begin
  if PendingDelete then DoDecLevel;
  PendingDelete := true;
end;

procedure TNamespaceStack.DoDecLevel;
var
  i: integer;
begin
  Dec(GlobalLevel);
  i := FNamespaceList.Count - 1;
  while(i > 0) and (FNamespaceList[i].Level > GlobalLevel) do
  begin
    Dec(i);
  end;

  PendingDelete := false;
  if (i < FNamespaceList.Count - 1) then
  begin
    FNamespaceList.DeleteRange(i + 1, FNamespaceList.Count - i - 1);
    InvalidateCache;
  end;
end;

function TNamespaceStack.EmptyCached: boolean;
begin
  Result := CachedPref = '';
end;

function TNamespaceStack.GetPrefixes(const UsedPrefixes: HashSet<string>): string;
var
  i: integer;
begin
  Result := '';
  for i := FNamespaceList.Count - 1 downto 0 do
  begin
    if (FNamespaceList[i].Level < GlobalLevel) then exit;
    begin
      Result := Result + ' xmlns';
      UsedPrefixes.Add(FNamespaceList[i].Pref);
      if FNamespaceList[i].Pref <> '' then Result := Result + ':';
      Result := Result + FNamespaceList[i].Pref + ' = "' + FNamespaceList[i].Nm + '"';
    end;
  end;
end;

function TNamespaceStack.TryGetValueSlow(const pref: string; out nm: string): boolean;
var
  i: Integer;
begin
  for i := FNamespaceList.Count - 1 downto 0 do
  begin
    if (FNamespaceList[i].Pref = pref) then
    begin
      Nm := FNamespaceList[i].Nm;
      CachedPref := Pref;
      CachedNm := Nm;
      exit(true);
    end;
  end;
  exit(false);

end;


{ TNamespaceAndLevel }

constructor TNamespaceAndLevel.Create(const aLevel: Int32; const aPref,
  aNm: string);
begin
  Level := aLevel;
  Pref := aPref;
  Nm := aNm;
end;

end.
