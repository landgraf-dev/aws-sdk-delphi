unit AWS.SESv2.Transform.ListContactsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListContactsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.SESv2.Transform.ListContactsFilterMarshaller;

type
  IListContactsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListContactsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListContactsRequest>, IListContactsRequestMarshaller)
  strict private
    class var FInstance: IListContactsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListContactsRequest): IRequest; overload;
    class function Instance: IListContactsRequestMarshaller; static;
  end;
  
implementation

{ TListContactsRequestMarshaller }

function TListContactsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListContactsRequest(AInput));
end;

function TListContactsRequestMarshaller.Marshall(PublicRequest: TListContactsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}/contacts';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetFilter then
        begin
          Context.Writer.WriteName('Filter');
          Context.Writer.WriteBeginObject;
          TListContactsFilterMarshaller.Instance.Marshall(PublicRequest.Filter, Context);
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
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListContactsRequestMarshaller.Create;
begin
  FInstance := TListContactsRequestMarshaller.Create;
end;

class function TListContactsRequestMarshaller.Instance: IListContactsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
