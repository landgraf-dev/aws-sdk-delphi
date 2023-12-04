unit AWS.Translate.Transform.UpdateParallelDataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.UpdateParallelDataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Translate.Transform.ParallelDataConfigMarshaller;

type
  IUpdateParallelDataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateParallelDataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateParallelDataRequest>, IUpdateParallelDataRequestMarshaller)
  strict private
    class var FInstance: IUpdateParallelDataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateParallelDataRequest): IRequest; overload;
    class function Instance: IUpdateParallelDataRequestMarshaller; static;
  end;
  
implementation

{ TUpdateParallelDataRequestMarshaller }

function TUpdateParallelDataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateParallelDataRequest(AInput));
end;

function TUpdateParallelDataRequestMarshaller.Marshall(PublicRequest: TUpdateParallelDataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.UpdateParallelData');
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

class constructor TUpdateParallelDataRequestMarshaller.Create;
begin
  FInstance := TUpdateParallelDataRequestMarshaller.Create;
end;

class function TUpdateParallelDataRequestMarshaller.Instance: IUpdateParallelDataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
