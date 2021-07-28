unit AWS.SES.Model.DescribeReceiptRuleSetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.SES.Model.ReceiptRule;

type
  TDescribeReceiptRuleSetResponse = class;
  
  IDescribeReceiptRuleSetResponse = interface
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
    function Obj: TDescribeReceiptRuleSetResponse;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
  end;
  
  TDescribeReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IDescribeReceiptRuleSetResponse)
  strict private
    FMetadata: TReceiptRuleSetMetadata;
    FRules: TObjectList<TReceiptRule>;
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
  strict protected
    function Obj: TDescribeReceiptRuleSetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
  end;
  
implementation

{ TDescribeReceiptRuleSetResponse }

constructor TDescribeReceiptRuleSetResponse.Create;
begin
  inherited;
  FRules := TObjectList<TReceiptRule>.Create;
end;

destructor TDescribeReceiptRuleSetResponse.Destroy;
begin
  FRules.Free;
  FMetadata.Free;
  inherited;
end;

function TDescribeReceiptRuleSetResponse.Obj: TDescribeReceiptRuleSetResponse;
begin
  Result := Self;
end;

function TDescribeReceiptRuleSetResponse.GetMetadata: TReceiptRuleSetMetadata;
begin
  Result := FMetadata;
end;

procedure TDescribeReceiptRuleSetResponse.SetMetadata(const Value: TReceiptRuleSetMetadata);
begin
  if FMetadata <> Value then
  begin
    FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TDescribeReceiptRuleSetResponse.IsSetMetadata: Boolean;
begin
  Result := FMetadata <> nil;
end;

function TDescribeReceiptRuleSetResponse.GetRules: TObjectList<TReceiptRule>;
begin
  Result := FRules;
end;

procedure TDescribeReceiptRuleSetResponse.SetRules(const Value: TObjectList<TReceiptRule>);
begin
  if FRules <> Value then
  begin
    FRules.Free;
    FRules := Value;
  end;
end;

function TDescribeReceiptRuleSetResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
