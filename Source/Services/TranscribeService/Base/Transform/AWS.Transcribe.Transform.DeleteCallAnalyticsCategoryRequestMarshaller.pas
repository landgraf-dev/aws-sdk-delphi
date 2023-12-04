unit AWS.Transcribe.Transform.DeleteCallAnalyticsCategoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteCallAnalyticsCategoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteCallAnalyticsCategoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteCallAnalyticsCategoryRequest>, IDeleteCallAnalyticsCategoryRequestMarshaller)
  strict private
    class var FInstance: IDeleteCallAnalyticsCategoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteCallAnalyticsCategoryRequest): IRequest; overload;
    class function Instance: IDeleteCallAnalyticsCategoryRequestMarshaller; static;
  end;
  
implementation

{ TDeleteCallAnalyticsCategoryRequestMarshaller }

function TDeleteCallAnalyticsCategoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteCallAnalyticsCategoryRequest(AInput));
end;

function TDeleteCallAnalyticsCategoryRequestMarshaller.Marshall(PublicRequest: TDeleteCallAnalyticsCategoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteCallAnalyticsCategory');
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

class constructor TDeleteCallAnalyticsCategoryRequestMarshaller.Create;
begin
  FInstance := TDeleteCallAnalyticsCategoryRequestMarshaller.Create;
end;

class function TDeleteCallAnalyticsCategoryRequestMarshaller.Instance: IDeleteCallAnalyticsCategoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
