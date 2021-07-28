unit AWS.SES.Transform.ListVerifiedEmailAddressesResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.ListVerifiedEmailAddressesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SES.Exception;

type
  IListVerifiedEmailAddressesResponseUnmarshaller = IResponseUnmarshaller;
  
  TListVerifiedEmailAddressesResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListVerifiedEmailAddressesResponseUnmarshaller)
  strict private
    class var FInstance: IListVerifiedEmailAddressesResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListVerifiedEmailAddressesResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListVerifiedEmailAddressesResponseUnmarshaller; static;
  end;
  
implementation

{ TListVerifiedEmailAddressesResponseUnmarshaller }

function TListVerifiedEmailAddressesResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListVerifiedEmailAddressesResponse;
  TargetDepth: Integer;
begin
  Response := TListVerifiedEmailAddressesResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListVerifiedEmailAddressesResult', 2) then
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

class procedure TListVerifiedEmailAddressesResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListVerifiedEmailAddressesResponse);
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
      if AContext.TestExpression('VerifiedEmailAddresses/member', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.VerifiedEmailAddresses.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
end;

function TListVerifiedEmailAddressesResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonSimpleEmailServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListVerifiedEmailAddressesResponseUnmarshaller.Create;
begin
  FInstance := TListVerifiedEmailAddressesResponseUnmarshaller.Create;
end;

class function TListVerifiedEmailAddressesResponseUnmarshaller.Instance: IListVerifiedEmailAddressesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
