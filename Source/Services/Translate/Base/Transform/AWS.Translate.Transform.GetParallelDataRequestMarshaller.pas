unit AWS.Translate.Transform.GetParallelDataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.GetParallelDataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetParallelDataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetParallelDataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetParallelDataRequest>, IGetParallelDataRequestMarshaller)
  strict private
    class var FInstance: IGetParallelDataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetParallelDataRequest): IRequest; overload;
    class function Instance: IGetParallelDataRequestMarshaller; static;
  end;
  
implementation

{ TGetParallelDataRequestMarshaller }

function TGetParallelDataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetParallelDataRequest(AInput));
end;

function TGetParallelDataRequestMarshaller.Marshall(PublicRequest: TGetParallelDataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.GetParallelData');
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

class constructor TGetParallelDataRequestMarshaller.Create;
begin
  FInstance := TGetParallelDataRequestMarshaller.Create;
end;

class function TGetParallelDataRequestMarshaller.Instance: IGetParallelDataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
