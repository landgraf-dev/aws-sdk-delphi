unit AWS.SESv2.Transform.CreateConfigurationSetRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.DeliveryOptionsMarshaller, 
  AWS.SESv2.Transform.ReputationOptionsMarshaller, 
  AWS.SESv2.Transform.SendingOptionsMarshaller, 
  AWS.SESv2.Transform.SuppressionOptionsMarshaller, 
  AWS.SESv2.Transform.TagMarshaller, 
  AWS.SESv2.Transform.TrackingOptionsMarshaller;

type
  ICreateConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateConfigurationSetRequest>, ICreateConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateConfigurationSetRequest): IRequest; overload;
    class function Instance: ICreateConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetRequestMarshaller }

function TCreateConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateConfigurationSetRequest(AInput));
end;

function TCreateConfigurationSetRequestMarshaller.Marshall(PublicRequest: TCreateConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/configuration-sets';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetConfigurationSetName then
        begin
          Context.Writer.WriteName('ConfigurationSetName');
          Context.Writer.WriteString(PublicRequest.ConfigurationSetName);
        end;
        if PublicRequest.IsSetDeliveryOptions then
        begin
          Context.Writer.WriteName('DeliveryOptions');
          Context.Writer.WriteBeginObject;
          TDeliveryOptionsMarshaller.Instance.Marshall(PublicRequest.DeliveryOptions, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetReputationOptions then
        begin
          Context.Writer.WriteName('ReputationOptions');
          Context.Writer.WriteBeginObject;
          TReputationOptionsMarshaller.Instance.Marshall(PublicRequest.ReputationOptions, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSendingOptions then
        begin
          Context.Writer.WriteName('SendingOptions');
          Context.Writer.WriteBeginObject;
          TSendingOptionsMarshaller.Instance.Marshall(PublicRequest.SendingOptions, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSuppressionOptions then
        begin
          Context.Writer.WriteName('SuppressionOptions');
          Context.Writer.WriteBeginObject;
          TSuppressionOptionsMarshaller.Instance.Marshall(PublicRequest.SuppressionOptions, Context);
          Context.Writer.WriteEndObject;
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
        if PublicRequest.IsSetTrackingOptions then
        begin
          Context.Writer.WriteName('TrackingOptions');
          Context.Writer.WriteBeginObject;
          TTrackingOptionsMarshaller.Instance.Marshall(PublicRequest.TrackingOptions, Context);
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

class constructor TCreateConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TCreateConfigurationSetRequestMarshaller.Create;
end;

class function TCreateConfigurationSetRequestMarshaller.Instance: ICreateConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
