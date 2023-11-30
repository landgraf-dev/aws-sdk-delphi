unit AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TPutAccessPointPolicyForObjectLambdaRequest = class;
  
  IPutAccessPointPolicyForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TPutAccessPointPolicyForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TPutAccessPointPolicyForObjectLambdaRequest = class(TAmazonS3ControlRequest, IPutAccessPointPolicyForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    FPolicy: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TPutAccessPointPolicyForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TPutAccessPointPolicyForObjectLambdaRequest }

function TPutAccessPointPolicyForObjectLambdaRequest.Obj: TPutAccessPointPolicyForObjectLambdaRequest;
begin
  Result := Self;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutAccessPointPolicyForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPutAccessPointPolicyForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TPutAccessPointPolicyForObjectLambdaRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TPutAccessPointPolicyForObjectLambdaRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
