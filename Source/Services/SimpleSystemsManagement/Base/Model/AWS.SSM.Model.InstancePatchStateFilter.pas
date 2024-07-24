unit AWS.SSM.Model.InstancePatchStateFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TInstancePatchStateFilter = class;
  
  IInstancePatchStateFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TInstancePatchStateOperatorType;
    procedure SetType(const Value: TInstancePatchStateOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TInstancePatchStateFilter;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TInstancePatchStateOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TInstancePatchStateFilter = class
  strict private
    FKey: Nullable<string>;
    FType: Nullable<TInstancePatchStateOperatorType>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TInstancePatchStateOperatorType;
    procedure SetType(const Value: TInstancePatchStateOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TInstancePatchStateFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TInstancePatchStateOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TInstancePatchStateFilter }

constructor TInstancePatchStateFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TInstancePatchStateFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TInstancePatchStateFilter.Obj: TInstancePatchStateFilter;
begin
  Result := Self;
end;

function TInstancePatchStateFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInstancePatchStateFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TInstancePatchStateFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInstancePatchStateFilter.GetType: TInstancePatchStateOperatorType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TInstancePatchStateFilter.SetType(const Value: TInstancePatchStateOperatorType);
begin
  FType := Value;
end;

function TInstancePatchStateFilter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TInstancePatchStateFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TInstancePatchStateFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TInstancePatchStateFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TInstancePatchStateFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TInstancePatchStateFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
