unit AWS.S3Control.Model.GetAccessPointPolicyResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TGetAccessPointPolicyResponse = class;
  
  IGetAccessPointPolicyResponse = interface(IAmazonWebServiceResponse)
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TGetAccessPointPolicyResponse;
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TGetAccessPointPolicyResponse = class(TAmazonWebServiceResponse, IGetAccessPointPolicyResponse)
  strict private
    FPolicy: Nullable<string>;
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyResponse;
  public
    function IsSetPolicy: Boolean;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TGetAccessPointPolicyResponse }

function TGetAccessPointPolicyResponse.Obj: TGetAccessPointPolicyResponse;
begin
  Result := Self;
end;

function TGetAccessPointPolicyResponse.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TGetAccessPointPolicyResponse.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TGetAccessPointPolicyResponse.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
