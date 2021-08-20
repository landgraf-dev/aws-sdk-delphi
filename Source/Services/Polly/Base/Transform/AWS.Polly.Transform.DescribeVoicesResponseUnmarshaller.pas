unit AWS.Polly.Transform.DescribeVoicesResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Polly.Transform.VoiceUnmarshaller, 
  AWS.Polly.Model.Voice;

type
  IDescribeVoicesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeVoicesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeVoicesResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeVoicesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IDescribeVoicesResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeVoicesResponseUnmarshaller }

function TDescribeVoicesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeVoicesResponse;
begin
  Response := TDescribeVoicesResponse.Create;
  try
    AContext.Read;
    var TargetDepth := TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Voices', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<TVoice, IVoiceUnmarshaller>.JsonNew(TVoiceUnmarshaller.JsonInstance);
        Response.Voices := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TDescribeVoicesResponseUnmarshaller.Create;
begin
  FInstance := TDescribeVoicesResponseUnmarshaller.Create;
end;

class function TDescribeVoicesResponseUnmarshaller.Instance: IDescribeVoicesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
