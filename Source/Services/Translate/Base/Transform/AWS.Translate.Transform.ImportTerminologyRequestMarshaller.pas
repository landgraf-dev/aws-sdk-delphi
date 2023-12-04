unit AWS.Translate.Transform.ImportTerminologyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.ImportTerminologyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Translate.Transform.EncryptionKeyMarshaller, 
  AWS.Translate.Transform.TerminologyDataMarshaller;

type
  IImportTerminologyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TImportTerminologyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TImportTerminologyRequest>, IImportTerminologyRequestMarshaller)
  strict private
    class var FInstance: IImportTerminologyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TImportTerminologyRequest): IRequest; overload;
    class function Instance: IImportTerminologyRequestMarshaller; static;
  end;
  
implementation

{ TImportTerminologyRequestMarshaller }

function TImportTerminologyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TImportTerminologyRequest(AInput));
end;

function TImportTerminologyRequestMarshaller.Marshall(PublicRequest: TImportTerminologyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.ImportTerminology');
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
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetEncryptionKey then
        begin
          Context.Writer.WriteName('EncryptionKey');
          Context.Writer.WriteBeginObject;
          TEncryptionKeyMarshaller.Instance.Marshall(PublicRequest.EncryptionKey, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMergeStrategy then
        begin
          Context.Writer.WriteName('MergeStrategy');
          Context.Writer.WriteString(PublicRequest.MergeStrategy.Value);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetTerminologyData then
        begin
          Context.Writer.WriteName('TerminologyData');
          Context.Writer.WriteBeginObject;
          TTerminologyDataMarshaller.Instance.Marshall(PublicRequest.TerminologyData, Context);
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

class constructor TImportTerminologyRequestMarshaller.Create;
begin
  FInstance := TImportTerminologyRequestMarshaller.Create;
end;

class function TImportTerminologyRequestMarshaller.Instance: IImportTerminologyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
