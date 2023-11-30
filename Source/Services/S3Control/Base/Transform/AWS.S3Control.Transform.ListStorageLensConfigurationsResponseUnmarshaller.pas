unit AWS.S3Control.Transform.ListStorageLensConfigurationsResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.ListStorageLensConfigurationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.ListStorageLensConfigurationEntryUnmarshaller, 
  AWS.S3Control.Model.ListStorageLensConfigurationEntry, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IListStorageLensConfigurationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListStorageLensConfigurationsResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListStorageLensConfigurationsResponseUnmarshaller)
  strict private
    class var FInstance: IListStorageLensConfigurationsResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListStorageLensConfigurationsResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListStorageLensConfigurationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListStorageLensConfigurationsResponseUnmarshaller }

function TListStorageLensConfigurationsResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListStorageLensConfigurationsResponse;
begin
  Response := TListStorageLensConfigurationsResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListStorageLensConfigurationsResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListStorageLensConfigurationsResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 1);
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StorageLensConfiguration', TargetDepth) then
      begin
        var Unmarshaller := TListStorageLensConfigurationEntryUnmarshaller.Instance;
        AResponse.StorageLensConfigurationList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListStorageLensConfigurationsResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListStorageLensConfigurationsResponseUnmarshaller.Create;
begin
  FInstance := TListStorageLensConfigurationsResponseUnmarshaller.Create;
end;

class function TListStorageLensConfigurationsResponseUnmarshaller.Instance: IListStorageLensConfigurationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
