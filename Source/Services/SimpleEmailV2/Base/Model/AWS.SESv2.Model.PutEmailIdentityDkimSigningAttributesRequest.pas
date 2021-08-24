unit AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.DkimSigningAttributes, 
  AWS.SESv2.Enums;

type
  TPutEmailIdentityDkimSigningAttributesRequest = class;
  
  IPutEmailIdentityDkimSigningAttributesRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetSigningAttributes: TDkimSigningAttributes;
    procedure SetSigningAttributes(const Value: TDkimSigningAttributes);
    function GetKeepSigningAttributes: Boolean;
    procedure SetKeepSigningAttributes(const Value: Boolean);
    function GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
    procedure SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
    function Obj: TPutEmailIdentityDkimSigningAttributesRequest;
    function IsSetEmailIdentity: Boolean;
    function IsSetSigningAttributes: Boolean;
    function IsSetSigningAttributesOrigin: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property SigningAttributes: TDkimSigningAttributes read GetSigningAttributes write SetSigningAttributes;
    property KeepSigningAttributes: Boolean read GetKeepSigningAttributes write SetKeepSigningAttributes;
    property SigningAttributesOrigin: TDkimSigningAttributesOrigin read GetSigningAttributesOrigin write SetSigningAttributesOrigin;
  end;
  
  TPutEmailIdentityDkimSigningAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutEmailIdentityDkimSigningAttributesRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    FSigningAttributes: TDkimSigningAttributes;
    FKeepSigningAttributes: Boolean;
    FSigningAttributesOrigin: Nullable<TDkimSigningAttributesOrigin>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetSigningAttributes: TDkimSigningAttributes;
    procedure SetSigningAttributes(const Value: TDkimSigningAttributes);
    function GetKeepSigningAttributes: Boolean;
    procedure SetKeepSigningAttributes(const Value: Boolean);
    function GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
    procedure SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
  strict protected
    function Obj: TPutEmailIdentityDkimSigningAttributesRequest;
  public
    destructor Destroy; override;
    function IsSetEmailIdentity: Boolean;
    function IsSetSigningAttributes: Boolean;
    function IsSetSigningAttributesOrigin: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property SigningAttributes: TDkimSigningAttributes read GetSigningAttributes write SetSigningAttributes;
    property KeepSigningAttributes: Boolean read GetKeepSigningAttributes write SetKeepSigningAttributes;
    property SigningAttributesOrigin: TDkimSigningAttributesOrigin read GetSigningAttributesOrigin write SetSigningAttributesOrigin;
  end;
  
implementation

{ TPutEmailIdentityDkimSigningAttributesRequest }

destructor TPutEmailIdentityDkimSigningAttributesRequest.Destroy;
begin
  SigningAttributes := nil;
  inherited;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.Obj: TPutEmailIdentityDkimSigningAttributesRequest;
begin
  Result := Self;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TPutEmailIdentityDkimSigningAttributesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.GetSigningAttributes: TDkimSigningAttributes;
begin
  Result := FSigningAttributes;
end;

procedure TPutEmailIdentityDkimSigningAttributesRequest.SetSigningAttributes(const Value: TDkimSigningAttributes);
begin
  if FSigningAttributes <> Value then
  begin
    if not KeepSigningAttributes then
      FSigningAttributes.Free;
    FSigningAttributes := Value;
  end;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.GetKeepSigningAttributes: Boolean;
begin
  Result := FKeepSigningAttributes;
end;

procedure TPutEmailIdentityDkimSigningAttributesRequest.SetKeepSigningAttributes(const Value: Boolean);
begin
  FKeepSigningAttributes := Value;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.IsSetSigningAttributes: Boolean;
begin
  Result := FSigningAttributes <> nil;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
begin
  Result := FSigningAttributesOrigin.ValueOrDefault;
end;

procedure TPutEmailIdentityDkimSigningAttributesRequest.SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
begin
  FSigningAttributesOrigin := Value;
end;

function TPutEmailIdentityDkimSigningAttributesRequest.IsSetSigningAttributesOrigin: Boolean;
begin
  Result := FSigningAttributesOrigin.HasValue;
end;

end.
