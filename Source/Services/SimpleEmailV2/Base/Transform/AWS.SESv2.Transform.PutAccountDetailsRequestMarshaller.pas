unit AWS.SESv2.Transform.PutAccountDetailsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutAccountDetailsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IPutAccountDetailsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccountDetailsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccountDetailsRequest>, IPutAccountDetailsRequestMarshaller)
  strict private
    class var FInstance: IPutAccountDetailsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccountDetailsRequest): IRequest; overload;
    class function Instance: IPutAccountDetailsRequestMarshaller; static;
  end;
  
implementation

{ TPutAccountDetailsRequestMarshaller }

function TPutAccountDetailsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccountDetailsRequest(AInput));
end;

function TPutAccountDetailsRequestMarshaller.Marshall(PublicRequest: TPutAccountDetailsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/account/details';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetAdditionalContactEmailAddresses then
        begin
          Context.Writer.WriteName('AdditionalContactEmailAddresses');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAdditionalContactEmailAddressesListValue in PublicRequest.AdditionalContactEmailAddresses do
            Context.Writer.WriteString(PublicRequestAdditionalContactEmailAddressesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetContactLanguage then
        begin
          Context.Writer.WriteName('ContactLanguage');
          Context.Writer.WriteString(PublicRequest.ContactLanguage.Value);
        end;
        if PublicRequest.IsSetMailType then
        begin
          Context.Writer.WriteName('MailType');
          Context.Writer.WriteString(PublicRequest.MailType.Value);
        end;
        if PublicRequest.IsSetProductionAccessEnabled then
        begin
          Context.Writer.WriteName('ProductionAccessEnabled');
          Context.Writer.WriteBoolean(PublicRequest.ProductionAccessEnabled);
        end;
        if PublicRequest.IsSetUseCaseDescription then
        begin
          Context.Writer.WriteName('UseCaseDescription');
          Context.Writer.WriteString(PublicRequest.UseCaseDescription);
        end;
        if PublicRequest.IsSetWebsiteURL then
        begin
          Context.Writer.WriteName('WebsiteURL');
          Context.Writer.WriteString(PublicRequest.WebsiteURL);
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

class constructor TPutAccountDetailsRequestMarshaller.Create;
begin
  FInstance := TPutAccountDetailsRequestMarshaller.Create;
end;

class function TPutAccountDetailsRequestMarshaller.Instance: IPutAccountDetailsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
