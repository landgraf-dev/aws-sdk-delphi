unit AWS.SSM.Model.ListInventoryEntriesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TListInventoryEntriesResponse = class;
  
  IListInventoryEntriesResponse = interface(IAmazonWebServiceResponse)
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetEntries: TObjectList<TDictionary<string, string>>;
    procedure SetEntries(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TListInventoryEntriesResponse;
    function IsSetCaptureTime: Boolean;
    function IsSetEntries: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Entries: TObjectList<TDictionary<string, string>> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property NextToken: string read GetNextToken write SetNextToken;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TListInventoryEntriesResponse = class(TAmazonWebServiceResponse, IListInventoryEntriesResponse)
  strict private
    FCaptureTime: Nullable<string>;
    FEntries: TObjectList<TDictionary<string, string>>;
    FKeepEntries: Boolean;
    FInstanceId: Nullable<string>;
    FNextToken: Nullable<string>;
    FSchemaVersion: Nullable<string>;
    FTypeName: Nullable<string>;
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetEntries: TObjectList<TDictionary<string, string>>;
    procedure SetEntries(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSchemaVersion: string;
    procedure SetSchemaVersion(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TListInventoryEntriesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCaptureTime: Boolean;
    function IsSetEntries: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSchemaVersion: Boolean;
    function IsSetTypeName: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Entries: TObjectList<TDictionary<string, string>> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property NextToken: string read GetNextToken write SetNextToken;
    property SchemaVersion: string read GetSchemaVersion write SetSchemaVersion;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TListInventoryEntriesResponse }

constructor TListInventoryEntriesResponse.Create;
begin
  inherited;
  FEntries := TObjectList<TDictionary<string, string>>.Create;
end;

destructor TListInventoryEntriesResponse.Destroy;
begin
  Entries := nil;
  inherited;
end;

function TListInventoryEntriesResponse.Obj: TListInventoryEntriesResponse;
begin
  Result := Self;
end;

function TListInventoryEntriesResponse.GetCaptureTime: string;
begin
  Result := FCaptureTime.ValueOrDefault;
end;

procedure TListInventoryEntriesResponse.SetCaptureTime(const Value: string);
begin
  FCaptureTime := Value;
end;

function TListInventoryEntriesResponse.IsSetCaptureTime: Boolean;
begin
  Result := FCaptureTime.HasValue;
end;

function TListInventoryEntriesResponse.GetEntries: TObjectList<TDictionary<string, string>>;
begin
  Result := FEntries;
end;

procedure TListInventoryEntriesResponse.SetEntries(const Value: TObjectList<TDictionary<string, string>>);
begin
  if FEntries <> Value then
  begin
    if not KeepEntries then
      FEntries.Free;
    FEntries := Value;
  end;
end;

function TListInventoryEntriesResponse.GetKeepEntries: Boolean;
begin
  Result := FKeepEntries;
end;

procedure TListInventoryEntriesResponse.SetKeepEntries(const Value: Boolean);
begin
  FKeepEntries := Value;
end;

function TListInventoryEntriesResponse.IsSetEntries: Boolean;
begin
  Result := (FEntries <> nil) and (FEntries.Count > 0);
end;

function TListInventoryEntriesResponse.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TListInventoryEntriesResponse.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TListInventoryEntriesResponse.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TListInventoryEntriesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListInventoryEntriesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListInventoryEntriesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListInventoryEntriesResponse.GetSchemaVersion: string;
begin
  Result := FSchemaVersion.ValueOrDefault;
end;

procedure TListInventoryEntriesResponse.SetSchemaVersion(const Value: string);
begin
  FSchemaVersion := Value;
end;

function TListInventoryEntriesResponse.IsSetSchemaVersion: Boolean;
begin
  Result := FSchemaVersion.HasValue;
end;

function TListInventoryEntriesResponse.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TListInventoryEntriesResponse.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TListInventoryEntriesResponse.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
