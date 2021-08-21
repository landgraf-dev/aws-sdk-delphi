unit AWS.SES.Model.ReorderReceiptRuleSetRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TReorderReceiptRuleSetRequest = class;
  
  IReorderReceiptRuleSetRequest = interface
    function GetRuleNames: TList<string>;
    procedure SetRuleNames(const Value: TList<string>);
    function GetKeepRuleNames: Boolean;
    procedure SetKeepRuleNames(const Value: Boolean);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
    function Obj: TReorderReceiptRuleSetRequest;
    function IsSetRuleNames: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleNames: TList<string> read GetRuleNames write SetRuleNames;
    property KeepRuleNames: Boolean read GetKeepRuleNames write SetKeepRuleNames;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
  TReorderReceiptRuleSetRequest = class(TAmazonSimpleEmailServiceRequest, IReorderReceiptRuleSetRequest)
  strict private
    FRuleNames: TList<string>;
    FKeepRuleNames: Boolean;
    FRuleSetName: Nullable<string>;
    function GetRuleNames: TList<string>;
    procedure SetRuleNames(const Value: TList<string>);
    function GetKeepRuleNames: Boolean;
    procedure SetKeepRuleNames(const Value: Boolean);
    function GetRuleSetName: string;
    procedure SetRuleSetName(const Value: string);
  strict protected
    function Obj: TReorderReceiptRuleSetRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRuleNames: Boolean;
    function IsSetRuleSetName: Boolean;
    property RuleNames: TList<string> read GetRuleNames write SetRuleNames;
    property KeepRuleNames: Boolean read GetKeepRuleNames write SetKeepRuleNames;
    property RuleSetName: string read GetRuleSetName write SetRuleSetName;
  end;
  
implementation

{ TReorderReceiptRuleSetRequest }

constructor TReorderReceiptRuleSetRequest.Create;
begin
  inherited;
  FRuleNames := TList<string>.Create;
end;

destructor TReorderReceiptRuleSetRequest.Destroy;
begin
  RuleNames := nil;
  inherited;
end;

function TReorderReceiptRuleSetRequest.Obj: TReorderReceiptRuleSetRequest;
begin
  Result := Self;
end;

function TReorderReceiptRuleSetRequest.GetRuleNames: TList<string>;
begin
  Result := FRuleNames;
end;

procedure TReorderReceiptRuleSetRequest.SetRuleNames(const Value: TList<string>);
begin
  if FRuleNames <> Value then
  begin
    if not KeepRuleNames then
      FRuleNames.Free;
    FRuleNames := Value;
  end;
end;

function TReorderReceiptRuleSetRequest.GetKeepRuleNames: Boolean;
begin
  Result := FKeepRuleNames;
end;

procedure TReorderReceiptRuleSetRequest.SetKeepRuleNames(const Value: Boolean);
begin
  FKeepRuleNames := Value;
end;

function TReorderReceiptRuleSetRequest.IsSetRuleNames: Boolean;
begin
  Result := (FRuleNames <> nil) and (FRuleNames.Count > 0);
end;

function TReorderReceiptRuleSetRequest.GetRuleSetName: string;
begin
  Result := FRuleSetName.ValueOrDefault;
end;

procedure TReorderReceiptRuleSetRequest.SetRuleSetName(const Value: string);
begin
  FRuleSetName := Value;
end;

function TReorderReceiptRuleSetRequest.IsSetRuleSetName: Boolean;
begin
  Result := FRuleSetName.HasValue;
end;

end.
