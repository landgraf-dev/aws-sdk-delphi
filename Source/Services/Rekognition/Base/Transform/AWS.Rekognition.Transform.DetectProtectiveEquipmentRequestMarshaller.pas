unit AWS.Rekognition.Transform.DetectProtectiveEquipmentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller, 
  AWS.Rekognition.Transform.ProtectiveEquipmentSummarizationAttributesMarshaller;

type
  IDetectProtectiveEquipmentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectProtectiveEquipmentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectProtectiveEquipmentRequest>, IDetectProtectiveEquipmentRequestMarshaller)
  strict private
    class var FInstance: IDetectProtectiveEquipmentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectProtectiveEquipmentRequest): IRequest; overload;
    class function Instance: IDetectProtectiveEquipmentRequestMarshaller; static;
  end;
  
implementation

{ TDetectProtectiveEquipmentRequestMarshaller }

function TDetectProtectiveEquipmentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectProtectiveEquipmentRequest(AInput));
end;

function TDetectProtectiveEquipmentRequestMarshaller.Marshall(PublicRequest: TDetectProtectiveEquipmentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectProtectiveEquipment');
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
        if PublicRequest.IsSetImage then
        begin
          Context.Writer.WriteName('Image');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.Image, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSummarizationAttributes then
        begin
          Context.Writer.WriteName('SummarizationAttributes');
          Context.Writer.WriteBeginObject;
          TProtectiveEquipmentSummarizationAttributesMarshaller.Instance.Marshall(PublicRequest.SummarizationAttributes, Context);
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

class constructor TDetectProtectiveEquipmentRequestMarshaller.Create;
begin
  FInstance := TDetectProtectiveEquipmentRequestMarshaller.Create;
end;

class function TDetectProtectiveEquipmentRequestMarshaller.Instance: IDetectProtectiveEquipmentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
