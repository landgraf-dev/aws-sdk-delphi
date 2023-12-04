unit AWS.Translate.Transform.CreateParallelDataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.CreateParallelDataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Translate.Transform.EncryptionKeyMarshaller, 
  AWS.Translate.Transform.ParallelDataConfigMarshaller;

type
  ICreateParallelDataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateParallelDataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateParallelDataRequest>, ICreateParallelDataRequestMarshaller)
  strict private
    class var FInstance: ICreateParallelDataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateParallelDataRequest): IRequest; overload;
    class function Instance: ICreateParallelDataRequestMarshaller; static;
  end;
  
implementation

{ TCreateParallelDataRequestMarshaller }

function TCreateParallelDataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateParallelDataRequest(AInput));
end;

function TCreateParallelDataRequestMarshaller.Marshall(PublicRequest: TCreateParallelDataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.CreateParallelData');
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
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end
        else
          if not PublicRequest.IsSetClientToken then
          begin
            Context.Writer.WriteName('ClientToken');
            Context.Writer.WriteString(Copy(TGuid.NewGuid.ToString, 2, 36));
          end;
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
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetParallelDataConfig then
        begin
          Context.Writer.WriteName('ParallelDataConfig');
          Context.Writer.WriteBeginObject;
          TParallelDataConfigMarshaller.Instance.Marshall(PublicRequest.ParallelDataConfig, Context);
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

class constructor TCreateParallelDataRequestMarshaller.Create;
begin
  FInstance := TCreateParallelDataRequestMarshaller.Create;
end;

class function TCreateParallelDataRequestMarshaller.Instance: ICreateParallelDataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
