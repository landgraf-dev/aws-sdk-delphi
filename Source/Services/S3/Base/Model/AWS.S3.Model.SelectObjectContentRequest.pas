unit AWS.S3.Model.SelectObjectContentRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.InputSerialization, 
  AWS.S3.Model.OutputSerialization, 
  AWS.S3.Model.RequestProgress, 
  AWS.S3.Model.ScanRange;

type
  TSelectObjectContentRequest = class;
  
  ISelectObjectContentRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpression: string;
    procedure SetExpression(const Value: string);
    function GetExpressionType: TExpressionType;
    procedure SetExpressionType(const Value: TExpressionType);
    function GetInputSerialization: TInputSerialization;
    procedure SetInputSerialization(const Value: TInputSerialization);
    function GetKeepInputSerialization: Boolean;
    procedure SetKeepInputSerialization(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOutputSerialization: TOutputSerialization;
    procedure SetOutputSerialization(const Value: TOutputSerialization);
    function GetKeepOutputSerialization: Boolean;
    procedure SetKeepOutputSerialization(const Value: Boolean);
    function GetRequestProgress: TRequestProgress;
    procedure SetRequestProgress(const Value: TRequestProgress);
    function GetKeepRequestProgress: Boolean;
    procedure SetKeepRequestProgress(const Value: Boolean);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetScanRange: TScanRange;
    procedure SetScanRange(const Value: TScanRange);
    function GetKeepScanRange: Boolean;
    procedure SetKeepScanRange(const Value: Boolean);
    function Obj: TSelectObjectContentRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpression: Boolean;
    function IsSetExpressionType: Boolean;
    function IsSetInputSerialization: Boolean;
    function IsSetKey: Boolean;
    function IsSetOutputSerialization: Boolean;
    function IsSetRequestProgress: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetScanRange: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expression: string read GetExpression write SetExpression;
    property ExpressionType: TExpressionType read GetExpressionType write SetExpressionType;
    property InputSerialization: TInputSerialization read GetInputSerialization write SetInputSerialization;
    property KeepInputSerialization: Boolean read GetKeepInputSerialization write SetKeepInputSerialization;
    property Key: string read GetKey write SetKey;
    property OutputSerialization: TOutputSerialization read GetOutputSerialization write SetOutputSerialization;
    property KeepOutputSerialization: Boolean read GetKeepOutputSerialization write SetKeepOutputSerialization;
    property RequestProgress: TRequestProgress read GetRequestProgress write SetRequestProgress;
    property KeepRequestProgress: Boolean read GetKeepRequestProgress write SetKeepRequestProgress;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property ScanRange: TScanRange read GetScanRange write SetScanRange;
    property KeepScanRange: Boolean read GetKeepScanRange write SetKeepScanRange;
  end;
  
  TSelectObjectContentRequest = class(TAmazonS3Request, ISelectObjectContentRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FExpression: Nullable<string>;
    FExpressionType: Nullable<TExpressionType>;
    FInputSerialization: TInputSerialization;
    FKeepInputSerialization: Boolean;
    FKey: Nullable<string>;
    FOutputSerialization: TOutputSerialization;
    FKeepOutputSerialization: Boolean;
    FRequestProgress: TRequestProgress;
    FKeepRequestProgress: Boolean;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FScanRange: TScanRange;
    FKeepScanRange: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpression: string;
    procedure SetExpression(const Value: string);
    function GetExpressionType: TExpressionType;
    procedure SetExpressionType(const Value: TExpressionType);
    function GetInputSerialization: TInputSerialization;
    procedure SetInputSerialization(const Value: TInputSerialization);
    function GetKeepInputSerialization: Boolean;
    procedure SetKeepInputSerialization(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOutputSerialization: TOutputSerialization;
    procedure SetOutputSerialization(const Value: TOutputSerialization);
    function GetKeepOutputSerialization: Boolean;
    procedure SetKeepOutputSerialization(const Value: Boolean);
    function GetRequestProgress: TRequestProgress;
    procedure SetRequestProgress(const Value: TRequestProgress);
    function GetKeepRequestProgress: Boolean;
    procedure SetKeepRequestProgress(const Value: Boolean);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetScanRange: TScanRange;
    procedure SetScanRange(const Value: TScanRange);
    function GetKeepScanRange: Boolean;
    procedure SetKeepScanRange(const Value: Boolean);
  strict protected
    function Obj: TSelectObjectContentRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpression: Boolean;
    function IsSetExpressionType: Boolean;
    function IsSetInputSerialization: Boolean;
    function IsSetKey: Boolean;
    function IsSetOutputSerialization: Boolean;
    function IsSetRequestProgress: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetScanRange: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expression: string read GetExpression write SetExpression;
    property ExpressionType: TExpressionType read GetExpressionType write SetExpressionType;
    property InputSerialization: TInputSerialization read GetInputSerialization write SetInputSerialization;
    property KeepInputSerialization: Boolean read GetKeepInputSerialization write SetKeepInputSerialization;
    property Key: string read GetKey write SetKey;
    property OutputSerialization: TOutputSerialization read GetOutputSerialization write SetOutputSerialization;
    property KeepOutputSerialization: Boolean read GetKeepOutputSerialization write SetKeepOutputSerialization;
    property RequestProgress: TRequestProgress read GetRequestProgress write SetRequestProgress;
    property KeepRequestProgress: Boolean read GetKeepRequestProgress write SetKeepRequestProgress;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property ScanRange: TScanRange read GetScanRange write SetScanRange;
    property KeepScanRange: Boolean read GetKeepScanRange write SetKeepScanRange;
  end;
  
implementation

{ TSelectObjectContentRequest }

destructor TSelectObjectContentRequest.Destroy;
begin
  ScanRange := nil;
  RequestProgress := nil;
  OutputSerialization := nil;
  InputSerialization := nil;
  inherited;
end;

function TSelectObjectContentRequest.Obj: TSelectObjectContentRequest;
begin
  Result := Self;
end;

function TSelectObjectContentRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TSelectObjectContentRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TSelectObjectContentRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TSelectObjectContentRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TSelectObjectContentRequest.GetExpression: string;
begin
  Result := FExpression.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetExpression(const Value: string);
begin
  FExpression := Value;
end;

function TSelectObjectContentRequest.IsSetExpression: Boolean;
begin
  Result := FExpression.HasValue;
end;

function TSelectObjectContentRequest.GetExpressionType: TExpressionType;
begin
  Result := FExpressionType.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetExpressionType(const Value: TExpressionType);
begin
  FExpressionType := Value;
end;

function TSelectObjectContentRequest.IsSetExpressionType: Boolean;
begin
  Result := FExpressionType.HasValue;
end;

function TSelectObjectContentRequest.GetInputSerialization: TInputSerialization;
begin
  Result := FInputSerialization;
end;

procedure TSelectObjectContentRequest.SetInputSerialization(const Value: TInputSerialization);
begin
  if FInputSerialization <> Value then
  begin
    if not KeepInputSerialization then
      FInputSerialization.Free;
    FInputSerialization := Value;
  end;
end;

function TSelectObjectContentRequest.GetKeepInputSerialization: Boolean;
begin
  Result := FKeepInputSerialization;
end;

procedure TSelectObjectContentRequest.SetKeepInputSerialization(const Value: Boolean);
begin
  FKeepInputSerialization := Value;
end;

function TSelectObjectContentRequest.IsSetInputSerialization: Boolean;
begin
  Result := FInputSerialization <> nil;
end;

function TSelectObjectContentRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TSelectObjectContentRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TSelectObjectContentRequest.GetOutputSerialization: TOutputSerialization;
begin
  Result := FOutputSerialization;
end;

procedure TSelectObjectContentRequest.SetOutputSerialization(const Value: TOutputSerialization);
begin
  if FOutputSerialization <> Value then
  begin
    if not KeepOutputSerialization then
      FOutputSerialization.Free;
    FOutputSerialization := Value;
  end;
end;

function TSelectObjectContentRequest.GetKeepOutputSerialization: Boolean;
begin
  Result := FKeepOutputSerialization;
end;

procedure TSelectObjectContentRequest.SetKeepOutputSerialization(const Value: Boolean);
begin
  FKeepOutputSerialization := Value;
end;

function TSelectObjectContentRequest.IsSetOutputSerialization: Boolean;
begin
  Result := FOutputSerialization <> nil;
end;

function TSelectObjectContentRequest.GetRequestProgress: TRequestProgress;
begin
  Result := FRequestProgress;
end;

procedure TSelectObjectContentRequest.SetRequestProgress(const Value: TRequestProgress);
begin
  if FRequestProgress <> Value then
  begin
    if not KeepRequestProgress then
      FRequestProgress.Free;
    FRequestProgress := Value;
  end;
end;

function TSelectObjectContentRequest.GetKeepRequestProgress: Boolean;
begin
  Result := FKeepRequestProgress;
end;

procedure TSelectObjectContentRequest.SetKeepRequestProgress(const Value: Boolean);
begin
  FKeepRequestProgress := Value;
end;

function TSelectObjectContentRequest.IsSetRequestProgress: Boolean;
begin
  Result := FRequestProgress <> nil;
end;

function TSelectObjectContentRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TSelectObjectContentRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TSelectObjectContentRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TSelectObjectContentRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TSelectObjectContentRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TSelectObjectContentRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TSelectObjectContentRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TSelectObjectContentRequest.GetScanRange: TScanRange;
begin
  Result := FScanRange;
end;

procedure TSelectObjectContentRequest.SetScanRange(const Value: TScanRange);
begin
  if FScanRange <> Value then
  begin
    if not KeepScanRange then
      FScanRange.Free;
    FScanRange := Value;
  end;
end;

function TSelectObjectContentRequest.GetKeepScanRange: Boolean;
begin
  Result := FKeepScanRange;
end;

procedure TSelectObjectContentRequest.SetKeepScanRange(const Value: Boolean);
begin
  FKeepScanRange := Value;
end;

function TSelectObjectContentRequest.IsSetScanRange: Boolean;
begin
  Result := FScanRange <> nil;
end;

end.
