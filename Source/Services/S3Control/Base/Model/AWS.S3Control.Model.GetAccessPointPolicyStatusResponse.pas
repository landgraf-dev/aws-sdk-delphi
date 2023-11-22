unit AWS.S3Control.Model.GetAccessPointPolicyStatusResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PolicyStatus;

type
  TGetAccessPointPolicyStatusResponse = class;
  
  IGetAccessPointPolicyStatusResponse = interface(IAmazonWebServiceResponse)
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
    function Obj: TGetAccessPointPolicyStatusResponse;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
  TGetAccessPointPolicyStatusResponse = class(TAmazonWebServiceResponse, IGetAccessPointPolicyStatusResponse)
  strict private
    FPolicyStatus: TPolicyStatus;
    FKeepPolicyStatus: Boolean;
    function GetPolicyStatus: TPolicyStatus;
    procedure SetPolicyStatus(const Value: TPolicyStatus);
    function GetKeepPolicyStatus: Boolean;
    procedure SetKeepPolicyStatus(const Value: Boolean);
  strict protected
    function Obj: TGetAccessPointPolicyStatusResponse;
  public
    destructor Destroy; override;
    function IsSetPolicyStatus: Boolean;
    property PolicyStatus: TPolicyStatus read GetPolicyStatus write SetPolicyStatus;
    property KeepPolicyStatus: Boolean read GetKeepPolicyStatus write SetKeepPolicyStatus;
  end;
  
implementation

{ TGetAccessPointPolicyStatusResponse }

destructor TGetAccessPointPolicyStatusResponse.Destroy;
begin
  PolicyStatus := nil;
  inherited;
end;

function TGetAccessPointPolicyStatusResponse.Obj: TGetAccessPointPolicyStatusResponse;
begin
  Result := Self;
end;

function TGetAccessPointPolicyStatusResponse.GetPolicyStatus: TPolicyStatus;
begin
  Result := FPolicyStatus;
end;

procedure TGetAccessPointPolicyStatusResponse.SetPolicyStatus(const Value: TPolicyStatus);
begin
  if FPolicyStatus <> Value then
  begin
    if not KeepPolicyStatus then
      FPolicyStatus.Free;
    FPolicyStatus := Value;
  end;
end;

function TGetAccessPointPolicyStatusResponse.GetKeepPolicyStatus: Boolean;
begin
  Result := FKeepPolicyStatus;
end;

procedure TGetAccessPointPolicyStatusResponse.SetKeepPolicyStatus(const Value: Boolean);
begin
  FKeepPolicyStatus := Value;
end;

function TGetAccessPointPolicyStatusResponse.IsSetPolicyStatus: Boolean;
begin
  Result := FPolicyStatus <> nil;
end;

end.
