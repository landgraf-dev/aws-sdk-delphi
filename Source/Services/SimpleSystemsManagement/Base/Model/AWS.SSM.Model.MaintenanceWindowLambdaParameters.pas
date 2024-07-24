unit AWS.SSM.Model.MaintenanceWindowLambdaParameters;

interface

uses
  AWS.Nullable, 
  System.Classes;

type
  TMaintenanceWindowLambdaParameters = class;
  
  IMaintenanceWindowLambdaParameters = interface
    function GetClientContext: string;
    procedure SetClientContext(const Value: string);
    function GetPayload: TBytesStream;
    procedure SetPayload(const Value: TBytesStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function GetQualifier: string;
    procedure SetQualifier(const Value: string);
    function Obj: TMaintenanceWindowLambdaParameters;
    function IsSetClientContext: Boolean;
    function IsSetPayload: Boolean;
    function IsSetQualifier: Boolean;
    property ClientContext: string read GetClientContext write SetClientContext;
    property Payload: TBytesStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
    property Qualifier: string read GetQualifier write SetQualifier;
  end;
  
  TMaintenanceWindowLambdaParameters = class
  strict private
    FClientContext: Nullable<string>;
    FPayload: TBytesStream;
    FKeepPayload: Boolean;
    FQualifier: Nullable<string>;
    function GetClientContext: string;
    procedure SetClientContext(const Value: string);
    function GetPayload: TBytesStream;
    procedure SetPayload(const Value: TBytesStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function GetQualifier: string;
    procedure SetQualifier(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowLambdaParameters;
  public
    destructor Destroy; override;
    function IsSetClientContext: Boolean;
    function IsSetPayload: Boolean;
    function IsSetQualifier: Boolean;
    property ClientContext: string read GetClientContext write SetClientContext;
    property Payload: TBytesStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
    property Qualifier: string read GetQualifier write SetQualifier;
  end;
  
implementation

{ TMaintenanceWindowLambdaParameters }

destructor TMaintenanceWindowLambdaParameters.Destroy;
begin
  Payload := nil;
  inherited;
end;

function TMaintenanceWindowLambdaParameters.Obj: TMaintenanceWindowLambdaParameters;
begin
  Result := Self;
end;

function TMaintenanceWindowLambdaParameters.GetClientContext: string;
begin
  Result := FClientContext.ValueOrDefault;
end;

procedure TMaintenanceWindowLambdaParameters.SetClientContext(const Value: string);
begin
  FClientContext := Value;
end;

function TMaintenanceWindowLambdaParameters.IsSetClientContext: Boolean;
begin
  Result := FClientContext.HasValue;
end;

function TMaintenanceWindowLambdaParameters.GetPayload: TBytesStream;
begin
  Result := FPayload;
end;

procedure TMaintenanceWindowLambdaParameters.SetPayload(const Value: TBytesStream);
begin
  if FPayload <> Value then
  begin
    if not KeepPayload then
      FPayload.Free;
    FPayload := Value;
  end;
end;

function TMaintenanceWindowLambdaParameters.GetKeepPayload: Boolean;
begin
  Result := FKeepPayload;
end;

procedure TMaintenanceWindowLambdaParameters.SetKeepPayload(const Value: Boolean);
begin
  FKeepPayload := Value;
end;

function TMaintenanceWindowLambdaParameters.IsSetPayload: Boolean;
begin
  Result := FPayload <> nil;
end;

function TMaintenanceWindowLambdaParameters.GetQualifier: string;
begin
  Result := FQualifier.ValueOrDefault;
end;

procedure TMaintenanceWindowLambdaParameters.SetQualifier(const Value: string);
begin
  FQualifier := Value;
end;

function TMaintenanceWindowLambdaParameters.IsSetQualifier: Boolean;
begin
  Result := FQualifier.HasValue;
end;

end.
