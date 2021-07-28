unit AWS.SES.Model.VerifyDomainDkimRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TVerifyDomainDkimRequest = class;
  
  IVerifyDomainDkimRequest = interface
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function Obj: TVerifyDomainDkimRequest;
    function IsSetDomain: Boolean;
    property Domain: string read GetDomain write SetDomain;
  end;
  
  TVerifyDomainDkimRequest = class(TAmazonSimpleEmailServiceRequest, IVerifyDomainDkimRequest)
  strict private
    FDomain: Nullable<string>;
    function GetDomain: string;
    procedure SetDomain(const Value: string);
  strict protected
    function Obj: TVerifyDomainDkimRequest;
  public
    function IsSetDomain: Boolean;
    property Domain: string read GetDomain write SetDomain;
  end;
  
implementation

{ TVerifyDomainDkimRequest }

function TVerifyDomainDkimRequest.Obj: TVerifyDomainDkimRequest;
begin
  Result := Self;
end;

function TVerifyDomainDkimRequest.GetDomain: string;
begin
  Result := FDomain.ValueOrDefault;
end;

procedure TVerifyDomainDkimRequest.SetDomain(const Value: string);
begin
  FDomain := Value;
end;

function TVerifyDomainDkimRequest.IsSetDomain: Boolean;
begin
  Result := FDomain.HasValue;
end;

end.
