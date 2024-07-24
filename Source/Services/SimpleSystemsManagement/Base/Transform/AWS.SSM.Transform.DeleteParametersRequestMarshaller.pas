unit AWS.SSM.Transform.DeleteParametersRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteParametersRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteParametersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteParametersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteParametersRequest>, IDeleteParametersRequestMarshaller)
  strict private
    class var FInstance: IDeleteParametersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteParametersRequest): IRequest; overload;
    class function Instance: IDeleteParametersRequestMarshaller; static;
  end;
  
implementation

{ TDeleteParametersRequestMarshaller }

function TDeleteParametersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteParametersRequest(AInput));
end;

function TDeleteParametersRequestMarshaller.Marshall(PublicRequest: TDeleteParametersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteParameters');
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
        if PublicRequest.IsSetNames then
        begin
          Context.Writer.WriteName('Names');
          Context.Writer.WriteBeginArray;
          for var PublicRequestNamesListValue in PublicRequest.Names do
            Context.Writer.WriteString(PublicRequestNamesListValue);
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

class constructor TDeleteParametersRequestMarshaller.Create;
begin
  FInstance := TDeleteParametersRequestMarshaller.Create;
end;

class function TDeleteParametersRequestMarshaller.Instance: IDeleteParametersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
