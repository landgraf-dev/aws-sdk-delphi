unit AWS.SSM.Model.SendAutomationSignalRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TSendAutomationSignalRequest = class;
  
  ISendAutomationSignalRequest = interface
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetPayload: TObjectDictionary<string, TList<string>>;
    procedure SetPayload(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function GetSignalType: TSignalType;
    procedure SetSignalType(const Value: TSignalType);
    function Obj: TSendAutomationSignalRequest;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetPayload: Boolean;
    function IsSetSignalType: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property Payload: TObjectDictionary<string, TList<string>> read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
    property SignalType: TSignalType read GetSignalType write SetSignalType;
  end;
  
  TSendAutomationSignalRequest = class(TAmazonSimpleSystemsManagementRequest, ISendAutomationSignalRequest)
  strict private
    FAutomationExecutionId: Nullable<string>;
    FPayload: TObjectDictionary<string, TList<string>>;
    FKeepPayload: Boolean;
    FSignalType: Nullable<TSignalType>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetPayload: TObjectDictionary<string, TList<string>>;
    procedure SetPayload(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function GetSignalType: TSignalType;
    procedure SetSignalType(const Value: TSignalType);
  strict protected
    function Obj: TSendAutomationSignalRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetPayload: Boolean;
    function IsSetSignalType: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property Payload: TObjectDictionary<string, TList<string>> read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
    property SignalType: TSignalType read GetSignalType write SetSignalType;
  end;
  
implementation

{ TSendAutomationSignalRequest }

constructor TSendAutomationSignalRequest.Create;
begin
  inherited;
  FPayload := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;

destructor TSendAutomationSignalRequest.Destroy;
begin
  Payload := nil;
  inherited;
end;

function TSendAutomationSignalRequest.Obj: TSendAutomationSignalRequest;
begin
  Result := Self;
end;

function TSendAutomationSignalRequest.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TSendAutomationSignalRequest.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TSendAutomationSignalRequest.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

function TSendAutomationSignalRequest.GetPayload: TObjectDictionary<string, TList<string>>;
begin
  Result := FPayload;
end;

procedure TSendAutomationSignalRequest.SetPayload(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FPayload <> Value then
  begin
    if not KeepPayload then
      FPayload.Free;
    FPayload := Value;
  end;
end;

function TSendAutomationSignalRequest.GetKeepPayload: Boolean;
begin
  Result := FKeepPayload;
end;

procedure TSendAutomationSignalRequest.SetKeepPayload(const Value: Boolean);
begin
  FKeepPayload := Value;
end;

function TSendAutomationSignalRequest.IsSetPayload: Boolean;
begin
  Result := (FPayload <> nil) and (FPayload.Count > 0);
end;

function TSendAutomationSignalRequest.GetSignalType: TSignalType;
begin
  Result := FSignalType.ValueOrDefault;
end;

procedure TSendAutomationSignalRequest.SetSignalType(const Value: TSignalType);
begin
  FSignalType := Value;
end;

function TSendAutomationSignalRequest.IsSetSignalType: Boolean;
begin
  Result := FSignalType.HasValue;
end;

end.
