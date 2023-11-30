unit AWS.SES.Model.VerifyEmailIdentityRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TVerifyEmailIdentityRequest = class;
  
  IVerifyEmailIdentityRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TVerifyEmailIdentityRequest;
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TVerifyEmailIdentityRequest = class(TAmazonSimpleEmailServiceRequest, IVerifyEmailIdentityRequest)
  strict private
    FEmailAddress: Nullable<string>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TVerifyEmailIdentityRequest;
  public
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TVerifyEmailIdentityRequest }

function TVerifyEmailIdentityRequest.Obj: TVerifyEmailIdentityRequest;
begin
  Result := Self;
end;

function TVerifyEmailIdentityRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TVerifyEmailIdentityRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TVerifyEmailIdentityRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
