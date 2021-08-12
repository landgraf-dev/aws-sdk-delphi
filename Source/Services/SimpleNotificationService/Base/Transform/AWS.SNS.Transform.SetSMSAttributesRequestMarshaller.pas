unit AWS.SNS.Transform.SetSMSAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SetSMSAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetSMSAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetSMSAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetSMSAttributesRequest>, ISetSMSAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetSMSAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetSMSAttributesRequest): IRequest; overload;
    class function Instance: ISetSMSAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetSMSAttributesRequestMarshaller }

function TSetSMSAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetSMSAttributesRequest(AInput));
end;

function TSetSMSAttributesRequestMarshaller.Marshall(PublicRequest: TSetSMSAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'SetSMSAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.Attributes.Keys do
      begin
        var value: string;
        var hasValue: Boolean;
        hasValue := PublicRequest.Attributes.TryGetValue(key, value);
        Request.Parameters.Add('attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'key', TStringUtils.Fromstring(key));
        if hasValue then
          Request.Parameters.Add('attributes' + '.' + 'entry' + '.' + IntToStr(mapIndex) + '.' + 'value', TStringUtils.Fromstring(value));
        Inc(mapIndex);
      end;
    end;
  Result := Request;
end;

class constructor TSetSMSAttributesRequestMarshaller.Create;
begin
  FInstance := TSetSMSAttributesRequestMarshaller.Create;
end;

class function TSetSMSAttributesRequestMarshaller.Instance: ISetSMSAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
