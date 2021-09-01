unit AWS.Translate.Transform.ListParallelDataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.ListParallelDataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListParallelDataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListParallelDataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListParallelDataRequest>, IListParallelDataRequestMarshaller)
  strict private
    class var FInstance: IListParallelDataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListParallelDataRequest): IRequest; overload;
    class function Instance: IListParallelDataRequestMarshaller; static;
  end;
  
implementation

{ TListParallelDataRequestMarshaller }

function TListParallelDataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListParallelDataRequest(AInput));
end;

function TListParallelDataRequestMarshaller.Marshall(PublicRequest: TListParallelDataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.ListParallelData');
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

class constructor TListParallelDataRequestMarshaller.Create;
begin
  FInstance := TListParallelDataRequestMarshaller.Create;
end;

class function TListParallelDataRequestMarshaller.Instance: IListParallelDataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
