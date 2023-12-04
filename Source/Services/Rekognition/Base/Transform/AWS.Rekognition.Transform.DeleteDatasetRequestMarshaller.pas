unit AWS.Rekognition.Transform.DeleteDatasetRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DeleteDatasetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteDatasetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteDatasetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteDatasetRequest>, IDeleteDatasetRequestMarshaller)
  strict private
    class var FInstance: IDeleteDatasetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteDatasetRequest): IRequest; overload;
    class function Instance: IDeleteDatasetRequestMarshaller; static;
  end;
  
implementation

{ TDeleteDatasetRequestMarshaller }

function TDeleteDatasetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteDatasetRequest(AInput));
end;

function TDeleteDatasetRequestMarshaller.Marshall(PublicRequest: TDeleteDatasetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DeleteDataset');
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

class constructor TDeleteDatasetRequestMarshaller.Create;
begin
  FInstance := TDeleteDatasetRequestMarshaller.Create;
end;

class function TDeleteDatasetRequestMarshaller.Instance: IDeleteDatasetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
