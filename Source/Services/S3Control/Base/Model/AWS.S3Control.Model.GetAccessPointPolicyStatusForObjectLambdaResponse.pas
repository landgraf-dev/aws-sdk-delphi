unit AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PolicyStatus;

type
  TGetAccessPointPolicyStatusForObjectLambdaResponse = class;
  
  IGetAccessPointPolicyStatusForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
    function Obj: TGetAccessPointPolicyStatusForObjectLambdaResponse;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
  TGetAccessPointPolicyStatusForObjectLambdaResponse = class(TAmazonWebServiceResponse, IGetAccessPointPolicyStatusForObjectLambdaResponse)
  strict private
    FPolicyStatus: TPolicyStatus;
    FKeepPolicyStatus: Boolean;
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
  strict protected
    function Obj: TGetAccessPointPolicyStatusForObjectLambdaResponse;
  public
    destructor Destroy; override;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
implementation

{ TGetAccessPointPolicyStatusForObjectLambdaResponse }

destructor TGetAccessPointPolicyStatusForObjectLambdaResponse.Destroy;
begin
  PolicyStatus := nil;
  inherited;
end;

function TGetAccessPointPolicyStatusForObjectLambdaResponse.Obj: TGetAccessPointPolicyStatusForObjectLambdaResponse;
begin
  Result := Self;
end;

function TGetAccessPointPolicyStatusForObjectLambdaResponse.GetPolicyStatus: TPolicyStatus;
begin
  Result := FPolicyStatus;
end;

procedure TGetAccessPointPolicyStatusForObjectLambdaResponse.SetPolicyStatus(const Value: TPolicyStatus);
begin
  if FPolicyStatus <> Value then
  begin
    if not KeepPolicyStatus then
      FPolicyStatus.Free;
    FPolicyStatus := Value;
  end;
end;

function TGetAccessPointPolicyStatusForObjectLambdaResponse.GetKeepPolicyStatus: Boolean;
begin
  Result := FKeepPolicyStatus;
end;

procedure TGetAccessPointPolicyStatusForObjectLambdaResponse.SetKeepPolicyStatus(const Value: Boolean);
begin
  FKeepPolicyStatus := Value;
end;

function TGetAccessPointPolicyStatusForObjectLambdaResponse.IsSetPolicyStatus: Boolean;
begin
  Result := FPolicyStatus <> nil;
end;

end.
