unit AWS.SSM.Transform.StartSessionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.StartSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStartSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartSessionRequest>, IStartSessionRequestMarshaller)
  strict private
    class var FInstance: IStartSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartSessionRequest): IRequest; overload;
    class function Instance: IStartSessionRequestMarshaller; static;
  end;
  
implementation

{ TStartSessionRequestMarshaller }

function TStartSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartSessionRequest(AInput));
end;

function TStartSessionRequestMarshaller.Marshall(PublicRequest: TStartSessionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.StartSession');
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
        if PublicRequest.IsSetDocumentName then
        begin
          Context.Writer.WriteName('DocumentName');
          Context.Writer.WriteString(PublicRequest.DocumentName);
        end;
        if PublicRequest.IsSetParameters then
        begin
          Context.Writer.WriteName('Parameters');
          Context.Writer.WriteBeginObject;
          for var PublicRequestParametersKvp in PublicRequest.Parameters do
          begin
            Context.Writer.WriteName(PublicRequestParametersKvp.Key);
            var PublicRequestParametersValue := PublicRequestParametersKvp.Value;
            Context.Writer.WriteBeginArray;
            for var PublicRequestParametersValueListValue in PublicRequestParametersValue do
              Context.Writer.WriteString(PublicRequestParametersValueListValue);
            Context.Writer.WriteEndArray;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetReason then
        begin
          Context.Writer.WriteName('Reason');
          Context.Writer.WriteString(PublicRequest.Reason);
        end;
        if PublicRequest.IsSetTarget then
        begin
          Context.Writer.WriteName('Target');
          Context.Writer.WriteString(PublicRequest.Target);
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

class constructor TStartSessionRequestMarshaller.Create;
begin
  FInstance := TStartSessionRequestMarshaller.Create;
end;

class function TStartSessionRequestMarshaller.Instance: IStartSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
