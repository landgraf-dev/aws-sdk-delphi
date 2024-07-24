unit AWS.SSM.Transform.UnlabelParameterVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UnlabelParameterVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUnlabelParameterVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUnlabelParameterVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUnlabelParameterVersionRequest>, IUnlabelParameterVersionRequestMarshaller)
  strict private
    class var FInstance: IUnlabelParameterVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUnlabelParameterVersionRequest): IRequest; overload;
    class function Instance: IUnlabelParameterVersionRequestMarshaller; static;
  end;
  
implementation

{ TUnlabelParameterVersionRequestMarshaller }

function TUnlabelParameterVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUnlabelParameterVersionRequest(AInput));
end;

function TUnlabelParameterVersionRequestMarshaller.Marshall(PublicRequest: TUnlabelParameterVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UnlabelParameterVersion');
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
        if PublicRequest.IsSetLabels then
        begin
          Context.Writer.WriteName('Labels');
          Context.Writer.WriteBeginArray;
          for var PublicRequestLabelsListValue in PublicRequest.Labels do
            Context.Writer.WriteString(PublicRequestLabelsListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetParameterVersion then
        begin
          Context.Writer.WriteName('ParameterVersion');
          Context.Writer.WriteInteger(PublicRequest.ParameterVersion);
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

class constructor TUnlabelParameterVersionRequestMarshaller.Create;
begin
  FInstance := TUnlabelParameterVersionRequestMarshaller.Create;
end;

class function TUnlabelParameterVersionRequestMarshaller.Instance: IUnlabelParameterVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
