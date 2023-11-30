unit AWS.SNS.Model.GetTopicAttributesRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TGetTopicAttributesRequest = class;
  
  IGetTopicAttributesRequest = interface
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TGetTopicAttributesRequest;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TGetTopicAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, IGetTopicAttributesRequest)
  strict private
    FTopicArn: Nullable<string>;
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TGetTopicAttributesRequest;
  public
    constructor Create(const ATopicArn: string); overload;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TGetTopicAttributesRequest }

function TGetTopicAttributesRequest.Obj: TGetTopicAttributesRequest;
begin
  Result := Self;
end;

constructor TGetTopicAttributesRequest.Create(const ATopicArn: string);
begin
  Create;
  TopicArn := ATopicArn;
end;

function TGetTopicAttributesRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TGetTopicAttributesRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TGetTopicAttributesRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
