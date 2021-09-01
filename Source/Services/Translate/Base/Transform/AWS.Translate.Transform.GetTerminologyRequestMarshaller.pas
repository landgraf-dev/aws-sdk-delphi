unit AWS.Translate.Transform.GetTerminologyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.GetTerminologyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetTerminologyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetTerminologyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetTerminologyRequest>, IGetTerminologyRequestMarshaller)
  strict private
    class var FInstance: IGetTerminologyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetTerminologyRequest): IRequest; overload;
    class function Instance: IGetTerminologyRequestMarshaller; static;
  end;
  
implementation

{ TGetTerminologyRequestMarshaller }

function TGetTerminologyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetTerminologyRequest(AInput));
end;

function TGetTerminologyRequestMarshaller.Marshall(PublicRequest: TGetTerminologyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.GetTerminology');
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
        if PublicRequest.IsSetTerminologyDataFormat then
        begin
          Context.Writer.WriteName('TerminologyDataFormat');
          Context.Writer.WriteString(PublicRequest.TerminologyDataFormat.Value);
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

class constructor TGetTerminologyRequestMarshaller.Create;
begin
  FInstance := TGetTerminologyRequestMarshaller.Create;
end;

class function TGetTerminologyRequestMarshaller.Instance: IGetTerminologyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
