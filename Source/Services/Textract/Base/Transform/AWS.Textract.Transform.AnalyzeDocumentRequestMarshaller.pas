unit AWS.Textract.Transform.AnalyzeDocumentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.AnalyzeDocumentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Textract.Transform.DocumentMarshaller, 
  AWS.Textract.Transform.HumanLoopConfigMarshaller;

type
  IAnalyzeDocumentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAnalyzeDocumentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAnalyzeDocumentRequest>, IAnalyzeDocumentRequestMarshaller)
  strict private
    class var FInstance: IAnalyzeDocumentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAnalyzeDocumentRequest): IRequest; overload;
    class function Instance: IAnalyzeDocumentRequestMarshaller; static;
  end;
  
implementation

{ TAnalyzeDocumentRequestMarshaller }

function TAnalyzeDocumentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAnalyzeDocumentRequest(AInput));
end;

function TAnalyzeDocumentRequestMarshaller.Marshall(PublicRequest: TAnalyzeDocumentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.AnalyzeDocument');
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
        if PublicRequest.IsSetDocument then
        begin
          Context.Writer.WriteName('Document');
          Context.Writer.WriteBeginObject;
          TDocumentMarshaller.Instance.Marshall(PublicRequest.Document, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetFeatureTypes then
        begin
          Context.Writer.WriteName('FeatureTypes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFeatureTypesListValue in PublicRequest.FeatureTypes do
            Context.Writer.WriteString(PublicRequestFeatureTypesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetHumanLoopConfig then
        begin
          Context.Writer.WriteName('HumanLoopConfig');
          Context.Writer.WriteBeginObject;
          THumanLoopConfigMarshaller.Instance.Marshall(PublicRequest.HumanLoopConfig, Context);
          Context.Writer.WriteEndObject;
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

class constructor TAnalyzeDocumentRequestMarshaller.Create;
begin
  FInstance := TAnalyzeDocumentRequestMarshaller.Create;
end;

class function TAnalyzeDocumentRequestMarshaller.Instance: IAnalyzeDocumentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
