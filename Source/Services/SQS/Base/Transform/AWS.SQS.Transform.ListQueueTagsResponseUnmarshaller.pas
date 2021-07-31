unit AWS.SQS.Transform.ListQueueTagsResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SQS.Model.ListQueueTagsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SQS.Exception;

type
  IListQueueTagsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListQueueTagsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListQueueTagsResponseUnmarshaller)
  strict private
    class var FInstance: IListQueueTagsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListQueueTagsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListQueueTagsResponseUnmarshaller; static;
  end;
  
implementation

{ TListQueueTagsResponseUnmarshaller }

function TListQueueTagsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListQueueTagsResponse;
  TargetDepth: Integer;
begin
  Response := TListQueueTagsResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListQueueTagsResult', 2) then
        begin
          UnmarshallResult(AContext, Response);
          Continue;
        end;
        if AContext.TestExpression('ResponseMetadata', 2) then
          Response.ResponseMetadata := TResponseMetadataUnmarshaller.Instance.Unmarshall(AContext);
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TListQueueTagsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListQueueTagsResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 2);
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
      if AContext.TestExpression('Tag', TargetDepth) then
      begin
        var Unmarshaller := TKeyValueUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
        var item := Unmarshaller.Unmarshall(AContext);
        AResponse.Tags.Add(item.Key, item.Value);
        Continue;
      end;
end;

function TListQueueTagsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSQSException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListQueueTagsResponseUnmarshaller.Create;
begin
  FInstance := TListQueueTagsResponseUnmarshaller.Create;
end;

class function TListQueueTagsResponseUnmarshaller.Instance: IListQueueTagsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
