unit AWS.SES.Model.DescribeReceiptRuleSetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.SES.Model.ReceiptRule;

type
  TDescribeReceiptRuleSetResponse = class;
  
  IDescribeReceiptRuleSetResponse = interface(IAmazonWebServiceResponse)
    function GetMetadata: TReceiptRuleSetMetadata;
    procedure SetMetadata(const Value: TReceiptRuleSetMetadata);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetRules: TObjectList<TReceiptRule>;
    procedure SetRules(const Value: TObjectList<TReceiptRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TDescribeReceiptRuleSetResponse;
    function IsSetMetadata: Boolean;
    function IsSetRules: Boolean;
    property Metadata: TReceiptRuleSetMetadata read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property Rules: TObjectList<TReceiptRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TDescribeReceiptRuleSetResponse = class(TAmazonWebServiceResponse, IDescribeReceiptRuleSetResponse)
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
    function Obj: TDescribeReceiptRuleSetResponse;
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

{ TDescribeReceiptRuleSetResponse }

constructor TDescribeReceiptRuleSetResponse.Create;
begin
  inherited;
  FRules := TObjectList<TReceiptRule>.Create;
end;

destructor TDescribeReceiptRuleSetResponse.Destroy;
begin
  Rules := nil;
  Metadata := nil;
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
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TDescribeReceiptRuleSetResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TDescribeReceiptRuleSetResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
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
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TDescribeReceiptRuleSetResponse.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TDescribeReceiptRuleSetResponse.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TDescribeReceiptRuleSetResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
