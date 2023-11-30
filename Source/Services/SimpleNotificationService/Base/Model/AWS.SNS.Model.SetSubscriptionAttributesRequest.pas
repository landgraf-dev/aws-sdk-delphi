unit AWS.SNS.Model.SetSubscriptionAttributesRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TSetSubscriptionAttributesRequest = class;
  
  ISetSubscriptionAttributesRequest = interface
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetAttributeValue: string;
    procedure SetAttributeValue(const Value: string);
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function Obj: TSetSubscriptionAttributesRequest;
    function IsSetAttributeName: Boolean;
    function IsSetAttributeValue: Boolean;
    function IsSetSubscriptionArn: Boolean;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property AttributeValue: string read GetAttributeValue write SetAttributeValue;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
  TSetSubscriptionAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetSubscriptionAttributesRequest)
  strict private
    FAttributeName: Nullable<string>;
    FAttributeValue: Nullable<string>;
    FSubscriptionArn: Nullable<string>;
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetAttributeValue: string;
    procedure SetAttributeValue(const Value: string);
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
  strict protected
    function Obj: TSetSubscriptionAttributesRequest;
  public
    constructor Create(const ASubscriptionArn: string; const AAttributeName: string; const AAttributeValue: string); overload;
    function IsSetAttributeName: Boolean;
    function IsSetAttributeValue: Boolean;
    function IsSetSubscriptionArn: Boolean;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property AttributeValue: string read GetAttributeValue write SetAttributeValue;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
implementation

{ TSetSubscriptionAttributesRequest }

function TSetSubscriptionAttributesRequest.Obj: TSetSubscriptionAttributesRequest;
begin
  Result := Self;
end;

constructor TSetSubscriptionAttributesRequest.Create(const ASubscriptionArn: string; const AAttributeName: string; const AAttributeValue: string);
begin
  Create;
  SubscriptionArn := ASubscriptionArn;
  AttributeName := AAttributeName;
  AttributeValue := AAttributeValue;
end;

function TSetSubscriptionAttributesRequest.GetAttributeName: string;
begin
  Result := FAttributeName.ValueOrDefault;
end;

procedure TSetSubscriptionAttributesRequest.SetAttributeName(const Value: string);
begin
  FAttributeName := Value;
end;

function TSetSubscriptionAttributesRequest.IsSetAttributeName: Boolean;
begin
  Result := FAttributeName.HasValue;
end;

function TSetSubscriptionAttributesRequest.GetAttributeValue: string;
begin
  Result := FAttributeValue.ValueOrDefault;
end;

procedure TSetSubscriptionAttributesRequest.SetAttributeValue(const Value: string);
begin
  FAttributeValue := Value;
end;

function TSetSubscriptionAttributesRequest.IsSetAttributeValue: Boolean;
begin
  Result := FAttributeValue.HasValue;
end;

function TSetSubscriptionAttributesRequest.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TSetSubscriptionAttributesRequest.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TSetSubscriptionAttributesRequest.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

end.
