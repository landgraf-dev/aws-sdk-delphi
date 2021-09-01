unit AWS.Translate.Transform.DeleteTerminologyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.DeleteTerminologyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteTerminologyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteTerminologyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteTerminologyRequest>, IDeleteTerminologyRequestMarshaller)
  strict private
    class var FInstance: IDeleteTerminologyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteTerminologyRequest): IRequest; overload;
    class function Instance: IDeleteTerminologyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteTerminologyRequestMarshaller }

function TDeleteTerminologyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteTerminologyRequest(AInput));
end;

function TDeleteTerminologyRequestMarshaller.Marshall(PublicRequest: TDeleteTerminologyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.DeleteTerminology');
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

class constructor TDeleteTerminologyRequestMarshaller.Create;
begin
  FInstance := TDeleteTerminologyRequestMarshaller.Create;
end;

class function TDeleteTerminologyRequestMarshaller.Instance: IDeleteTerminologyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
