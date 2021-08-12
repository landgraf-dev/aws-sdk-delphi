unit AWS.SNS.Transform.CreateTopicRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.CreateTopicRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateTopicRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateTopicRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateTopicRequest>, ICreateTopicRequestMarshaller)
  strict private
    class var FInstance: ICreateTopicRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateTopicRequest): IRequest; overload;
    class function Instance: ICreateTopicRequestMarshaller; static;
  end;
  
implementation

{ TCreateTopicRequestMarshaller }

function TCreateTopicRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateTopicRequest(AInput));
end;

function TCreateTopicRequestMarshaller.Marshall(PublicRequest: TCreateTopicRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'CreateTopic');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.Attributes.Keys do
      begin
        var value: string;
        var hasValue: Boolean;
        hasValue := PublicRequest.Attributes.TryGetValue(key, value);
        Request.Parameters.Add('Attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'key', TStringUtils.Fromstring(key));
        if hasValue then
          Request.Parameters.Add('Attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'value', TStringUtils.Fromstring(value));
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetName then
      Request.Parameters.Add('Name', TStringUtils.Fromstring(PublicRequest.Name));
    if PublicRequest.IsSetTags then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Tags do
      begin
        if PublicRequestlistValue.IsSetKey then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Key', TStringUtils.Fromstring(PublicRequestlistValue.Key));
        if PublicRequestlistValue.IsSetValue then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValue.Value));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TCreateTopicRequestMarshaller.Create;
begin
  FInstance := TCreateTopicRequestMarshaller.Create;
end;

class function TCreateTopicRequestMarshaller.Instance: ICreateTopicRequestMarshaller;
begin
  Result := FInstance;
end;

end.
