unit AWS.Polly.Transform.DescribeVoicesResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IDescribeVoicesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeVoicesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeVoicesResponseUnmarshaller)
  end;
  
implementation

end.
