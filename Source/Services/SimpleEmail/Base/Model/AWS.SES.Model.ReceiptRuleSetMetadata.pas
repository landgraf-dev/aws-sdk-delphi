unit AWS.SES.Model.ReceiptRuleSetMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TReceiptRuleSetMetadata = class;
  
  IReceiptRuleSetMetadata = interface
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TReceiptRuleSetMetadata;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Name: string read GetName write SetName;
  end;
  
  TReceiptRuleSetMetadata = class
  strict private
    FCreatedTimestamp: Nullable<TDateTime>;
    FName: Nullable<string>;
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TReceiptRuleSetMetadata;
  public
    function IsSetCreatedTimestamp: Boolean;
    function IsSetName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TReceiptRuleSetMetadata }

function TReceiptRuleSetMetadata.Obj: TReceiptRuleSetMetadata;
begin
  Result := Self;
end;

function TReceiptRuleSetMetadata.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TReceiptRuleSetMetadata.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TReceiptRuleSetMetadata.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TReceiptRuleSetMetadata.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TReceiptRuleSetMetadata.SetName(const Value: string);
begin
  FName := Value;
end;

function TReceiptRuleSetMetadata.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
