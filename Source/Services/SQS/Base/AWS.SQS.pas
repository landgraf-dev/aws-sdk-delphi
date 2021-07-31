unit AWS.SQS;

interface

uses
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry, 
  AWS.SQS.Model.RemovePermissionResponse, 
  AWS.SQS.Model.PurgeQueueResponse, 
  AWS.SQS.Model.GetQueueUrlResponse, 
  AWS.SQS.Model.DeleteMessageBatchRequestEntry, 
  AWS.SQS.Model.UnsupportedOperationException, 
  AWS.SQS.Enums, 
  AWS.SQS.Model.InvalidBatchEntryIdException, 
  AWS.SQS.Model.DeleteMessageResponse, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesRequest, 
  AWS.SQS.Model.ChangeMessageVisibilityResponse, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesResponse, 
  AWS.SQS.Model.SendMessageResponse, 
  AWS.SQS.Model.SendMessageBatchResponse, 
  AWS.SQS.Model.BatchResultErrorEntry, 
  AWS.SQS.Model.ChangeMessageVisibilityRequest, 
  AWS.SQS.Model.BatchRequestTooLongException, 
  AWS.SQS.Model.SendMessageBatchRequest, 
  AWS.SQS.Model.TagQueueRequest, 
  AWS.SQS.Model.ListQueuesResponse, 
  AWS.SQS.Model.RemovePermissionRequest, 
  AWS.SQS.Model.PurgeQueueRequest, 
  AWS.SQS.Model.SetQueueAttributesResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry, 
  AWS.SQS.Model.CreateQueueRequest, 
  AWS.SQS.Model.TooManyEntriesInBatchRequestException, 
  AWS.SQS.Model.GetQueueUrlRequest, 
  AWS.SQS.Model.AddPermissionResponse, 
  AWS.SQS.Model.ReceiveMessageResponse, 
  AWS.SQS.Model.PurgeQueueInProgressException, 
  AWS.SQS.Model.TagQueueResponse, 
  AWS.SQS.Model.AddPermissionRequest, 
  AWS.SQS.Model.MessageNotInflightException, 
  AWS.SQS.Model.ListQueueTagsResponse, 
  AWS.SQS.Model.ListQueueTagsRequest, 
  AWS.SQS.Model.DeleteMessageRequest, 
  AWS.SQS.Model.SendMessageBatchResultEntry, 
  AWS.SQS.Model.SetQueueAttributesRequest, 
  AWS.SQS.Config, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequest, 
  AWS.SQS.Model.DeleteMessageBatchResultEntry, 
  AWS.SQS.Model.Message, 
  AWS.SQS.Model.GetQueueAttributesResponse, 
  AWS.SQS.Model.DeleteQueueRequest, 
  AWS.SQS.Model.DeleteMessageBatchRequest, 
  AWS.SQS.Metadata, 
  AWS.SQS.Model.DeleteMessageBatchResponse, 
  AWS.SQS.Client, 
  AWS.SQS.Model.SendMessageRequest, 
  AWS.SQS.Model.UntagQueueResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchResponse, 
  AWS.SQS.Model.GetQueueAttributesRequest, 
  AWS.SQS.Model.ReceiptHandleIsInvalidException, 
  AWS.SQS.Model.InvalidMessageContentsException, 
  AWS.SQS.Model.MessageAttributeValue, 
  AWS.SQS.Model.MessageSystemAttributeValue, 
  AWS.SQS.Model.QueueDeletedRecentlyException, 
  AWS.SQS.Model.ReceiveMessageRequest, 
  AWS.SQS.Model.UntagQueueRequest, 
  AWS.SQS.Model.ListQueuesRequest, 
  AWS.SQS.Model.CreateQueueResponse, 
  AWS.SQS.Model.QueueDoesNotExistException, 
  AWS.SQS.Model.DeleteQueueResponse, 
  AWS.SQS.Model.SendMessageBatchRequestEntry, 
  AWS.SQS.Exception, 
  AWS.SQS.Model.BatchEntryIdsNotDistinctException, 
  AWS.SQS.Model.InvalidIdFormatException, 
  AWS.SQS.Model.QueueNameExistsException, 
  AWS.SQS.ClientIntf, 
  AWS.SQS.Model.EmptyBatchRequestException, 
  AWS.SQS.Model.Request, 
  AWS.SQS.Model.InvalidAttributeNameException, 
  AWS.SQS.Model.OverLimitException;

type
  EAmazonSQSException = AWS.SQS.Exception.EAmazonSQSException;
  EBatchEntryIdsNotDistinctException = AWS.SQS.Model.BatchEntryIdsNotDistinctException.EBatchEntryIdsNotDistinctException;
  EBatchRequestTooLongException = AWS.SQS.Model.BatchRequestTooLongException.EBatchRequestTooLongException;
  EEmptyBatchRequestException = AWS.SQS.Model.EmptyBatchRequestException.EEmptyBatchRequestException;
  EInvalidAttributeNameException = AWS.SQS.Model.InvalidAttributeNameException.EInvalidAttributeNameException;
  EInvalidBatchEntryIdException = AWS.SQS.Model.InvalidBatchEntryIdException.EInvalidBatchEntryIdException;
  EInvalidIdFormatException = AWS.SQS.Model.InvalidIdFormatException.EInvalidIdFormatException;
  EInvalidMessageContentsException = AWS.SQS.Model.InvalidMessageContentsException.EInvalidMessageContentsException;
  EMessageNotInflightException = AWS.SQS.Model.MessageNotInflightException.EMessageNotInflightException;
  EOverLimitException = AWS.SQS.Model.OverLimitException.EOverLimitException;
  EPurgeQueueInProgressException = AWS.SQS.Model.PurgeQueueInProgressException.EPurgeQueueInProgressException;
  EQueueDeletedRecentlyException = AWS.SQS.Model.QueueDeletedRecentlyException.EQueueDeletedRecentlyException;
  EQueueDoesNotExistException = AWS.SQS.Model.QueueDoesNotExistException.EQueueDoesNotExistException;
  EQueueNameExistsException = AWS.SQS.Model.QueueNameExistsException.EQueueNameExistsException;
  EReceiptHandleIsInvalidException = AWS.SQS.Model.ReceiptHandleIsInvalidException.EReceiptHandleIsInvalidException;
  ETooManyEntriesInBatchRequestException = AWS.SQS.Model.TooManyEntriesInBatchRequestException.ETooManyEntriesInBatchRequestException;
  EUnsupportedOperationException = AWS.SQS.Model.UnsupportedOperationException.EUnsupportedOperationException;
  IAddPermissionRequest = AWS.SQS.Model.AddPermissionRequest.IAddPermissionRequest;
  IAddPermissionResponse = AWS.SQS.Model.AddPermissionResponse.IAddPermissionResponse;
  IAmazonSQS = AWS.SQS.ClientIntf.IAmazonSQS;
  IBatchResultErrorEntry = AWS.SQS.Model.BatchResultErrorEntry.IBatchResultErrorEntry;
  IChangeMessageVisibilityBatchRequest = AWS.SQS.Model.ChangeMessageVisibilityBatchRequest.IChangeMessageVisibilityBatchRequest;
  IChangeMessageVisibilityBatchRequestEntry = AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry.IChangeMessageVisibilityBatchRequestEntry;
  IChangeMessageVisibilityBatchResponse = AWS.SQS.Model.ChangeMessageVisibilityBatchResponse.IChangeMessageVisibilityBatchResponse;
  IChangeMessageVisibilityBatchResultEntry = AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry.IChangeMessageVisibilityBatchResultEntry;
  IChangeMessageVisibilityRequest = AWS.SQS.Model.ChangeMessageVisibilityRequest.IChangeMessageVisibilityRequest;
  IChangeMessageVisibilityResponse = AWS.SQS.Model.ChangeMessageVisibilityResponse.IChangeMessageVisibilityResponse;
  ICreateQueueRequest = AWS.SQS.Model.CreateQueueRequest.ICreateQueueRequest;
  ICreateQueueResponse = AWS.SQS.Model.CreateQueueResponse.ICreateQueueResponse;
  IDeleteMessageBatchRequest = AWS.SQS.Model.DeleteMessageBatchRequest.IDeleteMessageBatchRequest;
  IDeleteMessageBatchRequestEntry = AWS.SQS.Model.DeleteMessageBatchRequestEntry.IDeleteMessageBatchRequestEntry;
  IDeleteMessageBatchResponse = AWS.SQS.Model.DeleteMessageBatchResponse.IDeleteMessageBatchResponse;
  IDeleteMessageBatchResultEntry = AWS.SQS.Model.DeleteMessageBatchResultEntry.IDeleteMessageBatchResultEntry;
  IDeleteMessageRequest = AWS.SQS.Model.DeleteMessageRequest.IDeleteMessageRequest;
  IDeleteMessageResponse = AWS.SQS.Model.DeleteMessageResponse.IDeleteMessageResponse;
  IDeleteQueueRequest = AWS.SQS.Model.DeleteQueueRequest.IDeleteQueueRequest;
  IDeleteQueueResponse = AWS.SQS.Model.DeleteQueueResponse.IDeleteQueueResponse;
  IGetQueueAttributesRequest = AWS.SQS.Model.GetQueueAttributesRequest.IGetQueueAttributesRequest;
  IGetQueueAttributesResponse = AWS.SQS.Model.GetQueueAttributesResponse.IGetQueueAttributesResponse;
  IGetQueueUrlRequest = AWS.SQS.Model.GetQueueUrlRequest.IGetQueueUrlRequest;
  IGetQueueUrlResponse = AWS.SQS.Model.GetQueueUrlResponse.IGetQueueUrlResponse;
  IListDeadLetterSourceQueuesRequest = AWS.SQS.Model.ListDeadLetterSourceQueuesRequest.IListDeadLetterSourceQueuesRequest;
  IListDeadLetterSourceQueuesResponse = AWS.SQS.Model.ListDeadLetterSourceQueuesResponse.IListDeadLetterSourceQueuesResponse;
  IListQueuesRequest = AWS.SQS.Model.ListQueuesRequest.IListQueuesRequest;
  IListQueuesResponse = AWS.SQS.Model.ListQueuesResponse.IListQueuesResponse;
  IListQueueTagsRequest = AWS.SQS.Model.ListQueueTagsRequest.IListQueueTagsRequest;
  IListQueueTagsResponse = AWS.SQS.Model.ListQueueTagsResponse.IListQueueTagsResponse;
  IMessage = AWS.SQS.Model.Message.IMessage;
  IMessageAttributeValue = AWS.SQS.Model.MessageAttributeValue.IMessageAttributeValue;
  IMessageSystemAttributeValue = AWS.SQS.Model.MessageSystemAttributeValue.IMessageSystemAttributeValue;
  IPurgeQueueRequest = AWS.SQS.Model.PurgeQueueRequest.IPurgeQueueRequest;
  IPurgeQueueResponse = AWS.SQS.Model.PurgeQueueResponse.IPurgeQueueResponse;
  IReceiveMessageRequest = AWS.SQS.Model.ReceiveMessageRequest.IReceiveMessageRequest;
  IReceiveMessageResponse = AWS.SQS.Model.ReceiveMessageResponse.IReceiveMessageResponse;
  IRemovePermissionRequest = AWS.SQS.Model.RemovePermissionRequest.IRemovePermissionRequest;
  IRemovePermissionResponse = AWS.SQS.Model.RemovePermissionResponse.IRemovePermissionResponse;
  ISendMessageBatchRequest = AWS.SQS.Model.SendMessageBatchRequest.ISendMessageBatchRequest;
  ISendMessageBatchRequestEntry = AWS.SQS.Model.SendMessageBatchRequestEntry.ISendMessageBatchRequestEntry;
  ISendMessageBatchResponse = AWS.SQS.Model.SendMessageBatchResponse.ISendMessageBatchResponse;
  ISendMessageBatchResultEntry = AWS.SQS.Model.SendMessageBatchResultEntry.ISendMessageBatchResultEntry;
  ISendMessageRequest = AWS.SQS.Model.SendMessageRequest.ISendMessageRequest;
  ISendMessageResponse = AWS.SQS.Model.SendMessageResponse.ISendMessageResponse;
  ISetQueueAttributesRequest = AWS.SQS.Model.SetQueueAttributesRequest.ISetQueueAttributesRequest;
  ISetQueueAttributesResponse = AWS.SQS.Model.SetQueueAttributesResponse.ISetQueueAttributesResponse;
  ITagQueueRequest = AWS.SQS.Model.TagQueueRequest.ITagQueueRequest;
  ITagQueueResponse = AWS.SQS.Model.TagQueueResponse.ITagQueueResponse;
  IUntagQueueRequest = AWS.SQS.Model.UntagQueueRequest.IUntagQueueRequest;
  IUntagQueueResponse = AWS.SQS.Model.UntagQueueResponse.IUntagQueueResponse;
  TAddPermissionRequest = AWS.SQS.Model.AddPermissionRequest.TAddPermissionRequest;
  TAddPermissionResponse = AWS.SQS.Model.AddPermissionResponse.TAddPermissionResponse;
  TAmazonSQSClient = AWS.SQS.Client.TAmazonSQSClient;
  TAmazonSQSConfig = AWS.SQS.Config.TAmazonSQSConfig;
  TAmazonSQSMetadata = AWS.SQS.Metadata.TAmazonSQSMetadata;
  TAmazonSQSRequest = AWS.SQS.Model.Request.TAmazonSQSRequest;
  TBatchResultErrorEntry = AWS.SQS.Model.BatchResultErrorEntry.TBatchResultErrorEntry;
  TChangeMessageVisibilityBatchRequest = AWS.SQS.Model.ChangeMessageVisibilityBatchRequest.TChangeMessageVisibilityBatchRequest;
  TChangeMessageVisibilityBatchRequestEntry = AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry.TChangeMessageVisibilityBatchRequestEntry;
  TChangeMessageVisibilityBatchResponse = AWS.SQS.Model.ChangeMessageVisibilityBatchResponse.TChangeMessageVisibilityBatchResponse;
  TChangeMessageVisibilityBatchResultEntry = AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry.TChangeMessageVisibilityBatchResultEntry;
  TChangeMessageVisibilityRequest = AWS.SQS.Model.ChangeMessageVisibilityRequest.TChangeMessageVisibilityRequest;
  TChangeMessageVisibilityResponse = AWS.SQS.Model.ChangeMessageVisibilityResponse.TChangeMessageVisibilityResponse;
  TCreateQueueRequest = AWS.SQS.Model.CreateQueueRequest.TCreateQueueRequest;
  TCreateQueueResponse = AWS.SQS.Model.CreateQueueResponse.TCreateQueueResponse;
  TDeleteMessageBatchRequest = AWS.SQS.Model.DeleteMessageBatchRequest.TDeleteMessageBatchRequest;
  TDeleteMessageBatchRequestEntry = AWS.SQS.Model.DeleteMessageBatchRequestEntry.TDeleteMessageBatchRequestEntry;
  TDeleteMessageBatchResponse = AWS.SQS.Model.DeleteMessageBatchResponse.TDeleteMessageBatchResponse;
  TDeleteMessageBatchResultEntry = AWS.SQS.Model.DeleteMessageBatchResultEntry.TDeleteMessageBatchResultEntry;
  TDeleteMessageRequest = AWS.SQS.Model.DeleteMessageRequest.TDeleteMessageRequest;
  TDeleteMessageResponse = AWS.SQS.Model.DeleteMessageResponse.TDeleteMessageResponse;
  TDeleteQueueRequest = AWS.SQS.Model.DeleteQueueRequest.TDeleteQueueRequest;
  TDeleteQueueResponse = AWS.SQS.Model.DeleteQueueResponse.TDeleteQueueResponse;
  TGetQueueAttributesRequest = AWS.SQS.Model.GetQueueAttributesRequest.TGetQueueAttributesRequest;
  TGetQueueAttributesResponse = AWS.SQS.Model.GetQueueAttributesResponse.TGetQueueAttributesResponse;
  TGetQueueUrlRequest = AWS.SQS.Model.GetQueueUrlRequest.TGetQueueUrlRequest;
  TGetQueueUrlResponse = AWS.SQS.Model.GetQueueUrlResponse.TGetQueueUrlResponse;
  TListDeadLetterSourceQueuesRequest = AWS.SQS.Model.ListDeadLetterSourceQueuesRequest.TListDeadLetterSourceQueuesRequest;
  TListDeadLetterSourceQueuesResponse = AWS.SQS.Model.ListDeadLetterSourceQueuesResponse.TListDeadLetterSourceQueuesResponse;
  TListQueuesRequest = AWS.SQS.Model.ListQueuesRequest.TListQueuesRequest;
  TListQueuesResponse = AWS.SQS.Model.ListQueuesResponse.TListQueuesResponse;
  TListQueueTagsRequest = AWS.SQS.Model.ListQueueTagsRequest.TListQueueTagsRequest;
  TListQueueTagsResponse = AWS.SQS.Model.ListQueueTagsResponse.TListQueueTagsResponse;
  TMessage = AWS.SQS.Model.Message.TMessage;
  TMessageAttributeValue = AWS.SQS.Model.MessageAttributeValue.TMessageAttributeValue;
  TMessageSystemAttributeName = AWS.SQS.Enums.TMessageSystemAttributeName;
  TMessageSystemAttributeNameForSends = AWS.SQS.Enums.TMessageSystemAttributeNameForSends;
  TMessageSystemAttributeValue = AWS.SQS.Model.MessageSystemAttributeValue.TMessageSystemAttributeValue;
  TPurgeQueueRequest = AWS.SQS.Model.PurgeQueueRequest.TPurgeQueueRequest;
  TPurgeQueueResponse = AWS.SQS.Model.PurgeQueueResponse.TPurgeQueueResponse;
  TQueueAttributeName = AWS.SQS.Enums.TQueueAttributeName;
  TReceiveMessageRequest = AWS.SQS.Model.ReceiveMessageRequest.TReceiveMessageRequest;
  TReceiveMessageResponse = AWS.SQS.Model.ReceiveMessageResponse.TReceiveMessageResponse;
  TRemovePermissionRequest = AWS.SQS.Model.RemovePermissionRequest.TRemovePermissionRequest;
  TRemovePermissionResponse = AWS.SQS.Model.RemovePermissionResponse.TRemovePermissionResponse;
  TSendMessageBatchRequest = AWS.SQS.Model.SendMessageBatchRequest.TSendMessageBatchRequest;
  TSendMessageBatchRequestEntry = AWS.SQS.Model.SendMessageBatchRequestEntry.TSendMessageBatchRequestEntry;
  TSendMessageBatchResponse = AWS.SQS.Model.SendMessageBatchResponse.TSendMessageBatchResponse;
  TSendMessageBatchResultEntry = AWS.SQS.Model.SendMessageBatchResultEntry.TSendMessageBatchResultEntry;
  TSendMessageRequest = AWS.SQS.Model.SendMessageRequest.TSendMessageRequest;
  TSendMessageResponse = AWS.SQS.Model.SendMessageResponse.TSendMessageResponse;
  TSetQueueAttributesRequest = AWS.SQS.Model.SetQueueAttributesRequest.TSetQueueAttributesRequest;
  TSetQueueAttributesResponse = AWS.SQS.Model.SetQueueAttributesResponse.TSetQueueAttributesResponse;
  TTagQueueRequest = AWS.SQS.Model.TagQueueRequest.TTagQueueRequest;
  TTagQueueResponse = AWS.SQS.Model.TagQueueResponse.TTagQueueResponse;
  TUntagQueueRequest = AWS.SQS.Model.UntagQueueRequest.TUntagQueueRequest;
  TUntagQueueResponse = AWS.SQS.Model.UntagQueueResponse.TUntagQueueResponse;
  
implementation

end.
