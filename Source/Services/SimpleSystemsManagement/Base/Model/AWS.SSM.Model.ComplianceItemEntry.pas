unit AWS.SSM.Model.ComplianceItemEntry;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TComplianceItemEntry = class;
  
  IComplianceItemEntry = interface
    function GetDetails: TDictionary<string, string>;
    procedure SetDetails(const Value: TDictionary<string, string>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetSeverity: TComplianceSeverity;
    procedure SetSeverity(const Value: TComplianceSeverity);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TComplianceItemEntry;
    function IsSetDetails: Boolean;
    function IsSetId: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property Details: TDictionary<string, string> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property Id: string read GetId write SetId;
    property Severity: TComplianceSeverity read GetSeverity write SetSeverity;
    property Status: TComplianceStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TComplianceItemEntry = class
  strict private
    FDetails: TDictionary<string, string>;
    FKeepDetails: Boolean;
    FId: Nullable<string>;
    FSeverity: Nullable<TComplianceSeverity>;
    FStatus: Nullable<TComplianceStatus>;
    FTitle: Nullable<string>;
    function GetDetails: TDictionary<string, string>;
    procedure SetDetails(const Value: TDictionary<string, string>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetSeverity: TComplianceSeverity;
    procedure SetSeverity(const Value: TComplianceSeverity);
    function GetStatus: TComplianceStatus;
    procedure SetStatus(const Value: TComplianceStatus);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TComplianceItemEntry;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDetails: Boolean;
    function IsSetId: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTitle: Boolean;
    property Details: TDictionary<string, string> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property Id: string read GetId write SetId;
    property Severity: TComplianceSeverity read GetSeverity write SetSeverity;
    property Status: TComplianceStatus read GetStatus write SetStatus;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TComplianceItemEntry }

constructor TComplianceItemEntry.Create;
begin
  inherited;
  FDetails := TDictionary<string, string>.Create;
end;

destructor TComplianceItemEntry.Destroy;
begin
  Details := nil;
  inherited;
end;

function TComplianceItemEntry.Obj: TComplianceItemEntry;
begin
  Result := Self;
end;

function TComplianceItemEntry.GetDetails: TDictionary<string, string>;
begin
  Result := FDetails;
end;

procedure TComplianceItemEntry.SetDetails(const Value: TDictionary<string, string>);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TComplianceItemEntry.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TComplianceItemEntry.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TComplianceItemEntry.IsSetDetails: Boolean;
begin
  Result := (FDetails <> nil) and (FDetails.Count > 0);
end;

function TComplianceItemEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TComplianceItemEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TComplianceItemEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TComplianceItemEntry.GetSeverity: TComplianceSeverity;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TComplianceItemEntry.SetSeverity(const Value: TComplianceSeverity);
begin
  FSeverity := Value;
end;

function TComplianceItemEntry.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TComplianceItemEntry.GetStatus: TComplianceStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TComplianceItemEntry.SetStatus(const Value: TComplianceStatus);
begin
  FStatus := Value;
end;

function TComplianceItemEntry.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TComplianceItemEntry.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TComplianceItemEntry.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TComplianceItemEntry.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.
