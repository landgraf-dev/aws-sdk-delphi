unit AWS.SNS.Model.SetTopicAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TSetTopicAttributesRequest = class;
  
  ISetTopicAttributesRequest = interface
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetAttributeValue: string;
    procedure SetAttributeValue(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TSetTopicAttributesRequest;
    function IsSetAttributeName: Boolean;
    function IsSetAttributeValue: Boolean;
    function IsSetTopicArn: Boolean;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property AttributeValue: string read GetAttributeValue write SetAttributeValue;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TSetTopicAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetTopicAttributesRequest)
  strict private
    FAttributeName: Nullable<string>;
    FAttributeValue: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetAttributeName: string;
    procedure SetAttributeName(const Value: string);
    function GetAttributeValue: string;
    procedure SetAttributeValue(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TSetTopicAttributesRequest;
  public
    constructor Create(const ATopicArn: string; const AAttributeName: string; const AAttributeValue: string); overload;
    function IsSetAttributeName: Boolean;
    function IsSetAttributeValue: Boolean;
    function IsSetTopicArn: Boolean;
    property AttributeName: string read GetAttributeName write SetAttributeName;
    property AttributeValue: string read GetAttributeValue write SetAttributeValue;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TSetTopicAttributesRequest }

function TSetTopicAttributesRequest.Obj: TSetTopicAttributesRequest;
begin
  Result := Self;
end;

constructor TSetTopicAttributesRequest.Create(const ATopicArn: string; const AAttributeName: string; const AAttributeValue: string);
begin
  inherited Create;
  TopicArn := ATopicArn;
  AttributeName := AAttributeName;
  AttributeValue := AAttributeValue;
end;

function TSetTopicAttributesRequest.GetAttributeName: string;
begin
  Result := FAttributeName.ValueOrDefault;
end;

procedure TSetTopicAttributesRequest.SetAttributeName(const Value: string);
begin
  FAttributeName := Value;
end;

function TSetTopicAttributesRequest.IsSetAttributeName: Boolean;
begin
  Result := FAttributeName.HasValue;
end;

function TSetTopicAttributesRequest.GetAttributeValue: string;
begin
  Result := FAttributeValue.ValueOrDefault;
end;

procedure TSetTopicAttributesRequest.SetAttributeValue(const Value: string);
begin
  FAttributeValue := Value;
end;

function TSetTopicAttributesRequest.IsSetAttributeValue: Boolean;
begin
  Result := FAttributeValue.HasValue;
end;

function TSetTopicAttributesRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TSetTopicAttributesRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TSetTopicAttributesRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
