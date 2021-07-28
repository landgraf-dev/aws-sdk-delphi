unit AWS.SES.Model.ReceiptAction;

interface

uses
  AWS.SES.Model.AddHeaderAction, 
  AWS.SES.Model.BounceAction, 
  AWS.SES.Model.LambdaAction, 
  AWS.SES.Model.S3Action, 
  AWS.SES.Model.SNSAction, 
  AWS.SES.Model.StopAction, 
  AWS.SES.Model.WorkmailAction;

type
  TReceiptAction = class;
  
  IReceiptAction = interface
    function GetAddHeaderAction: TAddHeaderAction;
    procedure SetAddHeaderAction(const Value: TAddHeaderAction);
    function GetBounceAction: TBounceAction;
    procedure SetBounceAction(const Value: TBounceAction);
    function GetLambdaAction: TLambdaAction;
    procedure SetLambdaAction(const Value: TLambdaAction);
    function GetS3Action: TS3Action;
    procedure SetS3Action(const Value: TS3Action);
    function GetSNSAction: TSNSAction;
    procedure SetSNSAction(const Value: TSNSAction);
    function GetStopAction: TStopAction;
    procedure SetStopAction(const Value: TStopAction);
    function GetWorkmailAction: TWorkmailAction;
    procedure SetWorkmailAction(const Value: TWorkmailAction);
    function Obj: TReceiptAction;
    function IsSetAddHeaderAction: Boolean;
    function IsSetBounceAction: Boolean;
    function IsSetLambdaAction: Boolean;
    function IsSetS3Action: Boolean;
    function IsSetSNSAction: Boolean;
    function IsSetStopAction: Boolean;
    function IsSetWorkmailAction: Boolean;
    property AddHeaderAction: TAddHeaderAction read GetAddHeaderAction write SetAddHeaderAction;
    property BounceAction: TBounceAction read GetBounceAction write SetBounceAction;
    property LambdaAction: TLambdaAction read GetLambdaAction write SetLambdaAction;
    property S3Action: TS3Action read GetS3Action write SetS3Action;
    property SNSAction: TSNSAction read GetSNSAction write SetSNSAction;
    property StopAction: TStopAction read GetStopAction write SetStopAction;
    property WorkmailAction: TWorkmailAction read GetWorkmailAction write SetWorkmailAction;
  end;
  
  TReceiptAction = class
  strict private
    FAddHeaderAction: TAddHeaderAction;
    FBounceAction: TBounceAction;
    FLambdaAction: TLambdaAction;
    FS3Action: TS3Action;
    FSNSAction: TSNSAction;
    FStopAction: TStopAction;
    FWorkmailAction: TWorkmailAction;
    function GetAddHeaderAction: TAddHeaderAction;
    procedure SetAddHeaderAction(const Value: TAddHeaderAction);
    function GetBounceAction: TBounceAction;
    procedure SetBounceAction(const Value: TBounceAction);
    function GetLambdaAction: TLambdaAction;
    procedure SetLambdaAction(const Value: TLambdaAction);
    function GetS3Action: TS3Action;
    procedure SetS3Action(const Value: TS3Action);
    function GetSNSAction: TSNSAction;
    procedure SetSNSAction(const Value: TSNSAction);
    function GetStopAction: TStopAction;
    procedure SetStopAction(const Value: TStopAction);
    function GetWorkmailAction: TWorkmailAction;
    procedure SetWorkmailAction(const Value: TWorkmailAction);
  strict protected
    function Obj: TReceiptAction;
  public
    destructor Destroy; override;
    function IsSetAddHeaderAction: Boolean;
    function IsSetBounceAction: Boolean;
    function IsSetLambdaAction: Boolean;
    function IsSetS3Action: Boolean;
    function IsSetSNSAction: Boolean;
    function IsSetStopAction: Boolean;
    function IsSetWorkmailAction: Boolean;
    property AddHeaderAction: TAddHeaderAction read GetAddHeaderAction write SetAddHeaderAction;
    property BounceAction: TBounceAction read GetBounceAction write SetBounceAction;
    property LambdaAction: TLambdaAction read GetLambdaAction write SetLambdaAction;
    property S3Action: TS3Action read GetS3Action write SetS3Action;
    property SNSAction: TSNSAction read GetSNSAction write SetSNSAction;
    property StopAction: TStopAction read GetStopAction write SetStopAction;
    property WorkmailAction: TWorkmailAction read GetWorkmailAction write SetWorkmailAction;
  end;
  
implementation

{ TReceiptAction }

destructor TReceiptAction.Destroy;
begin
  FWorkmailAction.Free;
  FStopAction.Free;
  FSNSAction.Free;
  FS3Action.Free;
  FLambdaAction.Free;
  FBounceAction.Free;
  FAddHeaderAction.Free;
  inherited;
end;

function TReceiptAction.Obj: TReceiptAction;
begin
  Result := Self;
end;

function TReceiptAction.GetAddHeaderAction: TAddHeaderAction;
begin
  Result := FAddHeaderAction;
end;

procedure TReceiptAction.SetAddHeaderAction(const Value: TAddHeaderAction);
begin
  if FAddHeaderAction <> Value then
  begin
    FAddHeaderAction.Free;
    FAddHeaderAction := Value;
  end;
end;

function TReceiptAction.IsSetAddHeaderAction: Boolean;
begin
  Result := FAddHeaderAction <> nil;
end;

function TReceiptAction.GetBounceAction: TBounceAction;
begin
  Result := FBounceAction;
end;

procedure TReceiptAction.SetBounceAction(const Value: TBounceAction);
begin
  if FBounceAction <> Value then
  begin
    FBounceAction.Free;
    FBounceAction := Value;
  end;
end;

function TReceiptAction.IsSetBounceAction: Boolean;
begin
  Result := FBounceAction <> nil;
end;

function TReceiptAction.GetLambdaAction: TLambdaAction;
begin
  Result := FLambdaAction;
end;

procedure TReceiptAction.SetLambdaAction(const Value: TLambdaAction);
begin
  if FLambdaAction <> Value then
  begin
    FLambdaAction.Free;
    FLambdaAction := Value;
  end;
end;

function TReceiptAction.IsSetLambdaAction: Boolean;
begin
  Result := FLambdaAction <> nil;
end;

function TReceiptAction.GetS3Action: TS3Action;
begin
  Result := FS3Action;
end;

procedure TReceiptAction.SetS3Action(const Value: TS3Action);
begin
  if FS3Action <> Value then
  begin
    FS3Action.Free;
    FS3Action := Value;
  end;
end;

function TReceiptAction.IsSetS3Action: Boolean;
begin
  Result := FS3Action <> nil;
end;

function TReceiptAction.GetSNSAction: TSNSAction;
begin
  Result := FSNSAction;
end;

procedure TReceiptAction.SetSNSAction(const Value: TSNSAction);
begin
  if FSNSAction <> Value then
  begin
    FSNSAction.Free;
    FSNSAction := Value;
  end;
end;

function TReceiptAction.IsSetSNSAction: Boolean;
begin
  Result := FSNSAction <> nil;
end;

function TReceiptAction.GetStopAction: TStopAction;
begin
  Result := FStopAction;
end;

procedure TReceiptAction.SetStopAction(const Value: TStopAction);
begin
  if FStopAction <> Value then
  begin
    FStopAction.Free;
    FStopAction := Value;
  end;
end;

function TReceiptAction.IsSetStopAction: Boolean;
begin
  Result := FStopAction <> nil;
end;

function TReceiptAction.GetWorkmailAction: TWorkmailAction;
begin
  Result := FWorkmailAction;
end;

procedure TReceiptAction.SetWorkmailAction(const Value: TWorkmailAction);
begin
  if FWorkmailAction <> Value then
  begin
    FWorkmailAction.Free;
    FWorkmailAction := Value;
  end;
end;

function TReceiptAction.IsSetWorkmailAction: Boolean;
begin
  Result := FWorkmailAction <> nil;
end;

end.
