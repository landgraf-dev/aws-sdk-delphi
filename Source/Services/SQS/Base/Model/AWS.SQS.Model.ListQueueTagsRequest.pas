unit AWS.SQS.Model.ListQueueTagsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TListQueueTagsRequest = class;
  
  IListQueueTagsRequest = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TListQueueTagsRequest;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TListQueueTagsRequest = class(TAmazonSQSRequest, IListQueueTagsRequest)
  strict private
    FQueueUrl: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TListQueueTagsRequest;
  public
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TListQueueTagsRequest }

function TListQueueTagsRequest.Obj: TListQueueTagsRequest;
begin
  Result := Self;
end;

function TListQueueTagsRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TListQueueTagsRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TListQueueTagsRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
