unit AWS.SNS.Model.CreateTopicResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateTopicResponse = class;
  
  ICreateTopicResponse = interface(IAmazonWebServiceResponse)
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TCreateTopicResponse;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TCreateTopicResponse = class(TAmazonWebServiceResponse, ICreateTopicResponse)
  strict private
    FTopicArn: Nullable<string>;
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TCreateTopicResponse;
  public
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TCreateTopicResponse }

function TCreateTopicResponse.Obj: TCreateTopicResponse;
begin
  Result := Self;
end;

function TCreateTopicResponse.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TCreateTopicResponse.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TCreateTopicResponse.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
