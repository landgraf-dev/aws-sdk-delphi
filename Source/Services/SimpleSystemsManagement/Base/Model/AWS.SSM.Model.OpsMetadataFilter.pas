unit AWS.SSM.Model.OpsMetadataFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TOpsMetadataFilter = class;
  
  IOpsMetadataFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsMetadataFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsMetadataFilter = class
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
    function Obj: TOpsMetadataFilter;
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

{ TOpsMetadataFilter }

constructor TOpsMetadataFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TOpsMetadataFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TOpsMetadataFilter.Obj: TOpsMetadataFilter;
begin
  Result := Self;
end;

function TOpsMetadataFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TOpsMetadataFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TOpsMetadataFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TOpsMetadataFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TOpsMetadataFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsMetadataFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsMetadataFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsMetadataFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
