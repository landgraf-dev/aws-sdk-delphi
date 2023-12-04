unit AWS.Translate.Transform.ListTerminologiesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.ListTerminologiesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListTerminologiesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTerminologiesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTerminologiesRequest>, IListTerminologiesRequestMarshaller)
  strict private
    class var FInstance: IListTerminologiesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTerminologiesRequest): IRequest; overload;
    class function Instance: IListTerminologiesRequestMarshaller; static;
  end;
  
implementation

{ TListTerminologiesRequestMarshaller }

function TListTerminologiesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTerminologiesRequest(AInput));
end;

function TListTerminologiesRequestMarshaller.Marshall(PublicRequest: TListTerminologiesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.ListTerminologies');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
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

class constructor TListTerminologiesRequestMarshaller.Create;
begin
  FInstance := TListTerminologiesRequestMarshaller.Create;
end;

class function TListTerminologiesRequestMarshaller.Instance: IListTerminologiesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
