unit AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteAccessPointPolicyForObjectLambdaRequest = class;
  
  IDeleteAccessPointPolicyForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteAccessPointPolicyForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteAccessPointPolicyForObjectLambdaRequest = class(TAmazonS3ControlRequest, IDeleteAccessPointPolicyForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteAccessPointPolicyForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteAccessPointPolicyForObjectLambdaRequest }

function TDeleteAccessPointPolicyForObjectLambdaRequest.Obj: TDeleteAccessPointPolicyForObjectLambdaRequest;
begin
  Result := Self;
end;

function TDeleteAccessPointPolicyForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteAccessPointPolicyForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteAccessPointPolicyForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteAccessPointPolicyForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteAccessPointPolicyForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteAccessPointPolicyForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
