unit AWS.SES.Transform.SendRawEmailRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendRawEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISendRawEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendRawEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendRawEmailRequest>, ISendRawEmailRequestMarshaller)
  strict private
    class var FInstance: ISendRawEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendRawEmailRequest): IRequest; overload;
    class function Instance: ISendRawEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendRawEmailRequestMarshaller }

function TSendRawEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendRawEmailRequest(AInput));
end;

function TSendRawEmailRequestMarshaller.Marshall(PublicRequest: TSendRawEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendRawEmail');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetDestinations then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Destinations do
      begin
        Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetFromArn then
      Request.Parameters.Add('FromArn', TStringUtils.Fromstring(PublicRequest.FromArn));
    if PublicRequest.IsSetRawMessage then
      if PublicRequest.RawMessage.IsSetData then
        Request.Parameters.Add('RawMessage' + '.' + 'Data', TStringUtils.FromTBytesStream(PublicRequest.RawMessage.Data));
    if PublicRequest.IsSetReturnPathArn then
      Request.Parameters.Add('ReturnPathArn', TStringUtils.Fromstring(PublicRequest.ReturnPathArn));
    if PublicRequest.IsSetSource then
      Request.Parameters.Add('Source', TStringUtils.Fromstring(PublicRequest.Source));
    if PublicRequest.IsSetSourceArn then
      Request.Parameters.Add('SourceArn', TStringUtils.Fromstring(PublicRequest.SourceArn));
    if PublicRequest.IsSetTags then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Tags do
      begin
        if PublicRequestlistValue.IsSetName then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestlistValue.Name));
        if PublicRequestlistValue.IsSetValue then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValue.Value));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TSendRawEmailRequestMarshaller.Create;
begin
  FInstance := TSendRawEmailRequestMarshaller.Create;
end;

class function TSendRawEmailRequestMarshaller.Instance: ISendRawEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
