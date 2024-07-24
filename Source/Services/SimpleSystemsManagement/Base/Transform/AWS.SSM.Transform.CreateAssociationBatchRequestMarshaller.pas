unit AWS.SSM.Transform.CreateAssociationBatchRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateAssociationBatchRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.CreateAssociationBatchRequestEntryMarshaller;

type
  ICreateAssociationBatchRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateAssociationBatchRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateAssociationBatchRequest>, ICreateAssociationBatchRequestMarshaller)
  strict private
    class var FInstance: ICreateAssociationBatchRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateAssociationBatchRequest): IRequest; overload;
    class function Instance: ICreateAssociationBatchRequestMarshaller; static;
  end;
  
implementation

{ TCreateAssociationBatchRequestMarshaller }

function TCreateAssociationBatchRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateAssociationBatchRequest(AInput));
end;

function TCreateAssociationBatchRequestMarshaller.Marshall(PublicRequest: TCreateAssociationBatchRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateAssociationBatch');
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
        if PublicRequest.IsSetEntries then
        begin
          Context.Writer.WriteName('Entries');
          Context.Writer.WriteBeginArray;
          for var PublicRequestEntriesListValue in PublicRequest.Entries do
          begin
            Context.Writer.WriteBeginObject;
            TCreateAssociationBatchRequestEntryMarshaller.Instance.Marshall(PublicRequestEntriesListValue, Context);
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

class constructor TCreateAssociationBatchRequestMarshaller.Create;
begin
  FInstance := TCreateAssociationBatchRequestMarshaller.Create;
end;

class function TCreateAssociationBatchRequestMarshaller.Instance: ICreateAssociationBatchRequestMarshaller;
begin
  Result := FInstance;
end;

end.
