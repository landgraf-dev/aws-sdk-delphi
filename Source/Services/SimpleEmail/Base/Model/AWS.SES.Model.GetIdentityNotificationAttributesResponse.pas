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
    function GetKeepNotificationAttributes: Boolean;
    procedure SetKeepNotificationAttributes(const Value: Boolean);
    function Obj: TGetIdentityNotificationAttributesResponse;
    function IsSetNotificationAttributes: Boolean;
    property NotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes> read GetNotificationAttributes write SetNotificationAttributes;
    property KeepNotificationAttributes: Boolean read GetKeepNotificationAttributes write SetKeepNotificationAttributes;
  end;
  
  TGetIdentityNotificationAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityNotificationAttributesResponse)
  strict private
    FNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
    FKeepNotificationAttributes: Boolean;
    function GetNotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes>;
    procedure SetNotificationAttributes(const Value: TObjectDictionary<string, TIdentityNotificationAttributes>);
    function GetKeepNotificationAttributes: Boolean;
    procedure SetKeepNotificationAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityNotificationAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNotificationAttributes: Boolean;
    property NotificationAttributes: TObjectDictionary<string, TIdentityNotificationAttributes> read GetNotificationAttributes write SetNotificationAttributes;
    property KeepNotificationAttributes: Boolean read GetKeepNotificationAttributes write SetKeepNotificationAttributes;
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
  NotificationAttributes := nil;
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
    if not KeepNotificationAttributes then
      FNotificationAttributes.Free;
    FNotificationAttributes := Value;
  end;
end;

function TGetIdentityNotificationAttributesResponse.GetKeepNotificationAttributes: Boolean;
begin
  Result := FKeepNotificationAttributes;
end;

procedure TGetIdentityNotificationAttributesResponse.SetKeepNotificationAttributes(const Value: Boolean);
begin
  FKeepNotificationAttributes := Value;
end;

function TGetIdentityNotificationAttributesResponse.IsSetNotificationAttributes: Boolean;
begin
  Result := (FNotificationAttributes <> nil) and (FNotificationAttributes.Count > 0);
end;

end.
