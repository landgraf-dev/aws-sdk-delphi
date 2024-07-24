unit AWS.SSM.Model.PatchFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TPatchFilter = class;
  
  IPatchFilter = interface
    function GetKey: TPatchFilterKey;
    procedure SetKey(const Value: TPatchFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TPatchFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TPatchFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TPatchFilter = class
  strict private
    FKey: Nullable<TPatchFilterKey>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TPatchFilterKey;
    procedure SetKey(const Value: TPatchFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TPatchFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TPatchFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TPatchFilter }

constructor TPatchFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TPatchFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TPatchFilter.Obj: TPatchFilter;
begin
  Result := Self;
end;

function TPatchFilter.GetKey: TPatchFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPatchFilter.SetKey(const Value: TPatchFilterKey);
begin
  FKey := Value;
end;

function TPatchFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPatchFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TPatchFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TPatchFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TPatchFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TPatchFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
