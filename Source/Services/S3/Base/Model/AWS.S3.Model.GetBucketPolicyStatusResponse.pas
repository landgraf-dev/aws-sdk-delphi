unit AWS.S3.Model.GetBucketPolicyStatusResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.PolicyStatus;

type
  TGetBucketPolicyStatusResponse = class;
  
  IGetBucketPolicyStatusResponse = interface(IAmazonWebServiceResponse)
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
    function Obj: TGetBucketPolicyStatusResponse;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
  TGetBucketPolicyStatusResponse = class(TAmazonWebServiceResponse, IGetBucketPolicyStatusResponse)
  strict private
    FPolicyStatus: TPolicyStatus;
    FKeepPolicyStatus: Boolean;
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
  strict protected
    function Obj: TGetBucketPolicyStatusResponse;
  public
    destructor Destroy; override;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
implementation

{ TGetBucketPolicyStatusResponse }

destructor TGetBucketPolicyStatusResponse.Destroy;
begin
  PolicyStatus := nil;
  inherited;
end;

function TGetBucketPolicyStatusResponse.Obj: TGetBucketPolicyStatusResponse;
begin
  Result := Self;
end;

function TGetBucketPolicyStatusResponse.GetPolicyStatus: TPolicyStatus;
begin
  Result := FPolicyStatus;
end;

procedure TGetBucketPolicyStatusResponse.SetPolicyStatus(const Value: TPolicyStatus);
begin
  if FPolicyStatus <> Value then
  begin
    if not KeepPolicyStatus then
      FPolicyStatus.Free;
    FPolicyStatus := Value;
  end;
end;

function TGetBucketPolicyStatusResponse.GetKeepPolicyStatus: Boolean;
begin
  Result := FKeepPolicyStatus;
end;

procedure TGetBucketPolicyStatusResponse.SetKeepPolicyStatus(const Value: Boolean);
begin
  FKeepPolicyStatus := Value;
end;

function TGetBucketPolicyStatusResponse.IsSetPolicyStatus: Boolean;
begin
  Result := FPolicyStatus <> nil;
end;

end.
