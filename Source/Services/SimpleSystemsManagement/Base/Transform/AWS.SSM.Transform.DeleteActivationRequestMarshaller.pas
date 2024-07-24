unit AWS.SSM.Transform.DeleteActivationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteActivationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteActivationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteActivationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteActivationRequest>, IDeleteActivationRequestMarshaller)
  strict private
    class var FInstance: IDeleteActivationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteActivationRequest): IRequest; overload;
    class function Instance: IDeleteActivationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteActivationRequestMarshaller }

function TDeleteActivationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteActivationRequest(AInput));
end;

function TDeleteActivationRequestMarshaller.Marshall(PublicRequest: TDeleteActivationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteActivation');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetActivationId then
        begin
          Context.Writer.WriteName('ActivationId');
          Context.Writer.WriteString(PublicRequest.ActivationId);
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

class constructor TDeleteActivationRequestMarshaller.Create;
begin
  FInstance := TDeleteActivationRequestMarshaller.Create;
end;

class function TDeleteActivationRequestMarshaller.Instance: IDeleteActivationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
