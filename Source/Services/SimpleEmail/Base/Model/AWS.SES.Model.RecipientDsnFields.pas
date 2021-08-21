unit AWS.SES.Model.RecipientDsnFields;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  System.DateUtils, 
  AWS.SES.Enums, 
  AWS.SES.Model.ExtensionField;

type
  TRecipientDsnFields = class;
  
  IRecipientDsnFields = interface
    function GetAction: TDsnAction;
    procedure SetAction(const Value: TDsnAction);
    function GetDiagnosticCode: string;
    procedure SetDiagnosticCode(const Value: string);
    function GetExtensionFields: TObjectList<TExtensionField>;
    procedure SetExtensionFields(const Value: TObjectList<TExtensionField>);
    function GetKeepExtensionFields: Boolean;
    procedure SetKeepExtensionFields(const Value: Boolean);
    function GetFinalRecipient: string;
    procedure SetFinalRecipient(const Value: string);
    function GetLastAttemptDateUtc: TDateTime;
    procedure SetLastAttemptDateUtc(const Value: TDateTime);
    function GetRemoteMta: string;
    procedure SetRemoteMta(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function GetLastAttemptDate: TDateTime;
    procedure SetLastAttemptDate(const Value: TDateTime);
    function Obj: TRecipientDsnFields;
    function IsSetAction: Boolean;
    function IsSetDiagnosticCode: Boolean;
    function IsSetExtensionFields: Boolean;
    function IsSetFinalRecipient: Boolean;
    function IsSetLastAttemptDateUtc: Boolean;
    function IsSetRemoteMta: Boolean;
    function IsSetStatus: Boolean;
    property Action: TDsnAction read GetAction write SetAction;
    property DiagnosticCode: string read GetDiagnosticCode write SetDiagnosticCode;
    property ExtensionFields: TObjectList<TExtensionField> read GetExtensionFields write SetExtensionFields;
    property KeepExtensionFields: Boolean read GetKeepExtensionFields write SetKeepExtensionFields;
    property FinalRecipient: string read GetFinalRecipient write SetFinalRecipient;
    property LastAttemptDateUtc: TDateTime read GetLastAttemptDateUtc write SetLastAttemptDateUtc;
    property RemoteMta: string read GetRemoteMta write SetRemoteMta;
    property Status: string read GetStatus write SetStatus;
    property LastAttemptDate: TDateTime read GetLastAttemptDate write SetLastAttemptDate;
  end;
  
  TRecipientDsnFields = class
  strict private
    FAction: Nullable<TDsnAction>;
    FDiagnosticCode: Nullable<string>;
    FExtensionFields: TObjectList<TExtensionField>;
    FKeepExtensionFields: Boolean;
    FFinalRecipient: Nullable<string>;
    FLastAttemptDateUtc: Nullable<TDateTime>;
    FRemoteMta: Nullable<string>;
    FStatus: Nullable<string>;
    FLastAttemptDate: Nullable<TDateTime>;
    function GetAction: TDsnAction;
    procedure SetAction(const Value: TDsnAction);
    function GetDiagnosticCode: string;
    procedure SetDiagnosticCode(const Value: string);
    function GetExtensionFields: TObjectList<TExtensionField>;
    procedure SetExtensionFields(const Value: TObjectList<TExtensionField>);
    function GetKeepExtensionFields: Boolean;
    procedure SetKeepExtensionFields(const Value: Boolean);
    function GetFinalRecipient: string;
    procedure SetFinalRecipient(const Value: string);
    function GetLastAttemptDateUtc: TDateTime;
    procedure SetLastAttemptDateUtc(const Value: TDateTime);
    function GetRemoteMta: string;
    procedure SetRemoteMta(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function GetLastAttemptDate: TDateTime;
    procedure SetLastAttemptDate(const Value: TDateTime);
  strict protected
    function Obj: TRecipientDsnFields;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAction: Boolean;
    function IsSetDiagnosticCode: Boolean;
    function IsSetExtensionFields: Boolean;
    function IsSetFinalRecipient: Boolean;
    function IsSetLastAttemptDateUtc: Boolean;
    function IsSetRemoteMta: Boolean;
    function IsSetStatus: Boolean;
    property Action: TDsnAction read GetAction write SetAction;
    property DiagnosticCode: string read GetDiagnosticCode write SetDiagnosticCode;
    property ExtensionFields: TObjectList<TExtensionField> read GetExtensionFields write SetExtensionFields;
    property KeepExtensionFields: Boolean read GetKeepExtensionFields write SetKeepExtensionFields;
    property FinalRecipient: string read GetFinalRecipient write SetFinalRecipient;
    property LastAttemptDateUtc: TDateTime read GetLastAttemptDateUtc write SetLastAttemptDateUtc;
    property RemoteMta: string read GetRemoteMta write SetRemoteMta;
    property Status: string read GetStatus write SetStatus;
    property LastAttemptDate: TDateTime read GetLastAttemptDate write SetLastAttemptDate;
  end;
  
implementation

{ TRecipientDsnFields }

constructor TRecipientDsnFields.Create;
begin
  inherited;
  FExtensionFields := TObjectList<TExtensionField>.Create;
end;

destructor TRecipientDsnFields.Destroy;
begin
  ExtensionFields := nil;
  inherited;
end;

function TRecipientDsnFields.Obj: TRecipientDsnFields;
begin
  Result := Self;
end;

function TRecipientDsnFields.GetAction: TDsnAction;
begin
  Result := FAction.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetAction(const Value: TDsnAction);
begin
  FAction := Value;
end;

function TRecipientDsnFields.IsSetAction: Boolean;
begin
  Result := FAction.HasValue;
end;

function TRecipientDsnFields.GetDiagnosticCode: string;
begin
  Result := FDiagnosticCode.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetDiagnosticCode(const Value: string);
begin
  FDiagnosticCode := Value;
end;

function TRecipientDsnFields.IsSetDiagnosticCode: Boolean;
begin
  Result := FDiagnosticCode.HasValue;
end;

function TRecipientDsnFields.GetExtensionFields: TObjectList<TExtensionField>;
begin
  Result := FExtensionFields;
end;

procedure TRecipientDsnFields.SetExtensionFields(const Value: TObjectList<TExtensionField>);
begin
  if FExtensionFields <> Value then
  begin
    if not KeepExtensionFields then
      FExtensionFields.Free;
    FExtensionFields := Value;
  end;
end;

function TRecipientDsnFields.GetKeepExtensionFields: Boolean;
begin
  Result := FKeepExtensionFields;
end;

procedure TRecipientDsnFields.SetKeepExtensionFields(const Value: Boolean);
begin
  FKeepExtensionFields := Value;
end;

function TRecipientDsnFields.IsSetExtensionFields: Boolean;
begin
  Result := (FExtensionFields <> nil) and (FExtensionFields.Count > 0);
end;

function TRecipientDsnFields.GetFinalRecipient: string;
begin
  Result := FFinalRecipient.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetFinalRecipient(const Value: string);
begin
  FFinalRecipient := Value;
end;

function TRecipientDsnFields.IsSetFinalRecipient: Boolean;
begin
  Result := FFinalRecipient.HasValue;
end;

function TRecipientDsnFields.GetLastAttemptDateUtc: TDateTime;
begin
  Result := FLastAttemptDateUtc.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetLastAttemptDateUtc(const Value: TDateTime);
begin
  FLastAttemptDateUtc := Value;
  FLastAttemptDate := TTimeZone.Local.ToLocalTime(Value);
end;

function TRecipientDsnFields.IsSetLastAttemptDateUtc: Boolean;
begin
  Result := FLastAttemptDateUtc.HasValue;
end;

function TRecipientDsnFields.GetRemoteMta: string;
begin
  Result := FRemoteMta.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetRemoteMta(const Value: string);
begin
  FRemoteMta := Value;
end;

function TRecipientDsnFields.IsSetRemoteMta: Boolean;
begin
  Result := FRemoteMta.HasValue;
end;

function TRecipientDsnFields.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TRecipientDsnFields.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TRecipientDsnFields.GetLastAttemptDate: TDateTime;
begin
  Result := FLastAttemptDate.ValueOrDefault;
end;

procedure TRecipientDsnFields.SetLastAttemptDate(const Value: TDateTime);
begin
  FLastAttemptDate := Value;
  FLastAttemptDateUtc := TTimeZone.Local.ToUniversalTime(Value);
end;

end.
