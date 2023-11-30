unit AWS.SNS.Model.AddPermissionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TAddPermissionRequest = class;
  
  IAddPermissionRequest = interface
    function GetAWSAccountId: TList<string>;
    procedure SetAWSAccountId(const Value: TList<string>);
    function GetKeepAWSAccountId: Boolean;
    procedure SetKeepAWSAccountId(const Value: Boolean);
    function GetActionName: TList<string>;
    procedure SetActionName(const Value: TList<string>);
    function GetKeepActionName: Boolean;
    procedure SetKeepActionName(const Value: Boolean);
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TAddPermissionRequest;
    function IsSetAWSAccountId: Boolean;
    function IsSetActionName: Boolean;
    function IsSetLabel: Boolean;
    function IsSetTopicArn: Boolean;
    property AWSAccountId: TList<string> read GetAWSAccountId write SetAWSAccountId;
    property KeepAWSAccountId: Boolean read GetKeepAWSAccountId write SetKeepAWSAccountId;
    property ActionName: TList<string> read GetActionName write SetActionName;
    property KeepActionName: Boolean read GetKeepActionName write SetKeepActionName;
    property &Label: string read GetLabel write SetLabel;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TAddPermissionRequest = class(TAmazonSimpleNotificationServiceRequest, IAddPermissionRequest)
  strict private
    FAWSAccountId: TList<string>;
    FKeepAWSAccountId: Boolean;
    FActionName: TList<string>;
    FKeepActionName: Boolean;
    FLabel: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetAWSAccountId: TList<string>;
    procedure SetAWSAccountId(const Value: TList<string>);
    function GetKeepAWSAccountId: Boolean;
    procedure SetKeepAWSAccountId(const Value: Boolean);
    function GetActionName: TList<string>;
    procedure SetActionName(const Value: TList<string>);
    function GetKeepActionName: Boolean;
    procedure SetKeepActionName(const Value: Boolean);
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TAddPermissionRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ATopicArn: string; const ALabel: string; const AAWSAccountId: TList<string>; const AActionName: TList<string>); overload;
    function IsSetAWSAccountId: Boolean;
    function IsSetActionName: Boolean;
    function IsSetLabel: Boolean;
    function IsSetTopicArn: Boolean;
    property AWSAccountId: TList<string> read GetAWSAccountId write SetAWSAccountId;
    property KeepAWSAccountId: Boolean read GetKeepAWSAccountId write SetKeepAWSAccountId;
    property ActionName: TList<string> read GetActionName write SetActionName;
    property KeepActionName: Boolean read GetKeepActionName write SetKeepActionName;
    property &Label: string read GetLabel write SetLabel;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TAddPermissionRequest }

constructor TAddPermissionRequest.Create;
begin
  inherited;
  FAWSAccountId := TList<string>.Create;
  FActionName := TList<string>.Create;
end;

destructor TAddPermissionRequest.Destroy;
begin
  ActionName := nil;
  AWSAccountId := nil;
  inherited;
end;

function TAddPermissionRequest.Obj: TAddPermissionRequest;
begin
  Result := Self;
end;

constructor TAddPermissionRequest.Create(const ATopicArn: string; const ALabel: string; const AAWSAccountId: TList<string>; const AActionName: TList<string>);
begin
  Create;
  TopicArn := ATopicArn;
  &Label := ALabel;
  AWSAccountId := AAWSAccountId;
  ActionName := AActionName;
end;

function TAddPermissionRequest.GetAWSAccountId: TList<string>;
begin
  Result := FAWSAccountId;
end;

procedure TAddPermissionRequest.SetAWSAccountId(const Value: TList<string>);
begin
  if FAWSAccountId <> Value then
  begin
    if not KeepAWSAccountId then
      FAWSAccountId.Free;
    FAWSAccountId := Value;
  end;
end;

function TAddPermissionRequest.GetKeepAWSAccountId: Boolean;
begin
  Result := FKeepAWSAccountId;
end;

procedure TAddPermissionRequest.SetKeepAWSAccountId(const Value: Boolean);
begin
  FKeepAWSAccountId := Value;
end;

function TAddPermissionRequest.IsSetAWSAccountId: Boolean;
begin
  Result := (FAWSAccountId <> nil) and (FAWSAccountId.Count > 0);
end;

function TAddPermissionRequest.GetActionName: TList<string>;
begin
  Result := FActionName;
end;

procedure TAddPermissionRequest.SetActionName(const Value: TList<string>);
begin
  if FActionName <> Value then
  begin
    if not KeepActionName then
      FActionName.Free;
    FActionName := Value;
  end;
end;

function TAddPermissionRequest.GetKeepActionName: Boolean;
begin
  Result := FKeepActionName;
end;

procedure TAddPermissionRequest.SetKeepActionName(const Value: Boolean);
begin
  FKeepActionName := Value;
end;

function TAddPermissionRequest.IsSetActionName: Boolean;
begin
  Result := (FActionName <> nil) and (FActionName.Count > 0);
end;

function TAddPermissionRequest.GetLabel: string;
begin
  Result := FLabel.ValueOrDefault;
end;

procedure TAddPermissionRequest.SetLabel(const Value: string);
begin
  FLabel := Value;
end;

function TAddPermissionRequest.IsSetLabel: Boolean;
begin
  Result := FLabel.HasValue;
end;

function TAddPermissionRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TAddPermissionRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TAddPermissionRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
