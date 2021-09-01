unit AWS.Translate.Transform.DescribeTextTranslationJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.DescribeTextTranslationJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDescribeTextTranslationJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeTextTranslationJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeTextTranslationJobRequest>, IDescribeTextTranslationJobRequestMarshaller)
  strict private
    class var FInstance: IDescribeTextTranslationJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeTextTranslationJobRequest): IRequest; overload;
    class function Instance: IDescribeTextTranslationJobRequestMarshaller; static;
  end;
  
implementation

{ TDescribeTextTranslationJobRequestMarshaller }

function TDescribeTextTranslationJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeTextTranslationJobRequest(AInput));
end;

function TDescribeTextTranslationJobRequestMarshaller.Marshall(PublicRequest: TDescribeTextTranslationJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.DescribeTextTranslationJob');
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
        if PublicRequest.IsSetJobId then
        begin
          Context.Writer.WriteName('JobId');
          Context.Writer.WriteString(PublicRequest.JobId);
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

class constructor TDescribeTextTranslationJobRequestMarshaller.Create;
begin
  FInstance := TDescribeTextTranslationJobRequestMarshaller.Create;
end;

class function TDescribeTextTranslationJobRequestMarshaller.Instance: IDescribeTextTranslationJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
