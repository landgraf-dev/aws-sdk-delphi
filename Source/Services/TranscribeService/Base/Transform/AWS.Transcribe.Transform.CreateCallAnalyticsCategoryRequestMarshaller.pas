unit AWS.Transcribe.Transform.CreateCallAnalyticsCategoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Transcribe.Transform.RuleMarshaller;

type
  ICreateCallAnalyticsCategoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateCallAnalyticsCategoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateCallAnalyticsCategoryRequest>, ICreateCallAnalyticsCategoryRequestMarshaller)
  strict private
    class var FInstance: ICreateCallAnalyticsCategoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateCallAnalyticsCategoryRequest): IRequest; overload;
    class function Instance: ICreateCallAnalyticsCategoryRequestMarshaller; static;
  end;
  
implementation

{ TCreateCallAnalyticsCategoryRequestMarshaller }

function TCreateCallAnalyticsCategoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateCallAnalyticsCategoryRequest(AInput));
end;

function TCreateCallAnalyticsCategoryRequestMarshaller.Marshall(PublicRequest: TCreateCallAnalyticsCategoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.CreateCallAnalyticsCategory');
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

class constructor TCreateCallAnalyticsCategoryRequestMarshaller.Create;
begin
  FInstance := TCreateCallAnalyticsCategoryRequestMarshaller.Create;
end;

class function TCreateCallAnalyticsCategoryRequestMarshaller.Instance: ICreateCallAnalyticsCategoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
