unit AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.IdentityMailFromDomainAttributes;

type
  TGetIdentityMailFromDomainAttributesResponse = class;
  
  IGetIdentityMailFromDomainAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetMailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes>;
    procedure SetMailFromDomainAttributes(const Value: TObjectDictionary<string, TIdentityMailFromDomainAttributes>);
    function GetKeepMailFromDomainAttributes: Boolean;
    procedure SetKeepMailFromDomainAttributes(const Value: Boolean);
    function Obj: TGetIdentityMailFromDomainAttributesResponse;
    function IsSetMailFromDomainAttributes: Boolean;
    property MailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes> read GetMailFromDomainAttributes write SetMailFromDomainAttributes;
    property KeepMailFromDomainAttributes: Boolean read GetKeepMailFromDomainAttributes write SetKeepMailFromDomainAttributes;
  end;
  
  TGetIdentityMailFromDomainAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityMailFromDomainAttributesResponse)
  strict private
    FMailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes>;
    FKeepMailFromDomainAttributes: Boolean;
    function GetMailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes>;
    procedure SetMailFromDomainAttributes(const Value: TObjectDictionary<string, TIdentityMailFromDomainAttributes>);
    function GetKeepMailFromDomainAttributes: Boolean;
    procedure SetKeepMailFromDomainAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityMailFromDomainAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMailFromDomainAttributes: Boolean;
    property MailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes> read GetMailFromDomainAttributes write SetMailFromDomainAttributes;
    property KeepMailFromDomainAttributes: Boolean read GetKeepMailFromDomainAttributes write SetKeepMailFromDomainAttributes;
  end;
  
implementation

{ TGetIdentityMailFromDomainAttributesResponse }

constructor TGetIdentityMailFromDomainAttributesResponse.Create;
begin
  inherited;
  FMailFromDomainAttributes := TObjectDictionary<string, TIdentityMailFromDomainAttributes>.Create([doOwnsValues]);
end;

destructor TGetIdentityMailFromDomainAttributesResponse.Destroy;
begin
  MailFromDomainAttributes := nil;
  inherited;
end;

function TGetIdentityMailFromDomainAttributesResponse.Obj: TGetIdentityMailFromDomainAttributesResponse;
begin
  Result := Self;
end;

function TGetIdentityMailFromDomainAttributesResponse.GetMailFromDomainAttributes: TObjectDictionary<string, TIdentityMailFromDomainAttributes>;
begin
  Result := FMailFromDomainAttributes;
end;

procedure TGetIdentityMailFromDomainAttributesResponse.SetMailFromDomainAttributes(const Value: TObjectDictionary<string, TIdentityMailFromDomainAttributes>);
begin
  if FMailFromDomainAttributes <> Value then
  begin
    if not KeepMailFromDomainAttributes then
      FMailFromDomainAttributes.Free;
    FMailFromDomainAttributes := Value;
  end;
end;

function TGetIdentityMailFromDomainAttributesResponse.GetKeepMailFromDomainAttributes: Boolean;
begin
  Result := FKeepMailFromDomainAttributes;
end;

procedure TGetIdentityMailFromDomainAttributesResponse.SetKeepMailFromDomainAttributes(const Value: Boolean);
begin
  FKeepMailFromDomainAttributes := Value;
end;

function TGetIdentityMailFromDomainAttributesResponse.IsSetMailFromDomainAttributes: Boolean;
begin
  Result := (FMailFromDomainAttributes <> nil) and (FMailFromDomainAttributes.Count > 0);
end;

end.
