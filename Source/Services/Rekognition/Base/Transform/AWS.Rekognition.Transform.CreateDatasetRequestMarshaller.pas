unit AWS.Rekognition.Transform.CreateDatasetRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CreateDatasetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.DatasetSourceMarshaller;

type
  ICreateDatasetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateDatasetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateDatasetRequest>, ICreateDatasetRequestMarshaller)
  strict private
    class var FInstance: ICreateDatasetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateDatasetRequest): IRequest; overload;
    class function Instance: ICreateDatasetRequestMarshaller; static;
  end;
  
implementation

{ TCreateDatasetRequestMarshaller }

function TCreateDatasetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateDatasetRequest(AInput));
end;

function TCreateDatasetRequestMarshaller.Marshall(PublicRequest: TCreateDatasetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.CreateDataset');
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
        if PublicRequest.IsSetDatasetSource then
        begin
          Context.Writer.WriteName('DatasetSource');
          Context.Writer.WriteBeginObject;
          TDatasetSourceMarshaller.Instance.Marshall(PublicRequest.DatasetSource, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetDatasetType then
        begin
          Context.Writer.WriteName('DatasetType');
          Context.Writer.WriteString(PublicRequest.DatasetType.Value);
        end;
        if PublicRequest.IsSetProjectArn then
        begin
          Context.Writer.WriteName('ProjectArn');
          Context.Writer.WriteString(PublicRequest.ProjectArn);
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

class constructor TCreateDatasetRequestMarshaller.Create;
begin
  FInstance := TCreateDatasetRequestMarshaller.Create;
end;

class function TCreateDatasetRequestMarshaller.Instance: ICreateDatasetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
