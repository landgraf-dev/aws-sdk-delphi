unit AWS.SSM.Transform.CancelCommandRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CancelCommandRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ICancelCommandRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCancelCommandRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCancelCommandRequest>, ICancelCommandRequestMarshaller)
  strict private
    class var FInstance: ICancelCommandRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCancelCommandRequest): IRequest; overload;
    class function Instance: ICancelCommandRequestMarshaller; static;
  end;
  
implementation

{ TCancelCommandRequestMarshaller }

function TCancelCommandRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCancelCommandRequest(AInput));
end;

function TCancelCommandRequestMarshaller.Marshall(PublicRequest: TCancelCommandRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CancelCommand');
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
        if PublicRequest.IsSetCommandId then
        begin
          Context.Writer.WriteName('CommandId');
          Context.Writer.WriteString(PublicRequest.CommandId);
        end;
        if PublicRequest.IsSetInstanceIds then
        begin
          Context.Writer.WriteName('InstanceIds');
          Context.Writer.WriteBeginArray;
          for var PublicRequestInstanceIdsListValue in PublicRequest.InstanceIds do
            Context.Writer.WriteString(PublicRequestInstanceIdsListValue);
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

class constructor TCancelCommandRequestMarshaller.Create;
begin
  FInstance := TCancelCommandRequestMarshaller.Create;
end;

class function TCancelCommandRequestMarshaller.Instance: ICancelCommandRequestMarshaller;
begin
  Result := FInstance;
end;

end.
