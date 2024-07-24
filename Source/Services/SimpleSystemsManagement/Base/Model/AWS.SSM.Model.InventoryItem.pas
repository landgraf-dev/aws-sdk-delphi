unit AWS.SSM.Model.InventoryItem;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TInventoryItem = class;
  
  IInventoryItem = interface
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetContent: TObjectList<TDictionary<string, string>>;
    procedure SetContent(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetContentHash: string;
    procedure SetContentHash(const Value: string);
    function GetContext: TDictionary<string, string>;
    procedure SetContext(const Value: TDictionary<string, string>);
    function GetKeepContext: Boolean;
    procedure SetKeepContext(const Value: Boolean);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TInventoryItem;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    function IsSetContentHash: Boolean;
    function IsSetContext: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property ContentHash: string read GetContentHash write SetContentHash;
    property Context: TDictionary<string, string> read GetContext write SetContext;
    property KeepContext: Boolean read GetKeepContext write SetKeepContext;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TInventoryItem = class
  strict private
    FCaptureTime: Nullable<string>;
    FContent: TObjectList<TDictionary<string, string>>;
    FKeepContent: Boolean;
    FContentHash: Nullable<string>;
    FContext: TDictionary<string, string>;
    FKeepContext: Boolean;
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
    function GetContext: TDictionary<string, string>;
    procedure SetContext(const Value: TDictionary<string, string>);
    function GetKeepContext: Boolean;
    procedure SetKeepContext(const Value: Boolean);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TInventoryItem;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    function IsSetContentHash: Boolean;
    function IsSetContext: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property ContentHash: string read GetContentHash write SetContentHash;
    property Context: TDictionary<string, string> read GetContext write SetContext;
    property KeepContext: Boolean read GetKeepContext write SetKeepContext;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TInventoryItem }

constructor TInventoryItem.Create;
begin
  inherited;
  FContent := TObjectList<TDictionary<string, string>>.Create;
  FContext := TDictionary<string, string>.Create;
end;

destructor TInventoryItem.Destroy;
begin
  Context := nil;
  Content := nil;
  inherited;
end;

function TInventoryItem.Obj: TInventoryItem;
begin
  Result := Self;
end;

function TInventoryItem.GetCaptureTime: string;
begin
  Result := FCaptureTime.ValueOrDefault;
end;

procedure TInventoryItem.SetCaptureTime(const Value: string);
begin
  FCaptureTime := Value;
end;

function TInventoryItem.IsSetCaptureTime: Boolean;
begin
  Result := FCaptureTime.HasValue;
end;

function TInventoryItem.GetContent: TObjectList<TDictionary<string, string>>;
begin
  Result := FContent;
end;

procedure TInventoryItem.SetContent(const Value: TObjectList<TDictionary<string, string>>);
begin
  if FContent <> Value then
  begin
    if not KeepContent then
      FContent.Free;
    FContent := Value;
  end;
end;

function TInventoryItem.GetKeepContent: Boolean;
begin
  Result := FKeepContent;
end;

procedure TInventoryItem.SetKeepContent(const Value: Boolean);
begin
  FKeepContent := Value;
end;

function TInventoryItem.IsSetContent: Boolean;
begin
  Result := (FContent <> nil) and (FContent.Count > 0);
end;

function TInventoryItem.GetContentHash: string;
begin
  Result := FContentHash.ValueOrDefault;
end;

procedure TInventoryItem.SetContentHash(const Value: string);
begin
  FContentHash := Value;
end;

function TInventoryItem.IsSetContentHash: Boolean;
begin
  Result := FContentHash.HasValue;
end;

function TInventoryItem.GetContext: TDictionary<string, string>;
begin
  Result := FContext;
end;

procedure TInventoryItem.SetContext(const Value: TDictionary<string, string>);
begin
  if FContext <> Value then
  begin
    if not KeepContext then
      FContext.Free;
    FContext := Value;
  end;
end;

function TInventoryItem.GetKeepContext: Boolean;
begin
  Result := FKeepContext;
end;

procedure TInventoryItem.SetKeepContext(const Value: Boolean);
begin
  FKeepContext := Value;
end;

function TInventoryItem.IsSetContext: Boolean;
begin
  Result := (FContext <> nil) and (FContext.Count > 0);
end;

function TInventoryItem.GetSchemaVersion: string;
begin
  Result := FSchemaVersion.ValueOrDefault;
end;

procedure TInventoryItem.SetSchemaVersion(const Value: string);
begin
  FSchemaVersion := Value;
end;

function TInventoryItem.IsSetSchemaVersion: Boolean;
begin
  Result := FSchemaVersion.HasValue;
end;

function TInventoryItem.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TInventoryItem.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TInventoryItem.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
