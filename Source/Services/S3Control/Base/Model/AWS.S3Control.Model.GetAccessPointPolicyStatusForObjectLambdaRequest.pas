unit AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetAccessPointPolicyStatusForObjectLambdaRequest = class;
  
  IGetAccessPointPolicyStatusForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointPolicyStatusForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointPolicyStatusForObjectLambdaRequest = class(TAmazonS3ControlRequest, IGetAccessPointPolicyStatusForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyStatusForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointPolicyStatusForObjectLambdaRequest }

function TGetAccessPointPolicyStatusForObjectLambdaRequest.Obj: TGetAccessPointPolicyStatusForObjectLambdaRequest;
begin
  Result := Self;
end;

function TGetAccessPointPolicyStatusForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointPolicyStatusForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointPolicyStatusForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointPolicyStatusForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointPolicyStatusForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointPolicyStatusForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
