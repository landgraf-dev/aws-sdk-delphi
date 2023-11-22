unit AWS.S3Control.Model.GetBucketPolicyResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TGetBucketPolicyResponse = class;
  
  IGetBucketPolicyResponse = interface(IAmazonWebServiceResponse)
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TGetBucketPolicyResponse;
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TGetBucketPolicyResponse = class(TAmazonWebServiceResponse, IGetBucketPolicyResponse)
  strict private
    FPolicy: Nullable<string>;
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TGetBucketPolicyResponse;
  public
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TGetBucketPolicyResponse }

function TGetBucketPolicyResponse.Obj: TGetBucketPolicyResponse;
begin
  Result := Self;
end;

function TGetBucketPolicyResponse.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TGetBucketPolicyResponse.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TGetBucketPolicyResponse.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
