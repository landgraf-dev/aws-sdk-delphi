unit AWS.SNS.Model.ListSubscriptionsByTopicRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TListSubscriptionsByTopicRequest = class;
  
  IListSubscriptionsByTopicRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TListSubscriptionsByTopicRequest;
    function IsSetNextToken: Boolean;
    function IsSetTopicArn: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TListSubscriptionsByTopicRequest = class(TAmazonSimpleNotificationServiceRequest, IListSubscriptionsByTopicRequest)
  strict private
    FNextToken: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TListSubscriptionsByTopicRequest;
  public
    constructor Create(const ATopicArn: string); overload;
    constructor Create(const ATopicArn: string; const ANextToken: string); overload;
    function IsSetNextToken: Boolean;
    function IsSetTopicArn: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TListSubscriptionsByTopicRequest }

function TListSubscriptionsByTopicRequest.Obj: TListSubscriptionsByTopicRequest;
begin
  Result := Self;
end;

constructor TListSubscriptionsByTopicRequest.Create(const ATopicArn: string);
begin
  inherited Create;
  TopicArn := ATopicArn;
end;

constructor TListSubscriptionsByTopicRequest.Create(const ATopicArn: string; const ANextToken: string);
begin
  inherited Create;
  TopicArn := ATopicArn;
  NextToken := ANextToken;
end;

function TListSubscriptionsByTopicRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSubscriptionsByTopicRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSubscriptionsByTopicRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSubscriptionsByTopicRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TListSubscriptionsByTopicRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TListSubscriptionsByTopicRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
