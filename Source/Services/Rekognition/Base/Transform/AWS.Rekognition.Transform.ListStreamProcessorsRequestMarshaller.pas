unit AWS.Rekognition.Transform.ListStreamProcessorsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ListStreamProcessorsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListStreamProcessorsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListStreamProcessorsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListStreamProcessorsRequest>, IListStreamProcessorsRequestMarshaller)
  strict private
    class var FInstance: IListStreamProcessorsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListStreamProcessorsRequest): IRequest; overload;
    class function Instance: IListStreamProcessorsRequestMarshaller; static;
  end;
  
implementation

{ TListStreamProcessorsRequestMarshaller }

function TListStreamProcessorsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListStreamProcessorsRequest(AInput));
end;

function TListStreamProcessorsRequestMarshaller.Marshall(PublicRequest: TListStreamProcessorsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.ListStreamProcessors');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-27');
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

class constructor TListStreamProcessorsRequestMarshaller.Create;
begin
  FInstance := TListStreamProcessorsRequestMarshaller.Create;
end;

class function TListStreamProcessorsRequestMarshaller.Instance: IListStreamProcessorsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
