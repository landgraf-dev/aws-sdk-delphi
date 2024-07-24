unit AWS.SSM.Model.PatchOrchestratorFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TPatchOrchestratorFilter = class;
  
  IPatchOrchestratorFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TPatchOrchestratorFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TPatchOrchestratorFilter = class
  strict private
    FKey: Nullable<string>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TPatchOrchestratorFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TPatchOrchestratorFilter }

constructor TPatchOrchestratorFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TPatchOrchestratorFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TPatchOrchestratorFilter.Obj: TPatchOrchestratorFilter;
begin
  Result := Self;
end;

function TPatchOrchestratorFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPatchOrchestratorFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TPatchOrchestratorFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPatchOrchestratorFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TPatchOrchestratorFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TPatchOrchestratorFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TPatchOrchestratorFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TPatchOrchestratorFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
