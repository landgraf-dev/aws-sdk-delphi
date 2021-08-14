unit AWS.SES.Model.GetIdentityNotificationAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.IdentityNotificationAttributes;

type
  TGetIdentityNotificationAttributesResponse = class;
  
  IGetIdentityNotificationAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
    procedure SetNotificationAttributes(const Value: TObjectDictionary<string, TIdentityNotificationAttributes>);
    function Obj: TGetIdentityNotificationAttributesResponse;
    function IsSetNotificationAttributes: Boolean;
    property NotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes> read GetNotificationAttributes write SetNotificationAttributes;
  end;
  
  TGetIdentityNotificationAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityNotificationAttributesResponse)
  strict private
    FNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
    function GetNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
    procedure SetNotificationAttributes(const Value: TObjectDictionary<string, TIdentityNotificationAttributes>);
  strict protected
    function Obj: TGetIdentityNotificationAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNotificationAttributes: Boolean;
    property NotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes> read GetNotificationAttributes write SetNotificationAttributes;
  end;
  
implementation

{ TGetIdentityNotificationAttributesResponse }

constructor TGetIdentityNotificationAttributesResponse.Create;
begin
  inherited;
  FNotificationAttributes := TObjectDictionary<string, TIdentityNotificationAttributes>.Create([doOwnsValues]);
end;

destructor TGetIdentityNotificationAttributesResponse.Destroy;
begin
  FNotificationAttributes.Free;
  inherited;
end;

function TGetIdentityNotificationAttributesResponse.Obj: TGetIdentityNotificationAttributesResponse;
begin
  Result := Self;
end;

function TGetIdentityNotificationAttributesResponse.GetNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
begin
  Result := FNotificationAttributes;
end;

procedure TGetIdentityNotificationAttributesResponse.SetNotificationAttributes(const Value: TObjectDictionary<string, TIdentityNotificationAttributes>);
begin
  if FNotificationAttributes <> Value then
  begin
    FNotificationAttributes.Free;
    FNotificationAttributes := Value;
  end;
end;

function TGetIdentityNotificationAttributesResponse.IsSetNotificationAttributes: Boolean;
begin
  Result := (FNotificationAttributes <> nil) and (FNotificationAttributes.Count > 0);
end;

end.
