unit AWS.SES.Model.ReceiptRule;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SES.Model.ReceiptAction, 
  AWS.SES.Enums;

type
  TReceiptRule = class;
  
  IReceiptRule = interface
    function GetActions: TObjectList<TReceiptAction>;
    procedure SetActions(const Value: TObjectList<TReceiptAction>);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRecipients: TList<string>;
    procedure SetRecipients(const Value: TList<string>);
    function GetScanEnabled: Boolean;
    procedure SetScanEnabled(const Value: Boolean);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
    function Obj: TReceiptRule;
    function IsSetActions: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetName: Boolean;
    function IsSetRecipients: Boolean;
    function IsSetScanEnabled: Boolean;
    function IsSetTlsPolicy: Boolean;
    property Actions: TObjectList<TReceiptAction> read GetActions write SetActions;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Name: string read GetName write SetName;
    property Recipients: TList<string> read GetRecipients write SetRecipients;
    property ScanEnabled: Boolean read GetScanEnabled write SetScanEnabled;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
  TReceiptRule = class
  strict private
    FActions: TObjectList<TReceiptAction>;
    FEnabled: Nullable<Boolean>;
    FName: Nullable<string>;
    FRecipients: TList<string>;
    FScanEnabled: Nullable<Boolean>;
    FTlsPolicy: Nullable<TTlsPolicy>;
    function GetActions: TObjectList<TReceiptAction>;
    procedure SetActions(const Value: TObjectList<TReceiptAction>);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRecipients: TList<string>;
    procedure SetRecipients(const Value: TList<string>);
    function GetScanEnabled: Boolean;
    procedure SetScanEnabled(const Value: Boolean);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
  strict protected
    function Obj: TReceiptRule;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActions: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetName: Boolean;
    function IsSetRecipients: Boolean;
    function IsSetScanEnabled: Boolean;
    function IsSetTlsPolicy: Boolean;
    property Actions: TObjectList<TReceiptAction> read GetActions write SetActions;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Name: string read GetName write SetName;
    property Recipients: TList<string> read GetRecipients write SetRecipients;
    property ScanEnabled: Boolean read GetScanEnabled write SetScanEnabled;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
implementation

{ TReceiptRule }

constructor TReceiptRule.Create;
begin
  inherited;
  FActions := TObjectList<TReceiptAction>.Create;
  FRecipients := TList<string>.Create;
end;

destructor TReceiptRule.Destroy;
begin
  FRecipients.Free;
  FActions.Free;
  inherited;
end;

function TReceiptRule.Obj: TReceiptRule;
begin
  Result := Self;
end;

function TReceiptRule.GetActions: TObjectList<TReceiptAction>;
begin
  Result := FActions;
end;

procedure TReceiptRule.SetActions(const Value: TObjectList<TReceiptAction>);
begin
  if FActions <> Value then
  begin
    FActions.Free;
    FActions := Value;
  end;
end;

function TReceiptRule.IsSetActions: Boolean;
begin
  Result := (FActions <> nil) and (FActions.Count > 0);
end;

function TReceiptRule.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TReceiptRule.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TReceiptRule.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TReceiptRule.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TReceiptRule.SetName(const Value: string);
begin
  FName := Value;
end;

function TReceiptRule.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TReceiptRule.GetRecipients: TList<string>;
begin
  Result := FRecipients;
end;

procedure TReceiptRule.SetRecipients(const Value: TList<string>);
begin
  if FRecipients <> Value then
  begin
    FRecipients.Free;
    FRecipients := Value;
  end;
end;

function TReceiptRule.IsSetRecipients: Boolean;
begin
  Result := (FRecipients <> nil) and (FRecipients.Count > 0);
end;

function TReceiptRule.GetScanEnabled: Boolean;
begin
  Result := FScanEnabled.ValueOrDefault;
end;

procedure TReceiptRule.SetScanEnabled(const Value: Boolean);
begin
  FScanEnabled := Value;
end;

function TReceiptRule.IsSetScanEnabled: Boolean;
begin
  Result := FScanEnabled.HasValue;
end;

function TReceiptRule.GetTlsPolicy: TTlsPolicy;
begin
  Result := FTlsPolicy.ValueOrDefault;
end;

procedure TReceiptRule.SetTlsPolicy(const Value: TTlsPolicy);
begin
  FTlsPolicy := Value;
end;

function TReceiptRule.IsSetTlsPolicy: Boolean;
begin
  Result := FTlsPolicy.HasValue;
end;

end.
