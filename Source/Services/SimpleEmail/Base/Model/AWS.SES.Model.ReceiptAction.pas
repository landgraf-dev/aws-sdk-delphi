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
    function GetKeepAddHeaderAction: Boolean;
    procedure SetKeepAddHeaderAction(const Value: Boolean);
    function GetBounceAction: TBounceAction;
    procedure SetBounceAction(const Value: TBounceAction);
    function GetKeepBounceAction: Boolean;
    procedure SetKeepBounceAction(const Value: Boolean);
    function GetLambdaAction: TLambdaAction;
    procedure SetLambdaAction(const Value: TLambdaAction);
    function GetKeepLambdaAction: Boolean;
    procedure SetKeepLambdaAction(const Value: Boolean);
    function GetS3Action: TS3Action;
    procedure SetS3Action(const Value: TS3Action);
    function GetKeepS3Action: Boolean;
    procedure SetKeepS3Action(const Value: Boolean);
    function GetSNSAction: TSNSAction;
    procedure SetSNSAction(const Value: TSNSAction);
    function GetKeepSNSAction: Boolean;
    procedure SetKeepSNSAction(const Value: Boolean);
    function GetStopAction: TStopAction;
    procedure SetStopAction(const Value: TStopAction);
    function GetKeepStopAction: Boolean;
    procedure SetKeepStopAction(const Value: Boolean);
    function GetWorkmailAction: TWorkmailAction;
    procedure SetWorkmailAction(const Value: TWorkmailAction);
    function GetKeepWorkmailAction: Boolean;
    procedure SetKeepWorkmailAction(const Value: Boolean);
    function Obj: TReceiptAction;
    function IsSetAddHeaderAction: Boolean;
    function IsSetBounceAction: Boolean;
    function IsSetLambdaAction: Boolean;
    function IsSetS3Action: Boolean;
    function IsSetSNSAction: Boolean;
    function IsSetStopAction: Boolean;
    function IsSetWorkmailAction: Boolean;
    property AddHeaderAction: TAddHeaderAction read GetAddHeaderAction write SetAddHeaderAction;
    property KeepAddHeaderAction: Boolean read GetKeepAddHeaderAction write SetKeepAddHeaderAction;
    property BounceAction: TBounceAction read GetBounceAction write SetBounceAction;
    property KeepBounceAction: Boolean read GetKeepBounceAction write SetKeepBounceAction;
    property LambdaAction: TLambdaAction read GetLambdaAction write SetLambdaAction;
    property KeepLambdaAction: Boolean read GetKeepLambdaAction write SetKeepLambdaAction;
    property S3Action: TS3Action read GetS3Action write SetS3Action;
    property KeepS3Action: Boolean read GetKeepS3Action write SetKeepS3Action;
    property SNSAction: TSNSAction read GetSNSAction write SetSNSAction;
    property KeepSNSAction: Boolean read GetKeepSNSAction write SetKeepSNSAction;
    property StopAction: TStopAction read GetStopAction write SetStopAction;
    property KeepStopAction: Boolean read GetKeepStopAction write SetKeepStopAction;
    property WorkmailAction: TWorkmailAction read GetWorkmailAction write SetWorkmailAction;
    property KeepWorkmailAction: Boolean read GetKeepWorkmailAction write SetKeepWorkmailAction;
  end;
  
  TReceiptAction = class
  strict private
    FAddHeaderAction: TAddHeaderAction;
    FKeepAddHeaderAction: Boolean;
    FBounceAction: TBounceAction;
    FKeepBounceAction: Boolean;
    FLambdaAction: TLambdaAction;
    FKeepLambdaAction: Boolean;
    FS3Action: TS3Action;
    FKeepS3Action: Boolean;
    FSNSAction: TSNSAction;
    FKeepSNSAction: Boolean;
    FStopAction: TStopAction;
    FKeepStopAction: Boolean;
    FWorkmailAction: TWorkmailAction;
    FKeepWorkmailAction: Boolean;
    function GetAddHeaderAction: TAddHeaderAction;
    procedure SetAddHeaderAction(const Value: TAddHeaderAction);
    function GetKeepAddHeaderAction: Boolean;
    procedure SetKeepAddHeaderAction(const Value: Boolean);
    function GetBounceAction: TBounceAction;
    procedure SetBounceAction(const Value: TBounceAction);
    function GetKeepBounceAction: Boolean;
    procedure SetKeepBounceAction(const Value: Boolean);
    function GetLambdaAction: TLambdaAction;
    procedure SetLambdaAction(const Value: TLambdaAction);
    function GetKeepLambdaAction: Boolean;
    procedure SetKeepLambdaAction(const Value: Boolean);
    function GetS3Action: TS3Action;
    procedure SetS3Action(const Value: TS3Action);
    function GetKeepS3Action: Boolean;
    procedure SetKeepS3Action(const Value: Boolean);
    function GetSNSAction: TSNSAction;
    procedure SetSNSAction(const Value: TSNSAction);
    function GetKeepSNSAction: Boolean;
    procedure SetKeepSNSAction(const Value: Boolean);
    function GetStopAction: TStopAction;
    procedure SetStopAction(const Value: TStopAction);
    function GetKeepStopAction: Boolean;
    procedure SetKeepStopAction(const Value: Boolean);
    function GetWorkmailAction: TWorkmailAction;
    procedure SetWorkmailAction(const Value: TWorkmailAction);
    function GetKeepWorkmailAction: Boolean;
    procedure SetKeepWorkmailAction(const Value: Boolean);
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
    property KeepAddHeaderAction: Boolean read GetKeepAddHeaderAction write SetKeepAddHeaderAction;
    property BounceAction: TBounceAction read GetBounceAction write SetBounceAction;
    property KeepBounceAction: Boolean read GetKeepBounceAction write SetKeepBounceAction;
    property LambdaAction: TLambdaAction read GetLambdaAction write SetLambdaAction;
    property KeepLambdaAction: Boolean read GetKeepLambdaAction write SetKeepLambdaAction;
    property S3Action: TS3Action read GetS3Action write SetS3Action;
    property KeepS3Action: Boolean read GetKeepS3Action write SetKeepS3Action;
    property SNSAction: TSNSAction read GetSNSAction write SetSNSAction;
    property KeepSNSAction: Boolean read GetKeepSNSAction write SetKeepSNSAction;
    property StopAction: TStopAction read GetStopAction write SetStopAction;
    property KeepStopAction: Boolean read GetKeepStopAction write SetKeepStopAction;
    property WorkmailAction: TWorkmailAction read GetWorkmailAction write SetWorkmailAction;
    property KeepWorkmailAction: Boolean read GetKeepWorkmailAction write SetKeepWorkmailAction;
  end;
  
implementation

{ TReceiptAction }

destructor TReceiptAction.Destroy;
begin
  WorkmailAction := nil;
  StopAction := nil;
  SNSAction := nil;
  S3Action := nil;
  LambdaAction := nil;
  BounceAction := nil;
  AddHeaderAction := nil;
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
    if not KeepAddHeaderAction then
      FAddHeaderAction.Free;
    FAddHeaderAction := Value;
  end;
end;

function TReceiptAction.GetKeepAddHeaderAction: Boolean;
begin
  Result := FKeepAddHeaderAction;
end;

procedure TReceiptAction.SetKeepAddHeaderAction(const Value: Boolean);
begin
  FKeepAddHeaderAction := Value;
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
    if not KeepBounceAction then
      FBounceAction.Free;
    FBounceAction := Value;
  end;
end;

function TReceiptAction.GetKeepBounceAction: Boolean;
begin
  Result := FKeepBounceAction;
end;

procedure TReceiptAction.SetKeepBounceAction(const Value: Boolean);
begin
  FKeepBounceAction := Value;
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
    if not KeepLambdaAction then
      FLambdaAction.Free;
    FLambdaAction := Value;
  end;
end;

function TReceiptAction.GetKeepLambdaAction: Boolean;
begin
  Result := FKeepLambdaAction;
end;

procedure TReceiptAction.SetKeepLambdaAction(const Value: Boolean);
begin
  FKeepLambdaAction := Value;
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
    if not KeepS3Action then
      FS3Action.Free;
    FS3Action := Value;
  end;
end;

function TReceiptAction.GetKeepS3Action: Boolean;
begin
  Result := FKeepS3Action;
end;

procedure TReceiptAction.SetKeepS3Action(const Value: Boolean);
begin
  FKeepS3Action := Value;
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
    if not KeepSNSAction then
      FSNSAction.Free;
    FSNSAction := Value;
  end;
end;

function TReceiptAction.GetKeepSNSAction: Boolean;
begin
  Result := FKeepSNSAction;
end;

procedure TReceiptAction.SetKeepSNSAction(const Value: Boolean);
begin
  FKeepSNSAction := Value;
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
    if not KeepStopAction then
      FStopAction.Free;
    FStopAction := Value;
  end;
end;

function TReceiptAction.GetKeepStopAction: Boolean;
begin
  Result := FKeepStopAction;
end;

procedure TReceiptAction.SetKeepStopAction(const Value: Boolean);
begin
  FKeepStopAction := Value;
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
    if not KeepWorkmailAction then
      FWorkmailAction.Free;
    FWorkmailAction := Value;
  end;
end;

function TReceiptAction.GetKeepWorkmailAction: Boolean;
begin
  Result := FKeepWorkmailAction;
end;

procedure TReceiptAction.SetKeepWorkmailAction(const Value: Boolean);
begin
  FKeepWorkmailAction := Value;
end;

function TReceiptAction.IsSetWorkmailAction: Boolean;
begin
  Result := FWorkmailAction <> nil;
end;

end.
