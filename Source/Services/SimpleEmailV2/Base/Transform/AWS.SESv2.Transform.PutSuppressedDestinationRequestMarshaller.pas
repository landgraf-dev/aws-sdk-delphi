unit AWS.SESv2.Transform.PutSuppressedDestinationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutSuppressedDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IPutSuppressedDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutSuppressedDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutSuppressedDestinationRequest>, IPutSuppressedDestinationRequestMarshaller)
  strict private
    class var FInstance: IPutSuppressedDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutSuppressedDestinationRequest): IRequest; overload;
    class function Instance: IPutSuppressedDestinationRequestMarshaller; static;
  end;
  
implementation

{ TPutSuppressedDestinationRequestMarshaller }

function TPutSuppressedDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutSuppressedDestinationRequest(AInput));
end;

function TPutSuppressedDestinationRequestMarshaller.Marshall(PublicRequest: TPutSuppressedDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  Request.ResourcePath := '/v2/email/suppression/addresses';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetEmailAddress then
        begin
          Context.Writer.WriteName('EmailAddress');
          Context.Writer.WriteString(PublicRequest.EmailAddress);
        end;
        if PublicRequest.IsSetReason then
        begin
          Context.Writer.WriteName('Reason');
          Context.Writer.WriteString(PublicRequest.Reason.Value);
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

class constructor TPutSuppressedDestinationRequestMarshaller.Create;
begin
  FInstance := TPutSuppressedDestinationRequestMarshaller.Create;
end;

class function TPutSuppressedDestinationRequestMarshaller.Instance: IPutSuppressedDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
