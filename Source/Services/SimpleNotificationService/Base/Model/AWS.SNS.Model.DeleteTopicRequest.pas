unit AWS.SNS.Model.DeleteTopicRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TDeleteTopicRequest = class;
  
  IDeleteTopicRequest = interface
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TDeleteTopicRequest;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TDeleteTopicRequest = class(TAmazonSimpleNotificationServiceRequest, IDeleteTopicRequest)
  strict private
    FTopicArn: Nullable<string>;
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TDeleteTopicRequest;
  public
    constructor Create(const ATopicArn: string); overload;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TDeleteTopicRequest }

function TDeleteTopicRequest.Obj: TDeleteTopicRequest;
begin
  Result := Self;
end;

constructor TDeleteTopicRequest.Create(const ATopicArn: string);
begin
  Create;
  TopicArn := ATopicArn;
end;

function TDeleteTopicRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TDeleteTopicRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TDeleteTopicRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
