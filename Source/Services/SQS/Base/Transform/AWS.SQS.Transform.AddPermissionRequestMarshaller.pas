unit AWS.SQS.Transform.AddPermissionRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.AddPermissionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IAddPermissionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAddPermissionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAddPermissionRequest>, IAddPermissionRequestMarshaller)
  strict private
    class var FInstance: IAddPermissionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAddPermissionRequest): IRequest; overload;
    class function Instance: IAddPermissionRequestMarshaller; static;
  end;
  
implementation

{ TAddPermissionRequestMarshaller }

function TAddPermissionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAddPermissionRequest(AInput));
end;

function TAddPermissionRequestMarshaller.Marshall(PublicRequest: TAddPermissionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'AddPermission');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAWSAccountIds then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.AWSAccountIds do
      begin
        Request.Parameters.Add('AWSAccountId' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetActions then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Actions do
      begin
        Request.Parameters.Add('ActionName' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetLabel then
      Request.Parameters.Add('Label', TStringUtils.Fromstring(PublicRequest.&Label));
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TAddPermissionRequestMarshaller.Create;
begin
  FInstance := TAddPermissionRequestMarshaller.Create;
end;

class function TAddPermissionRequestMarshaller.Instance: IAddPermissionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
