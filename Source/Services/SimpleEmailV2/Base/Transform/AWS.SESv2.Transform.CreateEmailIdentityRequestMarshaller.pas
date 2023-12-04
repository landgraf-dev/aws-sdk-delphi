unit AWS.SESv2.Transform.CreateEmailIdentityRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateEmailIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.DkimSigningAttributesMarshaller, 
  AWS.SESv2.Transform.TagMarshaller;

type
  ICreateEmailIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateEmailIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateEmailIdentityRequest>, ICreateEmailIdentityRequestMarshaller)
  strict private
    class var FInstance: ICreateEmailIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateEmailIdentityRequest): IRequest; overload;
    class function Instance: ICreateEmailIdentityRequestMarshaller; static;
  end;
  
implementation

{ TCreateEmailIdentityRequestMarshaller }

function TCreateEmailIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateEmailIdentityRequest(AInput));
end;

function TCreateEmailIdentityRequestMarshaller.Marshall(PublicRequest: TCreateEmailIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/identities';
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
        if PublicRequest.IsSetDkimSigningAttributes then
        begin
          Context.Writer.WriteName('DkimSigningAttributes');
          Context.Writer.WriteBeginObject;
          TDkimSigningAttributesMarshaller.Instance.Marshall(PublicRequest.DkimSigningAttributes, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetEmailIdentity then
        begin
          Context.Writer.WriteName('EmailIdentity');
          Context.Writer.WriteString(PublicRequest.EmailIdentity);
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

class constructor TCreateEmailIdentityRequestMarshaller.Create;
begin
  FInstance := TCreateEmailIdentityRequestMarshaller.Create;
end;

class function TCreateEmailIdentityRequestMarshaller.Instance: ICreateEmailIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
