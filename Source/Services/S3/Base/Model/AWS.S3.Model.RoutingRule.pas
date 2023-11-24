unit AWS.S3.Model.RoutingRule;

interface

uses
  AWS.S3.Model.Condition, 
  AWS.S3.Model.Redirect;

type
  TRoutingRule = class;
  
  IRoutingRule = interface
    function GetCondition: TCondition;
    procedure SetCondition(const Value: TCondition);
    function GetKeepCondition: Boolean;
    procedure SetKeepCondition(const Value: Boolean);
    function GetRedirect: TRedirect;
    procedure SetRedirect(const Value: TRedirect);
    function GetKeepRedirect: Boolean;
    procedure SetKeepRedirect(const Value: Boolean);
    function Obj: TRoutingRule;
    function IsSetCondition: Boolean;
    function IsSetRedirect: Boolean;
    property Condition: TCondition read GetCondition write SetCondition;
    property KeepCondition: Boolean read GetKeepCondition write SetKeepCondition;
    property Redirect: TRedirect read GetRedirect write SetRedirect;
    property KeepRedirect: Boolean read GetKeepRedirect write SetKeepRedirect;
  end;
  
  TRoutingRule = class
  strict private
    FCondition: TCondition;
    FKeepCondition: Boolean;
    FRedirect: TRedirect;
    FKeepRedirect: Boolean;
    function GetCondition: TCondition;
    procedure SetCondition(const Value: TCondition);
    function GetKeepCondition: Boolean;
    procedure SetKeepCondition(const Value: Boolean);
    function GetRedirect: TRedirect;
    procedure SetRedirect(const Value: TRedirect);
    function GetKeepRedirect: Boolean;
    procedure SetKeepRedirect(const Value: Boolean);
  strict protected
    function Obj: TRoutingRule;
  public
    destructor Destroy; override;
    function IsSetCondition: Boolean;
    function IsSetRedirect: Boolean;
    property Condition: TCondition read GetCondition write SetCondition;
    property KeepCondition: Boolean read GetKeepCondition write SetKeepCondition;
    property Redirect: TRedirect read GetRedirect write SetRedirect;
    property KeepRedirect: Boolean read GetKeepRedirect write SetKeepRedirect;
  end;
  
implementation

{ TRoutingRule }

destructor TRoutingRule.Destroy;
begin
  Redirect := nil;
  Condition := nil;
  inherited;
end;

function TRoutingRule.Obj: TRoutingRule;
begin
  Result := Self;
end;

function TRoutingRule.GetCondition: TCondition;
begin
  Result := FCondition;
end;

procedure TRoutingRule.SetCondition(const Value: TCondition);
begin
  if FCondition <> Value then
  begin
    if not KeepCondition then
      FCondition.Free;
    FCondition := Value;
  end;
end;

function TRoutingRule.GetKeepCondition: Boolean;
begin
  Result := FKeepCondition;
end;

procedure TRoutingRule.SetKeepCondition(const Value: Boolean);
begin
  FKeepCondition := Value;
end;

function TRoutingRule.IsSetCondition: Boolean;
begin
  Result := FCondition <> nil;
end;

function TRoutingRule.GetRedirect: TRedirect;
begin
  Result := FRedirect;
end;

procedure TRoutingRule.SetRedirect(const Value: TRedirect);
begin
  if FRedirect <> Value then
  begin
    if not KeepRedirect then
      FRedirect.Free;
    FRedirect := Value;
  end;
end;

function TRoutingRule.GetKeepRedirect: Boolean;
begin
  Result := FKeepRedirect;
end;

procedure TRoutingRule.SetKeepRedirect(const Value: Boolean);
begin
  FKeepRedirect := Value;
end;

function TRoutingRule.IsSetRedirect: Boolean;
begin
  Result := FRedirect <> nil;
end;

end.
