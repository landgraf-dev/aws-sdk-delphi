unit AWS.SES.Model.VerifyDomainIdentityRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TVerifyDomainIdentityRequest = class;
  
  IVerifyDomainIdentityRequest = interface
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function Obj: TVerifyDomainIdentityRequest;
    function IsSetDomain: Boolean;
    property Domain: string read GetDomain write SetDomain;
  end;
  
  TVerifyDomainIdentityRequest = class(TAmazonSimpleEmailServiceRequest, IVerifyDomainIdentityRequest)
  strict private
    FDomain: Nullable<string>;
    function GetDomain: string;
    procedure SetDomain(const Value: string);
  strict protected
    function Obj: TVerifyDomainIdentityRequest;
  public
    function IsSetDomain: Boolean;
    property Domain: string read GetDomain write SetDomain;
  end;
  
implementation

{ TVerifyDomainIdentityRequest }

function TVerifyDomainIdentityRequest.Obj: TVerifyDomainIdentityRequest;
begin
  Result := Self;
end;

function TVerifyDomainIdentityRequest.GetDomain: string;
begin
  Result := FDomain.ValueOrDefault;
end;

procedure TVerifyDomainIdentityRequest.SetDomain(const Value: string);
begin
  FDomain := Value;
end;

function TVerifyDomainIdentityRequest.IsSetDomain: Boolean;
begin
  Result := FDomain.HasValue;
end;

end.
