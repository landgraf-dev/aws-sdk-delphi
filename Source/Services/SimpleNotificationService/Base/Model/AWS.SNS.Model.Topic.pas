unit AWS.SNS.Model.Topic;

interface

uses
  Bcl.Types.Nullable;

type
  TTopic = class;
  
  ITopic = interface
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TTopic;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TTopic = class
  strict private
    FTopicArn: Nullable<string>;
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TTopic;
  public
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TTopic }

function TTopic.Obj: TTopic;
begin
  Result := Self;
end;

function TTopic.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TTopic.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TTopic.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
