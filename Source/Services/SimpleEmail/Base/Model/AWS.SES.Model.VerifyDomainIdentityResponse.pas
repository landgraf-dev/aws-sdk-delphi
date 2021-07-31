unit AWS.SES.Model.VerifyDomainIdentityResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TVerifyDomainIdentityResponse = class;
  
  IVerifyDomainIdentityResponse = interface(IAmazonWebServiceResponse)
    function GetVerificationToken: string;
    procedure SetVerificationToken(const Value: string);
    function Obj: TVerifyDomainIdentityResponse;
    function IsSetVerificationToken: Boolean;
    property VerificationToken: string read GetVerificationToken write SetVerificationToken;
  end;
  
  TVerifyDomainIdentityResponse = class(TAmazonWebServiceResponse, IVerifyDomainIdentityResponse)
  strict private
    FVerificationToken: Nullable<string>;
    function GetVerificationToken: string;
    procedure SetVerificationToken(const Value: string);
  strict protected
    function Obj: TVerifyDomainIdentityResponse;
  public
    function IsSetVerificationToken: Boolean;
    property VerificationToken: string read GetVerificationToken write SetVerificationToken;
  end;
  
implementation

{ TVerifyDomainIdentityResponse }

function TVerifyDomainIdentityResponse.Obj: TVerifyDomainIdentityResponse;
begin
  Result := Self;
end;

function TVerifyDomainIdentityResponse.GetVerificationToken: string;
begin
  Result := FVerificationToken.ValueOrDefault;
end;

procedure TVerifyDomainIdentityResponse.SetVerificationToken(const Value: string);
begin
  FVerificationToken := Value;
end;

function TVerifyDomainIdentityResponse.IsSetVerificationToken: Boolean;
begin
  Result := FVerificationToken.HasValue;
end;

end.
