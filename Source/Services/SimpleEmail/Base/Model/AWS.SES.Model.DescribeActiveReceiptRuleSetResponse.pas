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
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
    function Obj: TDescribeActiveReceiptRuleSetResponse;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
  end;
  
  TDescribeActiveReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IDescribeActiveReceiptRuleSetResponse)
  strict private
    FMetadata: TReceiptRuleSetMetadata;
    FRules: TObjectList<TReceiptRule>;
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
  strict protected
    function Obj: TDescribeActiveReceiptRuleSetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
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
  FRules.Free;
  FMetadata.Free;
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
    FMetadata.Free;
    FMetadata := Value;
  end;
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
    FRules.Free;
    FRules := Value;
  end;
end;

function TDescribeActiveReceiptRuleSetResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
