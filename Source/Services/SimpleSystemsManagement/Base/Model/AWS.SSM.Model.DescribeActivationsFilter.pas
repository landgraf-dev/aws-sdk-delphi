unit AWS.SSM.Model.DescribeActivationsFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDescribeActivationsFilter = class;
  
  IDescribeActivationsFilter = interface
    function GetFilterKey: TDescribeActivationsFilterKeys;
    procedure SetFilterKey(const Value: TDescribeActivationsFilterKeys);
    function GetFilterValues: TList<string>;
    procedure SetFilterValues(const Value: TList<string>);
    function GetKeepFilterValues: Boolean;
    procedure SetKeepFilterValues(const Value: Boolean);
    function Obj: TDescribeActivationsFilter;
    function IsSetFilterKey: Boolean;
    function IsSetFilterValues: Boolean;
    property FilterKey: TDescribeActivationsFilterKeys read GetFilterKey write SetFilterKey;
    property FilterValues: TList<string> read GetFilterValues write SetFilterValues;
    property KeepFilterValues: Boolean read GetKeepFilterValues write SetKeepFilterValues;
  end;
  
  TDescribeActivationsFilter = class
  strict private
    FFilterKey: Nullable<TDescribeActivationsFilterKeys>;
    FFilterValues: TList<string>;
    FKeepFilterValues: Boolean;
    function GetFilterKey: TDescribeActivationsFilterKeys;
    procedure SetFilterKey(const Value: TDescribeActivationsFilterKeys);
    function GetFilterValues: TList<string>;
    procedure SetFilterValues(const Value: TList<string>);
    function GetKeepFilterValues: Boolean;
    procedure SetKeepFilterValues(const Value: Boolean);
  strict protected
    function Obj: TDescribeActivationsFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilterKey: Boolean;
    function IsSetFilterValues: Boolean;
    property FilterKey: TDescribeActivationsFilterKeys read GetFilterKey write SetFilterKey;
    property FilterValues: TList<string> read GetFilterValues write SetFilterValues;
    property KeepFilterValues: Boolean read GetKeepFilterValues write SetKeepFilterValues;
  end;
  
implementation

{ TDescribeActivationsFilter }

constructor TDescribeActivationsFilter.Create;
begin
  inherited;
  FFilterValues := TList<string>.Create;
end;

destructor TDescribeActivationsFilter.Destroy;
begin
  FilterValues := nil;
  inherited;
end;

function TDescribeActivationsFilter.Obj: TDescribeActivationsFilter;
begin
  Result := Self;
end;

function TDescribeActivationsFilter.GetFilterKey: TDescribeActivationsFilterKeys;
begin
  Result := FFilterKey.ValueOrDefault;
end;

procedure TDescribeActivationsFilter.SetFilterKey(const Value: TDescribeActivationsFilterKeys);
begin
  FFilterKey := Value;
end;

function TDescribeActivationsFilter.IsSetFilterKey: Boolean;
begin
  Result := FFilterKey.HasValue;
end;

function TDescribeActivationsFilter.GetFilterValues: TList<string>;
begin
  Result := FFilterValues;
end;

procedure TDescribeActivationsFilter.SetFilterValues(const Value: TList<string>);
begin
  if FFilterValues <> Value then
  begin
    if not KeepFilterValues then
      FFilterValues.Free;
    FFilterValues := Value;
  end;
end;

function TDescribeActivationsFilter.GetKeepFilterValues: Boolean;
begin
  Result := FKeepFilterValues;
end;

procedure TDescribeActivationsFilter.SetKeepFilterValues(const Value: Boolean);
begin
  FKeepFilterValues := Value;
end;

function TDescribeActivationsFilter.IsSetFilterValues: Boolean;
begin
  Result := (FFilterValues <> nil) and (FFilterValues.Count > 0);
end;

end.
