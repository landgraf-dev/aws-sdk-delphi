unit AWS.SNS.Transform.CreatePlatformApplicationRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.CreatePlatformApplicationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreatePlatformApplicationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreatePlatformApplicationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreatePlatformApplicationRequest>, ICreatePlatformApplicationRequestMarshaller)
  strict private
    class var FInstance: ICreatePlatformApplicationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreatePlatformApplicationRequest): IRequest; overload;
    class function Instance: ICreatePlatformApplicationRequestMarshaller; static;
  end;
  
implementation

{ TCreatePlatformApplicationRequestMarshaller }

function TCreatePlatformApplicationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreatePlatformApplicationRequest(AInput));
end;

function TCreatePlatformApplicationRequestMarshaller.Marshall(PublicRequest: TCreatePlatformApplicationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'CreatePlatformApplication');
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
    if PublicRequest.IsSetPlatform then
      Request.Parameters.Add('Platform', TStringUtils.Fromstring(PublicRequest.Platform));
  end;
  Result := Request;
end;

class constructor TCreatePlatformApplicationRequestMarshaller.Create;
begin
  FInstance := TCreatePlatformApplicationRequestMarshaller.Create;
end;

class function TCreatePlatformApplicationRequestMarshaller.Instance: ICreatePlatformApplicationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
