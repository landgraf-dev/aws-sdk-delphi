unit AWS.SES.Model.SNSDestination;

interface

uses
  Bcl.Types.Nullable;

type
  TSNSDestination = class;
  
  ISNSDestination = interface
    function GetTopicARN: string;
    procedure SetTopicARN(const Value: string);
    function Obj: TSNSDestination;
    function IsSetTopicARN: Boolean;
    property TopicARN: string read GetTopicARN write SetTopicARN;
  end;
  
  TSNSDestination = class
  strict private
    FTopicARN: Nullable<string>;
    function GetTopicARN: string;
    procedure SetTopicARN(const Value: string);
  strict protected
    function Obj: TSNSDestination;
  public
    function IsSetTopicARN: Boolean;
    property TopicARN: string read GetTopicARN write SetTopicARN;
  end;
  
implementation

{ TSNSDestination }

function TSNSDestination.Obj: TSNSDestination;
begin
  Result := Self;
end;

function TSNSDestination.GetTopicARN: string;
begin
  Result := FTopicARN.ValueOrDefault;
end;

procedure TSNSDestination.SetTopicARN(const Value: string);
begin
  FTopicARN := Value;
end;

function TSNSDestination.IsSetTopicARN: Boolean;
begin
  Result := FTopicARN.HasValue;
end;

end.
