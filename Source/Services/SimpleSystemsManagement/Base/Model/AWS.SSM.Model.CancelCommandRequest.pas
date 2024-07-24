unit AWS.SSM.Model.CancelCommandRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TCancelCommandRequest = class;
  
  ICancelCommandRequest = interface
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
    function Obj: TCancelCommandRequest;
    function IsSetCommandId: Boolean;
    function IsSetInstanceIds: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
  end;
  
  TCancelCommandRequest = class(TAmazonSimpleSystemsManagementRequest, ICancelCommandRequest)
  strict private
    FCommandId: Nullable<string>;
    FInstanceIds: TList<string>;
    FKeepInstanceIds: Boolean;
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
  strict protected
    function Obj: TCancelCommandRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ACommandId: string); overload;
    constructor Create(const ACommandId: string; const AInstanceIds: TList<string>); overload;
    function IsSetCommandId: Boolean;
    function IsSetInstanceIds: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
  end;
  
implementation

{ TCancelCommandRequest }

constructor TCancelCommandRequest.Create;
begin
  inherited;
  FInstanceIds := TList<string>.Create;
end;

destructor TCancelCommandRequest.Destroy;
begin
  InstanceIds := nil;
  inherited;
end;

function TCancelCommandRequest.Obj: TCancelCommandRequest;
begin
  Result := Self;
end;

constructor TCancelCommandRequest.Create(const ACommandId: string);
begin
  Create;
  CommandId := ACommandId;
end;

constructor TCancelCommandRequest.Create(const ACommandId: string; const AInstanceIds: TList<string>);
begin
  Create;
  CommandId := ACommandId;
  InstanceIds := AInstanceIds;
end;

function TCancelCommandRequest.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TCancelCommandRequest.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TCancelCommandRequest.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TCancelCommandRequest.GetInstanceIds: TList<string>;
begin
  Result := FInstanceIds;
end;

procedure TCancelCommandRequest.SetInstanceIds(const Value: TList<string>);
begin
  if FInstanceIds <> Value then
  begin
    if not KeepInstanceIds then
      FInstanceIds.Free;
    FInstanceIds := Value;
  end;
end;

function TCancelCommandRequest.GetKeepInstanceIds: Boolean;
begin
  Result := FKeepInstanceIds;
end;

procedure TCancelCommandRequest.SetKeepInstanceIds(const Value: Boolean);
begin
  FKeepInstanceIds := Value;
end;

function TCancelCommandRequest.IsSetInstanceIds: Boolean;
begin
  Result := (FInstanceIds <> nil) and (FInstanceIds.Count > 0);
end;

end.
