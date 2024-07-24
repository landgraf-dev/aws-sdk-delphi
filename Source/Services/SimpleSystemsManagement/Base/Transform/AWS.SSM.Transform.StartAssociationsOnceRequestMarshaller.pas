unit AWS.SSM.Transform.StartAssociationsOnceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.StartAssociationsOnceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStartAssociationsOnceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartAssociationsOnceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartAssociationsOnceRequest>, IStartAssociationsOnceRequestMarshaller)
  strict private
    class var FInstance: IStartAssociationsOnceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartAssociationsOnceRequest): IRequest; overload;
    class function Instance: IStartAssociationsOnceRequestMarshaller; static;
  end;
  
implementation

{ TStartAssociationsOnceRequestMarshaller }

function TStartAssociationsOnceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartAssociationsOnceRequest(AInput));
end;

function TStartAssociationsOnceRequestMarshaller.Marshall(PublicRequest: TStartAssociationsOnceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.StartAssociationsOnce');
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
        if PublicRequest.IsSetAssociationIds then
        begin
          Context.Writer.WriteName('AssociationIds');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAssociationIdsListValue in PublicRequest.AssociationIds do
            Context.Writer.WriteString(PublicRequestAssociationIdsListValue);
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

class constructor TStartAssociationsOnceRequestMarshaller.Create;
begin
  FInstance := TStartAssociationsOnceRequestMarshaller.Create;
end;

class function TStartAssociationsOnceRequestMarshaller.Instance: IStartAssociationsOnceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
