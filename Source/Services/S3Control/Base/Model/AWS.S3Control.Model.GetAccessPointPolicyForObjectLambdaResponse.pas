unit AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetAccessPointPolicyForObjectLambdaResponse = class;
  
  IGetAccessPointPolicyForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TGetAccessPointPolicyForObjectLambdaResponse;
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TGetAccessPointPolicyForObjectLambdaResponse = class(TAmazonWebServiceResponse, IGetAccessPointPolicyForObjectLambdaResponse)
  strict private
    FPolicy: Nullable<string>;
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyForObjectLambdaResponse;
  public
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TGetAccessPointPolicyForObjectLambdaResponse }

function TGetAccessPointPolicyForObjectLambdaResponse.Obj: TGetAccessPointPolicyForObjectLambdaResponse;
begin
  Result := Self;
end;

function TGetAccessPointPolicyForObjectLambdaResponse.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TGetAccessPointPolicyForObjectLambdaResponse.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TGetAccessPointPolicyForObjectLambdaResponse.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
