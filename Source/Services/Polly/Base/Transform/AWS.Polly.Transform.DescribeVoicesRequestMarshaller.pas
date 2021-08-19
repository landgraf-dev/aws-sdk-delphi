unit AWS.Polly.Transform.DescribeVoicesRequestMarshaller;

interface

uses
  AWS.Polly.Model.DescribeVoicesRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IDescribeVoicesRequestMarshaller = interface(, IMarshaller<IRequest, TDescribeVoicesRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TDescribeVoicesRequestMarshaller = class(TInterfacedObject, IDescribeVoicesRequestMarshaller, IMarshaller<IRequest, TDescribeVoicesRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeVoicesRequest): IRequest; overload;
  end;
  
implementation

{ TDescribeVoicesRequestMarshaller }

function TDescribeVoicesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeVoicesRequest(AInput));
end;

function TDescribeVoicesRequestMarshaller.Marshall(PublicRequest: TDescribeVoicesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
