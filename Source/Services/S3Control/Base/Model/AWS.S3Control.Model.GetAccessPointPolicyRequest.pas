unit AWS.S3Control.Model.GetAccessPointPolicyRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetAccessPointPolicyRequest = class;
  
  IGetAccessPointPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointPolicyRequest = class(TAmazonS3ControlRequest, IGetAccessPointPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointPolicyRequest }

function TGetAccessPointPolicyRequest.Obj: TGetAccessPointPolicyRequest;
begin
  Result := Self;
end;

function TGetAccessPointPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointPolicyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointPolicyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointPolicyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
