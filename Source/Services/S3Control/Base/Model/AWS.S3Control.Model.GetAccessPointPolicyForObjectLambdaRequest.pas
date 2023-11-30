unit AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetAccessPointPolicyForObjectLambdaRequest = class;
  
  IGetAccessPointPolicyForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointPolicyForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointPolicyForObjectLambdaRequest = class(TAmazonS3ControlRequest, IGetAccessPointPolicyForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointPolicyForObjectLambdaRequest }

function TGetAccessPointPolicyForObjectLambdaRequest.Obj: TGetAccessPointPolicyForObjectLambdaRequest;
begin
  Result := Self;
end;

function TGetAccessPointPolicyForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointPolicyForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointPolicyForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointPolicyForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointPolicyForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointPolicyForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
