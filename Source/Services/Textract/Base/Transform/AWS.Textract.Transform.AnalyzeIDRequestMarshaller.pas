unit AWS.Textract.Transform.AnalyzeIDRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.AnalyzeIDRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Textract.Transform.DocumentMarshaller;

type
  IAnalyzeIDRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAnalyzeIDRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAnalyzeIDRequest>, IAnalyzeIDRequestMarshaller)
  strict private
    class var FInstance: IAnalyzeIDRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAnalyzeIDRequest): IRequest; overload;
    class function Instance: IAnalyzeIDRequestMarshaller; static;
  end;
  
implementation

{ TAnalyzeIDRequestMarshaller }

function TAnalyzeIDRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAnalyzeIDRequest(AInput));
end;

function TAnalyzeIDRequestMarshaller.Marshall(PublicRequest: TAnalyzeIDRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.AnalyzeID');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDocumentPages then
        begin
          Context.Writer.WriteName('DocumentPages');
          Context.Writer.WriteBeginArray;
          for var PublicRequestDocumentPagesListValue in PublicRequest.DocumentPages do
          begin
            Context.Writer.WriteBeginObject;
            TDocumentMarshaller.Instance.Marshall(PublicRequestDocumentPagesListValue, Context);
            Context.Writer.WriteEndObject;
          end;
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

class constructor TAnalyzeIDRequestMarshaller.Create;
begin
  FInstance := TAnalyzeIDRequestMarshaller.Create;
end;

class function TAnalyzeIDRequestMarshaller.Instance: IAnalyzeIDRequestMarshaller;
begin
  Result := FInstance;
end;

end.
