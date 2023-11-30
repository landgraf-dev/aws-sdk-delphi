unit AWS.SESv2.Model.SnsDestination;

interface

uses
  AWS.Nullable;

type
  TSnsDestination = class;
  
  ISnsDestination = interface
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TSnsDestination;
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TSnsDestination = class
  strict private
    FTopicArn: Nullable<string>;
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TSnsDestination;
  public
    function IsSetTopicArn: Boolean;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TSnsDestination }

function TSnsDestination.Obj: TSnsDestination;
begin
  Result := Self;
end;

function TSnsDestination.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TSnsDestination.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TSnsDestination.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
