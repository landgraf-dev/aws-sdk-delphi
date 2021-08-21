unit AWS.SES.Model.DescribeActiveReceiptRuleSetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.SES.Model.ReceiptRule;

type
  TDescribeActiveReceiptRuleSetResponse = class;
  
  IDescribeActiveReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TDescribeActiveReceiptRuleSetResponse;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TDescribeActiveReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IDescribeActiveReceiptRuleSetResponse)
  strict private
    FMetadata: TReceiptRuleSetMetadata;
    FKeepMetadata: Boolean;
    FRules: TObjectList<TReceiptRule>;
    FKeepRules: Boolean;
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TDescribeActiveReceiptRuleSetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TDescribeActiveReceiptRuleSetResponse }

constructor TDescribeActiveReceiptRuleSetResponse.Create;
begin
  inherited;
  FRules := TObjectList<TReceiptRule>.Create;
end;

destructor TDescribeActiveReceiptRuleSetResponse.Destroy;
begin
  Rules := nil;
  Metadata := nil;
  inherited;
end;

function TDescribeActiveReceiptRuleSetResponse.Obj: TDescribeActiveReceiptRuleSetResponse;
begin
  Result := Self;
end;

function TDescribeActiveReceiptRuleSetResponse.GetMetadata: TReceiptRuleSetMetadata;
begin
  Result := FMetadata;
end;

procedure TDescribeActiveReceiptRuleSetResponse.SetMetadata(const Value: TReceiptRuleSetMetadata);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TDescribeActiveReceiptRuleSetResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TDescribeActiveReceiptRuleSetResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TDescribeActiveReceiptRuleSetResponse.IsSetMetadata: Boolean;
begin
  Result := FMetadata <> nil;
end;

function TDescribeActiveReceiptRuleSetResponse.GetRules: TObjectList<TReceiptRule>;
begin
  Result := FRules;
end;

procedure TDescribeActiveReceiptRuleSetResponse.SetRules(const Value: TObjectList<TReceiptRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TDescribeActiveReceiptRuleSetResponse.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TDescribeActiveReceiptRuleSetResponse.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TDescribeActiveReceiptRuleSetResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
