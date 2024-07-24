unit AWS.SSM.Model.DocumentKeyValuesFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TDocumentKeyValuesFilter = class;
  
  IDocumentKeyValuesFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TDocumentKeyValuesFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TDocumentKeyValuesFilter = class
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
    function Obj: TDocumentKeyValuesFilter;
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

{ TDocumentKeyValuesFilter }

constructor TDocumentKeyValuesFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TDocumentKeyValuesFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TDocumentKeyValuesFilter.Obj: TDocumentKeyValuesFilter;
begin
  Result := Self;
end;

function TDocumentKeyValuesFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDocumentKeyValuesFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TDocumentKeyValuesFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDocumentKeyValuesFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TDocumentKeyValuesFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TDocumentKeyValuesFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TDocumentKeyValuesFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TDocumentKeyValuesFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
