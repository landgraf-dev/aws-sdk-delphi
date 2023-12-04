unit AWS.Transcribe.Transform.GetCallAnalyticsCategoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetCallAnalyticsCategoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCallAnalyticsCategoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCallAnalyticsCategoryRequest>, IGetCallAnalyticsCategoryRequestMarshaller)
  strict private
    class var FInstance: IGetCallAnalyticsCategoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCallAnalyticsCategoryRequest): IRequest; overload;
    class function Instance: IGetCallAnalyticsCategoryRequestMarshaller; static;
  end;
  
implementation

{ TGetCallAnalyticsCategoryRequestMarshaller }

function TGetCallAnalyticsCategoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCallAnalyticsCategoryRequest(AInput));
end;

function TGetCallAnalyticsCategoryRequestMarshaller.Marshall(PublicRequest: TGetCallAnalyticsCategoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetCallAnalyticsCategory');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-10-26');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetCategoryName then
        begin
          Context.Writer.WriteName('CategoryName');
          Context.Writer.WriteString(PublicRequest.CategoryName);
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

class constructor TGetCallAnalyticsCategoryRequestMarshaller.Create;
begin
  FInstance := TGetCallAnalyticsCategoryRequestMarshaller.Create;
end;

class function TGetCallAnalyticsCategoryRequestMarshaller.Instance: IGetCallAnalyticsCategoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
