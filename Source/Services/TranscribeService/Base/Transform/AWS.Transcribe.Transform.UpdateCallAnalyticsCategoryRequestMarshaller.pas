unit AWS.Transcribe.Transform.UpdateCallAnalyticsCategoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Transcribe.Transform.RuleMarshaller;

type
  IUpdateCallAnalyticsCategoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateCallAnalyticsCategoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateCallAnalyticsCategoryRequest>, IUpdateCallAnalyticsCategoryRequestMarshaller)
  strict private
    class var FInstance: IUpdateCallAnalyticsCategoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateCallAnalyticsCategoryRequest): IRequest; overload;
    class function Instance: IUpdateCallAnalyticsCategoryRequestMarshaller; static;
  end;
  
implementation

{ TUpdateCallAnalyticsCategoryRequestMarshaller }

function TUpdateCallAnalyticsCategoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateCallAnalyticsCategoryRequest(AInput));
end;

function TUpdateCallAnalyticsCategoryRequestMarshaller.Marshall(PublicRequest: TUpdateCallAnalyticsCategoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.UpdateCallAnalyticsCategory');
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
        if PublicRequest.IsSetRules then
        begin
          Context.Writer.WriteName('Rules');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRulesListValue in PublicRequest.Rules do
          begin
            Context.Writer.WriteBeginObject;
            TRuleMarshaller.Instance.Marshall(PublicRequestRulesListValue, Context);
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

class constructor TUpdateCallAnalyticsCategoryRequestMarshaller.Create;
begin
  FInstance := TUpdateCallAnalyticsCategoryRequestMarshaller.Create;
end;

class function TUpdateCallAnalyticsCategoryRequestMarshaller.Instance: IUpdateCallAnalyticsCategoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
