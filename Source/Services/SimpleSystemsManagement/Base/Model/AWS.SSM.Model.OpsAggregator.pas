unit AWS.SSM.Model.OpsAggregator;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsFilter;

type
  TOpsAggregator = class;
  
  IOpsAggregator = interface
    function GetAggregatorType: string;
    procedure SetAggregatorType(const Value: string);
    function GetAggregators: TObjectList<TOpsAggregator>;
    procedure SetAggregators(const Value: TObjectList<TOpsAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetFilters: TObjectList<TOpsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function GetValues: TDictionary<string, string>;
    procedure SetValues(const Value: TDictionary<string, string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TOpsAggregator;
    function IsSetAggregatorType: Boolean;
    function IsSetAggregators: Boolean;
    function IsSetAttributeName: Boolean;
    function IsSetFilters: Boolean;
    function IsSetTypeName: Boolean;
    function IsSetValues: Boolean;
    property AggregatorType: string read GetAggregatorType write SetAggregatorType;
    property Aggregators: TObjectList<TOpsAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property Filters: TObjectList<TOpsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property TypeName: string read GetTypeName write SetTypeName;
    property Values: TDictionary<string, string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TOpsAggregator = class
  strict private
    FAggregatorType: Nullable<string>;
    FAggregators: TObjectList<TOpsAggregator>;
    FKeepAggregators: Boolean;
    FAttributeName: Nullable<string>;
    FFilters: TObjectList<TOpsFilter>;
    FKeepFilters: Boolean;
    FTypeName: Nullable<string>;
    FValues: TDictionary<string, string>;
    FKeepValues: Boolean;
    function GetAggregatorType: string;
    procedure SetAggregatorType(const Value: string);
    function GetAggregators: TObjectList<TOpsAggregator>;
    procedure SetAggregators(const Value: TObjectList<TOpsAggregator>);
    function GetKeepAggregators: Boolean;
    procedure SetKeepAggregators(const Value: Boolean);
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetFilters: TObjectList<TOpsFilter>;
    procedure SetFilters(const Value: TObjectList<TOpsFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function GetValues: TDictionary<string, string>;
    procedure SetValues(const Value: TDictionary<string, string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TOpsAggregator;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAggregatorType: Boolean;
    function IsSetAggregators: Boolean;
    function IsSetAttributeName: Boolean;
    function IsSetFilters: Boolean;
    function IsSetTypeName: Boolean;
    function IsSetValues: Boolean;
    property AggregatorType: string read GetAggregatorType write SetAggregatorType;
    property Aggregators: TObjectList<TOpsAggregator> read GetAggregators write SetAggregators;
    property KeepAggregators: Boolean read GetKeepAggregators write SetKeepAggregators;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property Filters: TObjectList<TOpsFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property TypeName: string read GetTypeName write SetTypeName;
    property Values: TDictionary<string, string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TOpsAggregator }

constructor TOpsAggregator.Create;
begin
  inherited;
  FAggregators := TObjectList<TOpsAggregator>.Create;
  FFilters := TObjectList<TOpsFilter>.Create;
  FValues := TDictionary<string, string>.Create;
end;

destructor TOpsAggregator.Destroy;
begin
  Values := nil;
  Filters := nil;
  Aggregators := nil;
  inherited;
end;

function TOpsAggregator.Obj: TOpsAggregator;
begin
  Result := Self;
end;

function TOpsAggregator.GetAggregatorType: string;
begin
  Result := FAggregatorType.ValueOrDefault;
end;

procedure TOpsAggregator.SetAggregatorType(const Value: string);
begin
  FAggregatorType := Value;
end;

function TOpsAggregator.IsSetAggregatorType: Boolean;
begin
  Result := FAggregatorType.HasValue;
end;

function TOpsAggregator.GetAggregators: TObjectList<TOpsAggregator>;
begin
  Result := FAggregators;
end;

procedure TOpsAggregator.SetAggregators(const Value: TObjectList<TOpsAggregator>);
begin
  if FAggregators <> Value then
  begin
    if not KeepAggregators then
      FAggregators.Free;
    FAggregators := Value;
  end;
end;

function TOpsAggregator.GetKeepAggregators: Boolean;
begin
  Result := FKeepAggregators;
end;

procedure TOpsAggregator.SetKeepAggregators(const Value: Boolean);
begin
  FKeepAggregators := Value;
end;

function TOpsAggregator.IsSetAggregators: Boolean;
begin
  Result := (FAggregators <> nil) and (FAggregators.Count > 0);
end;

function TOpsAggregator.GetAttributeName: string;
begin
  Result := FAttributeName.ValueOrDefault;
end;

procedure TOpsAggregator.SetAttributeName(const Value: string);
begin
  FAttributeName := Value;
end;

function TOpsAggregator.IsSetAttributeName: Boolean;
begin
  Result := FAttributeName.HasValue;
end;

function TOpsAggregator.GetFilters: TObjectList<TOpsFilter>;
begin
  Result := FFilters;
end;

procedure TOpsAggregator.SetFilters(const Value: TObjectList<TOpsFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TOpsAggregator.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TOpsAggregator.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TOpsAggregator.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TOpsAggregator.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TOpsAggregator.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TOpsAggregator.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

function TOpsAggregator.GetValues: TDictionary<string, string>;
begin
  Result := FValues;
end;

procedure TOpsAggregator.SetValues(const Value: TDictionary<string, string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TOpsAggregator.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TOpsAggregator.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TOpsAggregator.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
