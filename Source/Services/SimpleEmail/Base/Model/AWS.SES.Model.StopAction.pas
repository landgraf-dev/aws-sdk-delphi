unit AWS.SES.Model.StopAction;

interface

uses
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TStopAction = class;
  
  IStopAction = interface
    function GetScope: TStopScope;
    procedure SetScope(const Value: TStopScope);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TStopAction;
    function IsSetScope: Boolean;
    function IsSetTopicArn: Boolean;
    property Scope: TStopScope read GetScope write SetScope;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TStopAction = class
  strict private
    FScope: Nullable<TStopScope>;
    FTopicArn: Nullable<string>;
    function GetScope: TStopScope;
    procedure SetScope(const Value: TStopScope);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TStopAction;
  public
    function IsSetScope: Boolean;
    function IsSetTopicArn: Boolean;
    property Scope: TStopScope read GetScope write SetScope;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TStopAction }

function TStopAction.Obj: TStopAction;
begin
  Result := Self;
end;

function TStopAction.GetScope: TStopScope;
begin
  Result := FScope.ValueOrDefault;
end;

procedure TStopAction.SetScope(const Value: TStopScope);
begin
  FScope := Value;
end;

function TStopAction.IsSetScope: Boolean;
begin
  Result := FScope.HasValue;
end;

function TStopAction.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TStopAction.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TStopAction.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
