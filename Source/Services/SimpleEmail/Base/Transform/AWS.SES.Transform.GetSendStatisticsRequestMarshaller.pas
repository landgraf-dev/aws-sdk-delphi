unit AWS.SES.Transform.GetSendStatisticsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetSendStatisticsRequest, 
  AWS.Internal.DefaultRequest;

type
  IGetSendStatisticsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSendStatisticsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSendStatisticsRequest>, IGetSendStatisticsRequestMarshaller)
  strict private
    class var FInstance: IGetSendStatisticsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSendStatisticsRequest): IRequest; overload;
    class function Instance: IGetSendStatisticsRequestMarshaller; static;
  end;
  
implementation

{ TGetSendStatisticsRequestMarshaller }

function TGetSendStatisticsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSendStatisticsRequest(AInput));
end;

function TGetSendStatisticsRequestMarshaller.Marshall(PublicRequest: TGetSendStatisticsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetSendStatistics');
  Request.Parameters.Add('Version', '2010-12-01');
  Result := Request;
end;

class constructor TGetSendStatisticsRequestMarshaller.Create;
begin
  FInstance := TGetSendStatisticsRequestMarshaller.Create;
end;

class function TGetSendStatisticsRequestMarshaller.Instance: IGetSendStatisticsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
