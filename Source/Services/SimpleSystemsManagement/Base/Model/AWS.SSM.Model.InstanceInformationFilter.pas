unit AWS.SSM.Model.InstanceInformationFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TInstanceInformationFilter = class;
  
  IInstanceInformationFilter = interface
    function GetKey: TInstanceInformationFilterKey;
    procedure SetKey(const Value: TInstanceInformationFilterKey);
    function GetValueSet: TList<string>;
    procedure SetValueSet(const Value: TList<string>);
    function GetKeepValueSet: Boolean;
    procedure SetKeepValueSet(const Value: Boolean);
    function Obj: TInstanceInformationFilter;
    function IsSetKey: Boolean;
    function IsSetValueSet: Boolean;
    property Key: TInstanceInformationFilterKey read GetKey write SetKey;
    property ValueSet: TList<string> read GetValueSet write SetValueSet;
    property KeepValueSet: Boolean read GetKeepValueSet write SetKeepValueSet;
  end;
  
  TInstanceInformationFilter = class
  strict private
    FKey: Nullable<TInstanceInformationFilterKey>;
    FValueSet: TList<string>;
    FKeepValueSet: Boolean;
    function GetKey: TInstanceInformationFilterKey;
    procedure SetKey(const Value: TInstanceInformationFilterKey);
    function GetValueSet: TList<string>;
    procedure SetValueSet(const Value: TList<string>);
    function GetKeepValueSet: Boolean;
    procedure SetKeepValueSet(const Value: Boolean);
  strict protected
    function Obj: TInstanceInformationFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValueSet: Boolean;
    property Key: TInstanceInformationFilterKey read GetKey write SetKey;
    property ValueSet: TList<string> read GetValueSet write SetValueSet;
    property KeepValueSet: Boolean read GetKeepValueSet write SetKeepValueSet;
  end;
  
implementation

{ TInstanceInformationFilter }

constructor TInstanceInformationFilter.Create;
begin
  inherited;
  FValueSet := TList<string>.Create;
end;

destructor TInstanceInformationFilter.Destroy;
begin
  ValueSet := nil;
  inherited;
end;

function TInstanceInformationFilter.Obj: TInstanceInformationFilter;
begin
  Result := Self;
end;

function TInstanceInformationFilter.GetKey: TInstanceInformationFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInstanceInformationFilter.SetKey(const Value: TInstanceInformationFilterKey);
begin
  FKey := Value;
end;

function TInstanceInformationFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInstanceInformationFilter.GetValueSet: TList<string>;
begin
  Result := FValueSet;
end;

procedure TInstanceInformationFilter.SetValueSet(const Value: TList<string>);
begin
  if FValueSet <> Value then
  begin
    if not KeepValueSet then
      FValueSet.Free;
    FValueSet := Value;
  end;
end;

function TInstanceInformationFilter.GetKeepValueSet: Boolean;
begin
  Result := FKeepValueSet;
end;

procedure TInstanceInformationFilter.SetKeepValueSet(const Value: Boolean);
begin
  FKeepValueSet := Value;
end;

function TInstanceInformationFilter.IsSetValueSet: Boolean;
begin
  Result := (FValueSet <> nil) and (FValueSet.Count > 0);
end;

end.
