unit AWS.SSM.Model.Target;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TTarget = class;
  
  ITarget = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TTarget;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TTarget = class
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
    function Obj: TTarget;
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

{ TTarget }

constructor TTarget.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TTarget.Destroy;
begin
  Values := nil;
  inherited;
end;

function TTarget.Obj: TTarget;
begin
  Result := Self;
end;

function TTarget.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TTarget.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TTarget.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TTarget.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TTarget.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TTarget.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TTarget.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TTarget.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
