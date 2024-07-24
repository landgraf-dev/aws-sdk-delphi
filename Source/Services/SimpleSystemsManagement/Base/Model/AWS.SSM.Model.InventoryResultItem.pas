unit AWS.SSM.Model.InventoryResultItem;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TInventoryResultItem = class;
  
  IInventoryResultItem = interface
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetContent: TObjectList<TDictionary<string, string>>;
    procedure SetContent(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetContentHash: string;
    procedure SetContentHash(const Value: string);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TInventoryResultItem;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    function IsSetContentHash: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property ContentHash: string read GetContentHash write SetContentHash;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TInventoryResultItem = class
  strict private
    FCaptureTime: Nullable<string>;
    FContent: TObjectList<TDictionary<string, string>>;
    FKeepContent: Boolean;
    FContentHash: Nullable<string>;
    FSchemaVersion: Nullable<string>;
    FTypeName: Nullable<string>;
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetContent: TObjectList<TDictionary<string, string>>;
    procedure SetContent(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetContentHash: string;
    procedure SetContentHash(const Value: string);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TInventoryResultItem;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    function IsSetContentHash: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property ContentHash: string read GetContentHash write SetContentHash;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TInventoryResultItem }

constructor TInventoryResultItem.Create;
begin
  inherited;
  FContent := TObjectList<TDictionary<string, string>>.Create;
end;

destructor TInventoryResultItem.Destroy;
begin
  Content := nil;
  inherited;
end;

function TInventoryResultItem.Obj: TInventoryResultItem;
begin
  Result := Self;
end;

function TInventoryResultItem.GetCaptureTime: string;
begin
  Result := FCaptureTime.ValueOrDefault;
end;

procedure TInventoryResultItem.SetCaptureTime(const Value: string);
begin
  FCaptureTime := Value;
end;

function TInventoryResultItem.IsSetCaptureTime: Boolean;
begin
  Result := FCaptureTime.HasValue;
end;

function TInventoryResultItem.GetContent: TObjectList<TDictionary<string, string>>;
begin
  Result := FContent;
end;

procedure TInventoryResultItem.SetContent(const Value: TObjectList<TDictionary<string, string>>);
begin
  if FContent <> Value then
  begin
    if not KeepContent then
      FContent.Free;
    FContent := Value;
  end;
end;

function TInventoryResultItem.GetKeepContent: Boolean;
begin
  Result := FKeepContent;
end;

procedure TInventoryResultItem.SetKeepContent(const Value: Boolean);
begin
  FKeepContent := Value;
end;

function TInventoryResultItem.IsSetContent: Boolean;
begin
  Result := (FContent <> nil) and (FContent.Count > 0);
end;

function TInventoryResultItem.GetContentHash: string;
begin
  Result := FContentHash.ValueOrDefault;
end;

procedure TInventoryResultItem.SetContentHash(const Value: string);
begin
  FContentHash := Value;
end;

function TInventoryResultItem.IsSetContentHash: Boolean;
begin
  Result := FContentHash.HasValue;
end;

function TInventoryResultItem.GetSchemaVersion: string;
begin
  Result := FSchemaVersion.ValueOrDefault;
end;

procedure TInventoryResultItem.SetSchemaVersion(const Value: string);
begin
  FSchemaVersion := Value;
end;

function TInventoryResultItem.IsSetSchemaVersion: Boolean;
begin
  Result := FSchemaVersion.HasValue;
end;

function TInventoryResultItem.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TInventoryResultItem.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TInventoryResultItem.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
