unit AWS.SSM.Model.PatchSource;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TPatchSource = class;
  
  IPatchSource = interface
    function GetConfiguration: string;
    procedure SetConfiguration(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetProducts: TList<string>;
    procedure SetProducts(const Value: TList<string>);
    function GetKeepProducts: Boolean;
    procedure SetKeepProducts(const Value: Boolean);
    function Obj: TPatchSource;
    function IsSetConfiguration: Boolean;
    function IsSetName: Boolean;
    function IsSetProducts: Boolean;
    property Configuration: string read GetConfiguration write SetConfiguration;
    property Name: string read GetName write SetName;
    property Products: TList<string> read GetProducts write SetProducts;
    property KeepProducts: Boolean read GetKeepProducts write SetKeepProducts;
  end;
  
  TPatchSource = class
  strict private
    FConfiguration: Nullable<string>;
    FName: Nullable<string>;
    FProducts: TList<string>;
    FKeepProducts: Boolean;
    function GetConfiguration: string;
    procedure SetConfiguration(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetProducts: TList<string>;
    procedure SetProducts(const Value: TList<string>);
    function GetKeepProducts: Boolean;
    procedure SetKeepProducts(const Value: Boolean);
  strict protected
    function Obj: TPatchSource;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfiguration: Boolean;
    function IsSetName: Boolean;
    function IsSetProducts: Boolean;
    property Configuration: string read GetConfiguration write SetConfiguration;
    property Name: string read GetName write SetName;
    property Products: TList<string> read GetProducts write SetProducts;
    property KeepProducts: Boolean read GetKeepProducts write SetKeepProducts;
  end;
  
implementation

{ TPatchSource }

constructor TPatchSource.Create;
begin
  inherited;
  FProducts := TList<string>.Create;
end;

destructor TPatchSource.Destroy;
begin
  Products := nil;
  inherited;
end;

function TPatchSource.Obj: TPatchSource;
begin
  Result := Self;
end;

function TPatchSource.GetConfiguration: string;
begin
  Result := FConfiguration.ValueOrDefault;
end;

procedure TPatchSource.SetConfiguration(const Value: string);
begin
  FConfiguration := Value;
end;

function TPatchSource.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration.HasValue;
end;

function TPatchSource.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPatchSource.SetName(const Value: string);
begin
  FName := Value;
end;

function TPatchSource.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TPatchSource.GetProducts: TList<string>;
begin
  Result := FProducts;
end;

procedure TPatchSource.SetProducts(const Value: TList<string>);
begin
  if FProducts <> Value then
  begin
    if not KeepProducts then
      FProducts.Free;
    FProducts := Value;
  end;
end;

function TPatchSource.GetKeepProducts: Boolean;
begin
  Result := FKeepProducts;
end;

procedure TPatchSource.SetKeepProducts(const Value: Boolean);
begin
  FKeepProducts := Value;
end;

function TPatchSource.IsSetProducts: Boolean;
begin
  Result := (FProducts <> nil) and (FProducts.Count > 0);
end;

end.
