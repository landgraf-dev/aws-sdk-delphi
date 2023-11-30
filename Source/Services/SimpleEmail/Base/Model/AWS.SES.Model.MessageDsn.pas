unit AWS.SES.Model.MessageDsn;

interface

uses
  System.Generics.Collections, 
  System.DateUtils, 
  AWS.Nullable, 
  AWS.SES.Model.ExtensionField;

type
  TMessageDsn = class;
  
  IMessageDsn = interface
    function GetArrivalDateUtc: TDateTime;
    procedure SetArrivalDateUtc(const Value: TDateTime);
    function GetExtensionFields: TObjectList<TExtensionField>;
    procedure SetExtensionFields(const Value: TObjectList<TExtensionField>);
    function GetKeepExtensionFields: Boolean;
    procedure SetKeepExtensionFields(const Value: Boolean);
    function GetReportingMta: string;
    procedure SetReportingMta(const Value: string);
    function GetArrivalDate: TDateTime;
    procedure SetArrivalDate(const Value: TDateTime);
    function Obj: TMessageDsn;
    function IsSetArrivalDateUtc: Boolean;
    function IsSetExtensionFields: Boolean;
    function IsSetReportingMta: Boolean;
    property ArrivalDateUtc: TDateTime read GetArrivalDateUtc write SetArrivalDateUtc;
    property ExtensionFields: TObjectList<TExtensionField> read GetExtensionFields write SetExtensionFields;
    property KeepExtensionFields: Boolean read GetKeepExtensionFields write SetKeepExtensionFields;
    property ReportingMta: string read GetReportingMta write SetReportingMta;
    property ArrivalDate: TDateTime read GetArrivalDate write SetArrivalDate;
  end;
  
  TMessageDsn = class
  strict private
    FArrivalDateUtc: Nullable<TDateTime>;
    FExtensionFields: TObjectList<TExtensionField>;
    FKeepExtensionFields: Boolean;
    FReportingMta: Nullable<string>;
    FArrivalDate: Nullable<TDateTime>;
    function GetArrivalDateUtc: TDateTime;
    procedure SetArrivalDateUtc(const Value: TDateTime);
    function GetExtensionFields: TObjectList<TExtensionField>;
    procedure SetExtensionFields(const Value: TObjectList<TExtensionField>);
    function GetKeepExtensionFields: Boolean;
    procedure SetKeepExtensionFields(const Value: Boolean);
    function GetReportingMta: string;
    procedure SetReportingMta(const Value: string);
    function GetArrivalDate: TDateTime;
    procedure SetArrivalDate(const Value: TDateTime);
  strict protected
    function Obj: TMessageDsn;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetArrivalDateUtc: Boolean;
    function IsSetExtensionFields: Boolean;
    function IsSetReportingMta: Boolean;
    property ArrivalDateUtc: TDateTime read GetArrivalDateUtc write SetArrivalDateUtc;
    property ExtensionFields: TObjectList<TExtensionField> read GetExtensionFields write SetExtensionFields;
    property KeepExtensionFields: Boolean read GetKeepExtensionFields write SetKeepExtensionFields;
    property ReportingMta: string read GetReportingMta write SetReportingMta;
    property ArrivalDate: TDateTime read GetArrivalDate write SetArrivalDate;
  end;
  
implementation

{ TMessageDsn }

constructor TMessageDsn.Create;
begin
  inherited;
  FExtensionFields := TObjectList<TExtensionField>.Create;
end;

destructor TMessageDsn.Destroy;
begin
  ExtensionFields := nil;
  inherited;
end;

function TMessageDsn.Obj: TMessageDsn;
begin
  Result := Self;
end;

function TMessageDsn.GetArrivalDateUtc: TDateTime;
begin
  Result := FArrivalDateUtc.ValueOrDefault;
end;

procedure TMessageDsn.SetArrivalDateUtc(const Value: TDateTime);
begin
  FArrivalDateUtc := Value;
  FArrivalDate := TTimeZone.Local.ToLocalTime(Value);
end;

function TMessageDsn.IsSetArrivalDateUtc: Boolean;
begin
  Result := FArrivalDateUtc.HasValue;
end;

function TMessageDsn.GetExtensionFields: TObjectList<TExtensionField>;
begin
  Result := FExtensionFields;
end;

procedure TMessageDsn.SetExtensionFields(const Value: TObjectList<TExtensionField>);
begin
  if FExtensionFields <> Value then
  begin
    if not KeepExtensionFields then
      FExtensionFields.Free;
    FExtensionFields := Value;
  end;
end;

function TMessageDsn.GetKeepExtensionFields: Boolean;
begin
  Result := FKeepExtensionFields;
end;

procedure TMessageDsn.SetKeepExtensionFields(const Value: Boolean);
begin
  FKeepExtensionFields := Value;
end;

function TMessageDsn.IsSetExtensionFields: Boolean;
begin
  Result := (FExtensionFields <> nil) and (FExtensionFields.Count > 0);
end;

function TMessageDsn.GetReportingMta: string;
begin
  Result := FReportingMta.ValueOrDefault;
end;

procedure TMessageDsn.SetReportingMta(const Value: string);
begin
  FReportingMta := Value;
end;

function TMessageDsn.IsSetReportingMta: Boolean;
begin
  Result := FReportingMta.HasValue;
end;

function TMessageDsn.GetArrivalDate: TDateTime;
begin
  Result := FArrivalDate.ValueOrDefault;
end;

procedure TMessageDsn.SetArrivalDate(const Value: TDateTime);
begin
  FArrivalDate := Value;
  FArrivalDateUtc := TTimeZone.Local.ToUniversalTime(Value);
end;

end.
