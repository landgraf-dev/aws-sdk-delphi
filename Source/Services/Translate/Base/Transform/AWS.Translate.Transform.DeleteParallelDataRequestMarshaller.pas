unit AWS.Translate.Transform.DeleteParallelDataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.DeleteParallelDataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteParallelDataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteParallelDataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteParallelDataRequest>, IDeleteParallelDataRequestMarshaller)
  strict private
    class var FInstance: IDeleteParallelDataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteParallelDataRequest): IRequest; overload;
    class function Instance: IDeleteParallelDataRequestMarshaller; static;
  end;
  
implementation

{ TDeleteParallelDataRequestMarshaller }

function TDeleteParallelDataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteParallelDataRequest(AInput));
end;

function TDeleteParallelDataRequestMarshaller.Marshall(PublicRequest: TDeleteParallelDataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.DeleteParallelData');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-07-01');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TDeleteParallelDataRequestMarshaller.Create;
begin
  FInstance := TDeleteParallelDataRequestMarshaller.Create;
end;

class function TDeleteParallelDataRequestMarshaller.Instance: IDeleteParallelDataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
