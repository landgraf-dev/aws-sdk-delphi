unit AWS.SESv2.Transform.CreateImportJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateImportJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Transform.ImportDataSourceMarshaller, 
  AWS.SESv2.Transform.ImportDestinationMarshaller;

type
  ICreateImportJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateImportJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateImportJobRequest>, ICreateImportJobRequestMarshaller)
  strict private
    class var FInstance: ICreateImportJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateImportJobRequest): IRequest; overload;
    class function Instance: ICreateImportJobRequestMarshaller; static;
  end;
  
implementation

{ TCreateImportJobRequestMarshaller }

function TCreateImportJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateImportJobRequest(AInput));
end;

function TCreateImportJobRequestMarshaller.Marshall(PublicRequest: TCreateImportJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/import-jobs';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetImportDataSource then
        begin
          Context.Writer.WriteName('ImportDataSource');
          Context.Writer.WriteBeginObject;
          TImportDataSourceMarshaller.Instance.Marshall(PublicRequest.ImportDataSource, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetImportDestination then
        begin
          Context.Writer.WriteName('ImportDestination');
          Context.Writer.WriteBeginObject;
          TImportDestinationMarshaller.Instance.Marshall(PublicRequest.ImportDestination, Context);
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

class constructor TCreateImportJobRequestMarshaller.Create;
begin
  FInstance := TCreateImportJobRequestMarshaller.Create;
end;

class function TCreateImportJobRequestMarshaller.Instance: ICreateImportJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
