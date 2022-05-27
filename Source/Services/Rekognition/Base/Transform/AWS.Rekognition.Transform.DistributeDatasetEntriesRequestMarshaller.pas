unit AWS.Rekognition.Transform.DistributeDatasetEntriesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DistributeDatasetEntriesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.DistributeDatasetMarshaller;

type
  IDistributeDatasetEntriesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDistributeDatasetEntriesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDistributeDatasetEntriesRequest>, IDistributeDatasetEntriesRequestMarshaller)
  strict private
    class var FInstance: IDistributeDatasetEntriesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDistributeDatasetEntriesRequest): IRequest; overload;
    class function Instance: IDistributeDatasetEntriesRequestMarshaller; static;
  end;
  
implementation

{ TDistributeDatasetEntriesRequestMarshaller }

function TDistributeDatasetEntriesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDistributeDatasetEntriesRequest(AInput));
end;

function TDistributeDatasetEntriesRequestMarshaller.Marshall(PublicRequest: TDistributeDatasetEntriesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DistributeDatasetEntries');
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
        if PublicRequest.IsSetDatasets then
        begin
          Context.Writer.WriteName('Datasets');
          Context.Writer.WriteBeginArray;
          for var PublicRequestDatasetsListValue in PublicRequest.Datasets do
          begin
            Context.Writer.WriteBeginObject;
            TDistributeDatasetMarshaller.Instance.Marshall(PublicRequestDatasetsListValue, Context);
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

class constructor TDistributeDatasetEntriesRequestMarshaller.Create;
begin
  FInstance := TDistributeDatasetEntriesRequestMarshaller.Create;
end;

class function TDistributeDatasetEntriesRequestMarshaller.Instance: IDistributeDatasetEntriesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
