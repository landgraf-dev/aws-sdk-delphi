unit AWS.SSM.Model.Session;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.SessionManagerOutputUrl, 
  AWS.SSM.Enums;

type
  TSession = class;
  
  ISession = interface
    function GetDetails: string;
    procedure SetDetails(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetMaxSessionDuration: string;
    procedure SetMaxSessionDuration(const Value: string);
    function GetOutputUrl: TSessionManagerOutputUrl;
    procedure SetOutputUrl(const Value: TSessionManagerOutputUrl);
    function GetKeepOutputUrl: Boolean;
    procedure SetKeepOutputUrl(const Value: Boolean);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetReason: string;
    procedure SetReason(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetStatus: TSessionStatus;
    procedure SetStatus(const Value: TSessionStatus);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function Obj: TSession;
    function IsSetDetails: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetMaxSessionDuration: Boolean;
    function IsSetOutputUrl: Boolean;
    function IsSetOwner: Boolean;
    function IsSetReason: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTarget: Boolean;
    property Details: string read GetDetails write SetDetails;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property MaxSessionDuration: string read GetMaxSessionDuration write SetMaxSessionDuration;
    property OutputUrl: TSessionManagerOutputUrl read GetOutputUrl write SetOutputUrl;
    property KeepOutputUrl: Boolean read GetKeepOutputUrl write SetKeepOutputUrl;
    property Owner: string read GetOwner write SetOwner;
    property Reason: string read GetReason write SetReason;
    property SessionId: string read GetSessionId write SetSessionId;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property Status: TSessionStatus read GetStatus write SetStatus;
    property Target: string read GetTarget write SetTarget;
  end;
  
  TSession = class
  strict private
    FDetails: Nullable<string>;
    FDocumentName: Nullable<string>;
    FEndDate: Nullable<TDateTime>;
    FMaxSessionDuration: Nullable<string>;
    FOutputUrl: TSessionManagerOutputUrl;
    FKeepOutputUrl: Boolean;
    FOwner: Nullable<string>;
    FReason: Nullable<string>;
    FSessionId: Nullable<string>;
    FStartDate: Nullable<TDateTime>;
    FStatus: Nullable<TSessionStatus>;
    FTarget: Nullable<string>;
    function GetDetails: string;
    procedure SetDetails(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetMaxSessionDuration: string;
    procedure SetMaxSessionDuration(const Value: string);
    function GetOutputUrl: TSessionManagerOutputUrl;
    procedure SetOutputUrl(const Value: TSessionManagerOutputUrl);
    function GetKeepOutputUrl: Boolean;
    procedure SetKeepOutputUrl(const Value: Boolean);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetReason: string;
    procedure SetReason(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetStatus: TSessionStatus;
    procedure SetStatus(const Value: TSessionStatus);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
  strict protected
    function Obj: TSession;
  public
    destructor Destroy; override;
    function IsSetDetails: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetMaxSessionDuration: Boolean;
    function IsSetOutputUrl: Boolean;
    function IsSetOwner: Boolean;
    function IsSetReason: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTarget: Boolean;
    property Details: string read GetDetails write SetDetails;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property MaxSessionDuration: string read GetMaxSessionDuration write SetMaxSessionDuration;
    property OutputUrl: TSessionManagerOutputUrl read GetOutputUrl write SetOutputUrl;
    property KeepOutputUrl: Boolean read GetKeepOutputUrl write SetKeepOutputUrl;
    property Owner: string read GetOwner write SetOwner;
    property Reason: string read GetReason write SetReason;
    property SessionId: string read GetSessionId write SetSessionId;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property Status: TSessionStatus read GetStatus write SetStatus;
    property Target: string read GetTarget write SetTarget;
  end;
  
implementation

{ TSession }

destructor TSession.Destroy;
begin
  OutputUrl := nil;
  inherited;
end;

function TSession.Obj: TSession;
begin
  Result := Self;
end;

function TSession.GetDetails: string;
begin
  Result := FDetails.ValueOrDefault;
end;

procedure TSession.SetDetails(const Value: string);
begin
  FDetails := Value;
end;

function TSession.IsSetDetails: Boolean;
begin
  Result := FDetails.HasValue;
end;

function TSession.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TSession.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TSession.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TSession.GetEndDate: TDateTime;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TSession.SetEndDate(const Value: TDateTime);
begin
  FEndDate := Value;
end;

function TSession.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TSession.GetMaxSessionDuration: string;
begin
  Result := FMaxSessionDuration.ValueOrDefault;
end;

procedure TSession.SetMaxSessionDuration(const Value: string);
begin
  FMaxSessionDuration := Value;
end;

function TSession.IsSetMaxSessionDuration: Boolean;
begin
  Result := FMaxSessionDuration.HasValue;
end;

function TSession.GetOutputUrl: TSessionManagerOutputUrl;
begin
  Result := FOutputUrl;
end;

procedure TSession.SetOutputUrl(const Value: TSessionManagerOutputUrl);
begin
  if FOutputUrl <> Value then
  begin
    if not KeepOutputUrl then
      FOutputUrl.Free;
    FOutputUrl := Value;
  end;
end;

function TSession.GetKeepOutputUrl: Boolean;
begin
  Result := FKeepOutputUrl;
end;

procedure TSession.SetKeepOutputUrl(const Value: Boolean);
begin
  FKeepOutputUrl := Value;
end;

function TSession.IsSetOutputUrl: Boolean;
begin
  Result := FOutputUrl <> nil;
end;

function TSession.GetOwner: string;
begin
  Result := FOwner.ValueOrDefault;
end;

procedure TSession.SetOwner(const Value: string);
begin
  FOwner := Value;
end;

function TSession.IsSetOwner: Boolean;
begin
  Result := FOwner.HasValue;
end;

function TSession.GetReason: string;
begin
  Result := FReason.ValueOrDefault;
end;

procedure TSession.SetReason(const Value: string);
begin
  FReason := Value;
end;

function TSession.IsSetReason: Boolean;
begin
  Result := FReason.HasValue;
end;

function TSession.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TSession.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TSession.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TSession.GetStartDate: TDateTime;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TSession.SetStartDate(const Value: TDateTime);
begin
  FStartDate := Value;
end;

function TSession.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TSession.GetStatus: TSessionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TSession.SetStatus(const Value: TSessionStatus);
begin
  FStatus := Value;
end;

function TSession.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TSession.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TSession.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TSession.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

end.
