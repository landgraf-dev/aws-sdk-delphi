unit AWS.SESv2.Transform.PutDeliverabilityDashboardOptionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.DomainDeliverabilityTrackingOptionMarshaller;

type
  IPutDeliverabilityDashboardOptionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutDeliverabilityDashboardOptionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutDeliverabilityDashboardOptionRequest>, IPutDeliverabilityDashboardOptionRequestMarshaller)
  strict private
    class var FInstance: IPutDeliverabilityDashboardOptionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutDeliverabilityDashboardOptionRequest): IRequest; overload;
    class function Instance: IPutDeliverabilityDashboardOptionRequestMarshaller; static;
  end;
  
implementation

{ TPutDeliverabilityDashboardOptionRequestMarshaller }

function TPutDeliverabilityDashboardOptionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutDeliverabilityDashboardOptionRequest(AInput));
end;

function TPutDeliverabilityDashboardOptionRequestMarshaller.Marshall(PublicRequest: TPutDeliverabilityDashboardOptionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  Request.ResourcePath := '/v2/email/deliverability-dashboard';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDashboardEnabled then
        begin
          Context.Writer.WriteName('DashboardEnabled');
          Context.Writer.WriteBoolean(PublicRequest.DashboardEnabled);
        end;
        if PublicRequest.IsSetSubscribedDomains then
        begin
          Context.Writer.WriteName('SubscribedDomains');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSubscribedDomainsListValue in PublicRequest.SubscribedDomains do
          begin
            Context.Writer.WriteBeginObject;
            TDomainDeliverabilityTrackingOptionMarshaller.Instance.Marshall(PublicRequestSubscribedDomainsListValue, Context);
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

class constructor TPutDeliverabilityDashboardOptionRequestMarshaller.Create;
begin
  FInstance := TPutDeliverabilityDashboardOptionRequestMarshaller.Create;
end;

class function TPutDeliverabilityDashboardOptionRequestMarshaller.Instance: IPutDeliverabilityDashboardOptionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
