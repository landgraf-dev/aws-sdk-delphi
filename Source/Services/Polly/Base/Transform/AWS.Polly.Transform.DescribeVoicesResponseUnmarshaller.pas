unit AWS.Polly.Transform.DescribeVoicesResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IDescribeVoicesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeVoicesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeVoicesResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeVoicesResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IDescribeVoicesResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeVoicesResponseUnmarshaller }

class constructor TDescribeVoicesResponseUnmarshaller.Create;
begin
  FInstance := TDescribeVoicesResponseUnmarshaller.Create;
end;

class function TDescribeVoicesResponseUnmarshaller.Instance: IDescribeVoicesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
