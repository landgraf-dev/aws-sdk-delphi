unit AWS.SQS.Model.GetQueueUrlResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetQueueUrlResponse = class;
  
  IGetQueueUrlResponse = interface(IAmazonWebServiceResponse)
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TGetQueueUrlResponse;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TGetQueueUrlResponse = class(TAmazonWebServiceResponse, IGetQueueUrlResponse)
  strict private
    FQueueUrl: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TGetQueueUrlResponse;
  public
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TGetQueueUrlResponse }

function TGetQueueUrlResponse.Obj: TGetQueueUrlResponse;
begin
  Result := Self;
end;

function TGetQueueUrlResponse.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TGetQueueUrlResponse.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TGetQueueUrlResponse.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
