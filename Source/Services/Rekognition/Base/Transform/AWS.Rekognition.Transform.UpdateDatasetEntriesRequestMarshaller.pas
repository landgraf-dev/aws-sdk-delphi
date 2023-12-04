unit AWS.Rekognition.Transform.UpdateDatasetEntriesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.UpdateDatasetEntriesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.DatasetChangesMarshaller;

type
  IUpdateDatasetEntriesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateDatasetEntriesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateDatasetEntriesRequest>, IUpdateDatasetEntriesRequestMarshaller)
  strict private
    class var FInstance: IUpdateDatasetEntriesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateDatasetEntriesRequest): IRequest; overload;
    class function Instance: IUpdateDatasetEntriesRequestMarshaller; static;
  end;
  
implementation

{ TUpdateDatasetEntriesRequestMarshaller }

function TUpdateDatasetEntriesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateDatasetEntriesRequest(AInput));
end;

function TUpdateDatasetEntriesRequestMarshaller.Marshall(PublicRequest: TUpdateDatasetEntriesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.UpdateDatasetEntries');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetChanges then
        begin
          Context.Writer.WriteName('Changes');
          Context.Writer.WriteBeginObject;
          TDatasetChangesMarshaller.Instance.Marshall(PublicRequest.Changes, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetDatasetArn then
        begin
          Context.Writer.WriteName('DatasetArn');
          Context.Writer.WriteString(PublicRequest.DatasetArn);
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

class constructor TUpdateDatasetEntriesRequestMarshaller.Create;
begin
  FInstance := TUpdateDatasetEntriesRequestMarshaller.Create;
end;

class function TUpdateDatasetEntriesRequestMarshaller.Instance: IUpdateDatasetEntriesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
