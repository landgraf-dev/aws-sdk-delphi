unit AWS.SSM.Transform.GetParameterHistoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetParameterHistoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetParameterHistoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetParameterHistoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetParameterHistoryRequest>, IGetParameterHistoryRequestMarshaller)
  strict private
    class var FInstance: IGetParameterHistoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetParameterHistoryRequest): IRequest; overload;
    class function Instance: IGetParameterHistoryRequestMarshaller; static;
  end;
  
implementation

{ TGetParameterHistoryRequestMarshaller }

function TGetParameterHistoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetParameterHistoryRequest(AInput));
end;

function TGetParameterHistoryRequestMarshaller.Marshall(PublicRequest: TGetParameterHistoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetParameterHistory');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
        end;
        if PublicRequest.IsSetWithDecryption then
        begin
          Context.Writer.WriteName('WithDecryption');
          Context.Writer.WriteBoolean(PublicRequest.WithDecryption);
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

class constructor TGetParameterHistoryRequestMarshaller.Create;
begin
  FInstance := TGetParameterHistoryRequestMarshaller.Create;
end;

class function TGetParameterHistoryRequestMarshaller.Instance: IGetParameterHistoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
