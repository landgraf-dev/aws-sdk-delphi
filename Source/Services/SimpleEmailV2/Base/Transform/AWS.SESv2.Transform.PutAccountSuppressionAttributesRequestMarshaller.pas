unit AWS.SESv2.Transform.PutAccountSuppressionAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IPutAccountSuppressionAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccountSuppressionAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccountSuppressionAttributesRequest>, IPutAccountSuppressionAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutAccountSuppressionAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccountSuppressionAttributesRequest): IRequest; overload;
    class function Instance: IPutAccountSuppressionAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutAccountSuppressionAttributesRequestMarshaller }

function TPutAccountSuppressionAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccountSuppressionAttributesRequest(AInput));
end;

function TPutAccountSuppressionAttributesRequestMarshaller.Marshall(PublicRequest: TPutAccountSuppressionAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  Request.ResourcePath := '/v2/email/account/suppression';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSuppressedReasons then
        begin
          Context.Writer.WriteName('SuppressedReasons');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSuppressedReasonsListValue in PublicRequest.SuppressedReasons do
            Context.Writer.WriteString(PublicRequestSuppressedReasonsListValue);
          Context.Writer.WriteEndArray;
        end;
        Writer.WriteEndObject;
        Writer.Flush;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
  Result := Request;
end;

class constructor TPutAccountSuppressionAttributesRequestMarshaller.Create;
begin
  FInstance := TPutAccountSuppressionAttributesRequestMarshaller.Create;
end;

class function TPutAccountSuppressionAttributesRequestMarshaller.Instance: IPutAccountSuppressionAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
