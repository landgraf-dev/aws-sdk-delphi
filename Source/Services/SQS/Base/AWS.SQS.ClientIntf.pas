unit AWS.SQS.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.SQS.Model.AddPermissionResponse, 
  AWS.SQS.Model.AddPermissionRequest, 
  System.Generics.Collections, 
  AWS.SQS.Model.ChangeMessageVisibilityResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityRequest, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequest, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry, 
  AWS.SQS.Model.CreateQueueResponse, 
  AWS.SQS.Model.CreateQueueRequest, 
  AWS.SQS.Model.DeleteMessageResponse, 
  AWS.SQS.Model.DeleteMessageRequest, 
  AWS.SQS.Model.DeleteMessageBatchResponse, 
  AWS.SQS.Model.DeleteMessageBatchRequest, 
  AWS.SQS.Model.DeleteMessageBatchRequestEntry, 
  AWS.SQS.Model.DeleteQueueResponse, 
  AWS.SQS.Model.DeleteQueueRequest, 
  AWS.SQS.Model.GetQueueAttributesResponse, 
  AWS.SQS.Model.GetQueueAttributesRequest, 
  AWS.SQS.Model.GetQueueUrlResponse, 
  AWS.SQS.Model.GetQueueUrlRequest, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesResponse, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesRequest, 
  AWS.SQS.Model.ListQueueTagsResponse, 
  AWS.SQS.Model.ListQueueTagsRequest, 
  AWS.SQS.Model.ListQueuesResponse, 
  AWS.SQS.Model.ListQueuesRequest, 
  AWS.SQS.Model.PurgeQueueResponse, 
  AWS.SQS.Model.PurgeQueueRequest, 
  AWS.SQS.Model.ReceiveMessageResponse, 
  AWS.SQS.Model.ReceiveMessageRequest, 
  AWS.SQS.Model.RemovePermissionResponse, 
  AWS.SQS.Model.RemovePermissionRequest, 
  AWS.SQS.Model.SendMessageResponse, 
  AWS.SQS.Model.SendMessageRequest, 
  AWS.SQS.Model.SendMessageBatchResponse, 
  AWS.SQS.Model.SendMessageBatchRequest, 
  AWS.SQS.Model.SendMessageBatchRequestEntry, 
  AWS.SQS.Model.SetQueueAttributesResponse, 
  AWS.SQS.Model.SetQueueAttributesRequest, 
  AWS.SQS.Model.TagQueueResponse, 
  AWS.SQS.Model.TagQueueRequest, 
  AWS.SQS.Model.UntagQueueResponse, 
  AWS.SQS.Model.UntagQueueRequest;

type
  IAmazonSQS = interface(IAmazonService)
    ['{D92AD4A8-B87B-4969-B723-4E3303D08659}']
    function AddPermission(const AQueueUrl: string; const ALabel: string; const AAWSAccountIds: TList<string>; const AActions: TList<string>): IAddPermissionResponse; overload;
    function AddPermission(Request: IAddPermissionRequest): IAddPermissionResponse; overload;
    function ChangeMessageVisibility(const AQueueUrl: string; const AReceiptHandle: string; const AVisibilityTimeout: Integer): IChangeMessageVisibilityResponse; overload;
    function ChangeMessageVisibility(Request: IChangeMessageVisibilityRequest): IChangeMessageVisibilityResponse; overload;
    function ChangeMessageVisibilityBatch(const AQueueUrl: string; const AEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>): IChangeMessageVisibilityBatchResponse; overload;
    function ChangeMessageVisibilityBatch(Request: IChangeMessageVisibilityBatchRequest): IChangeMessageVisibilityBatchResponse; overload;
    function CreateQueue(const AQueueName: string): ICreateQueueResponse; overload;
    function CreateQueue(Request: ICreateQueueRequest): ICreateQueueResponse; overload;
    function DeleteMessage(const AQueueUrl: string; const AReceiptHandle: string): IDeleteMessageResponse; overload;
    function DeleteMessage(Request: IDeleteMessageRequest): IDeleteMessageResponse; overload;
    function DeleteMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TDeleteMessageBatchRequestEntry>): IDeleteMessageBatchResponse; overload;
    function DeleteMessageBatch(Request: IDeleteMessageBatchRequest): IDeleteMessageBatchResponse; overload;
    function DeleteQueue(const AQueueUrl: string): IDeleteQueueResponse; overload;
    function DeleteQueue(Request: IDeleteQueueRequest): IDeleteQueueResponse; overload;
    function GetQueueAttributes(const AQueueUrl: string; const AAttributeNames: TList<string>): IGetQueueAttributesResponse; overload;
    function GetQueueAttributes(Request: IGetQueueAttributesRequest): IGetQueueAttributesResponse; overload;
    function GetQueueUrl(const AQueueName: string): IGetQueueUrlResponse; overload;
    function GetQueueUrl(Request: IGetQueueUrlRequest): IGetQueueUrlResponse; overload;
    function ListDeadLetterSourceQueues(Request: IListDeadLetterSourceQueuesRequest): IListDeadLetterSourceQueuesResponse; overload;
    function ListQueueTags(Request: IListQueueTagsRequest): IListQueueTagsResponse; overload;
    function ListQueues(const AQueueNamePrefix: string): IListQueuesResponse; overload;
    function ListQueues(Request: IListQueuesRequest): IListQueuesResponse; overload;
    function PurgeQueue(const AQueueUrl: string): IPurgeQueueResponse; overload;
    function PurgeQueue(Request: IPurgeQueueRequest): IPurgeQueueResponse; overload;
    function ReceiveMessage(const AQueueUrl: string): IReceiveMessageResponse; overload;
    function ReceiveMessage(Request: IReceiveMessageRequest): IReceiveMessageResponse; overload;
    function RemovePermission(const AQueueUrl: string; const ALabel: string): IRemovePermissionResponse; overload;
    function RemovePermission(Request: IRemovePermissionRequest): IRemovePermissionResponse; overload;
    function SendMessage(const AQueueUrl: string; const AMessageBody: string): ISendMessageResponse; overload;
    function SendMessage(Request: ISendMessageRequest): ISendMessageResponse; overload;
    function SendMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TSendMessageBatchRequestEntry>): ISendMessageBatchResponse; overload;
    function SendMessageBatch(Request: ISendMessageBatchRequest): ISendMessageBatchResponse; overload;
    function SetQueueAttributes(const AQueueUrl: string; const AAttributes: TDictionary<string, string>): ISetQueueAttributesResponse; overload;
    function SetQueueAttributes(Request: ISetQueueAttributesRequest): ISetQueueAttributesResponse; overload;
    function TagQueue(Request: ITagQueueRequest): ITagQueueResponse; overload;
    function UntagQueue(Request: IUntagQueueRequest): IUntagQueueResponse; overload;
  end;
  
implementation

end.
