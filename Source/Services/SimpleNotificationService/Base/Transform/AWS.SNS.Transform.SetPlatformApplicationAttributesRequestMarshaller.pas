unit AWS.SNS.Transform.SetPlatformApplicationAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SetPlatformApplicationAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetPlatformApplicationAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetPlatformApplicationAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetPlatformApplicationAttributesRequest>, ISetPlatformApplicationAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetPlatformApplicationAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetPlatformApplicationAttributesRequest): IRequest; overload;
    class function Instance: ISetPlatformApplicationAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetPlatformApplicationAttributesRequestMarshaller }

function TSetPlatformApplicationAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetPlatformApplicationAttributesRequest(AInput));
end;

function TSetPlatformApplicationAttributesRequestMarshaller.Marshall(PublicRequest: TSetPlatformApplicationAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'SetPlatformApplicationAttributes');
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
    if PublicRequest.IsSetPlatformApplicationArn then
      Request.Parameters.Add('PlatformApplicationArn', TStringUtils.Fromstring(PublicRequest.PlatformApplicationArn));
  end;
  Result := Request;
end;

class constructor TSetPlatformApplicationAttributesRequestMarshaller.Create;
begin
  FInstance := TSetPlatformApplicationAttributesRequestMarshaller.Create;
end;

class function TSetPlatformApplicationAttributesRequestMarshaller.Instance: ISetPlatformApplicationAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
