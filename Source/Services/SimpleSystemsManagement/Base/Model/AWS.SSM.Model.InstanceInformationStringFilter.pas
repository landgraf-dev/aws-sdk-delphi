unit AWS.SSM.Model.InstanceInformationStringFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TInstanceInformationStringFilter = class;
  
  IInstanceInformationStringFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TInstanceInformationStringFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TInstanceInformationStringFilter = class
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
    function Obj: TInstanceInformationStringFilter;
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

{ TInstanceInformationStringFilter }

constructor TInstanceInformationStringFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TInstanceInformationStringFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TInstanceInformationStringFilter.Obj: TInstanceInformationStringFilter;
begin
  Result := Self;
end;

function TInstanceInformationStringFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInstanceInformationStringFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TInstanceInformationStringFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInstanceInformationStringFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TInstanceInformationStringFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TInstanceInformationStringFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TInstanceInformationStringFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TInstanceInformationStringFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
