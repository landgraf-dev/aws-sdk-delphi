unit AWS.SESv2.Transform.CreateDeliverabilityTestReportRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.EmailContentMarshaller, 
  AWS.SESv2.Transform.TagMarshaller;

type
  ICreateDeliverabilityTestReportRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateDeliverabilityTestReportRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateDeliverabilityTestReportRequest>, ICreateDeliverabilityTestReportRequestMarshaller)
  strict private
    class var FInstance: ICreateDeliverabilityTestReportRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateDeliverabilityTestReportRequest): IRequest; overload;
    class function Instance: ICreateDeliverabilityTestReportRequestMarshaller; static;
  end;
  
implementation

{ TCreateDeliverabilityTestReportRequestMarshaller }

function TCreateDeliverabilityTestReportRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateDeliverabilityTestReportRequest(AInput));
end;

function TCreateDeliverabilityTestReportRequestMarshaller.Marshall(PublicRequest: TCreateDeliverabilityTestReportRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/deliverability-dashboard/test';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetContent then
        begin
          Context.Writer.WriteName('Content');
          Context.Writer.WriteBeginObject;
          TEmailContentMarshaller.Instance.Marshall(PublicRequest.Content, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetFromEmailAddress then
        begin
          Context.Writer.WriteName('FromEmailAddress');
          Context.Writer.WriteString(PublicRequest.FromEmailAddress);
        end;
        if PublicRequest.IsSetReportName then
        begin
          Context.Writer.WriteName('ReportName');
          Context.Writer.WriteString(PublicRequest.ReportName);
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
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

class constructor TCreateDeliverabilityTestReportRequestMarshaller.Create;
begin
  FInstance := TCreateDeliverabilityTestReportRequestMarshaller.Create;
end;

class function TCreateDeliverabilityTestReportRequestMarshaller.Instance: ICreateDeliverabilityTestReportRequestMarshaller;
begin
  Result := FInstance;
end;

end.
