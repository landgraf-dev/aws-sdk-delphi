unit AWS.SES.Model.LambdaAction;

interface

uses
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TLambdaAction = class;
  
  ILambdaAction = interface
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
    function GetInvocationType: TInvocationType;
    procedure SetInvocationType(const Value: TInvocationType);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TLambdaAction;
    function IsSetFunctionArn: Boolean;
    function IsSetInvocationType: Boolean;
    function IsSetTopicArn: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
    property InvocationType: TInvocationType read GetInvocationType write SetInvocationType;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TLambdaAction = class
  strict private
    FFunctionArn: Nullable<string>;
    FInvocationType: Nullable<TInvocationType>;
    FTopicArn: Nullable<string>;
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
    function GetInvocationType: TInvocationType;
    procedure SetInvocationType(const Value: TInvocationType);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TLambdaAction;
  public
    function IsSetFunctionArn: Boolean;
    function IsSetInvocationType: Boolean;
    function IsSetTopicArn: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
    property InvocationType: TInvocationType read GetInvocationType write SetInvocationType;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TLambdaAction }

function TLambdaAction.Obj: TLambdaAction;
begin
  Result := Self;
end;

function TLambdaAction.GetFunctionArn: string;
begin
  Result := FFunctionArn.ValueOrDefault;
end;

procedure TLambdaAction.SetFunctionArn(const Value: string);
begin
  FFunctionArn := Value;
end;

function TLambdaAction.IsSetFunctionArn: Boolean;
begin
  Result := FFunctionArn.HasValue;
end;

function TLambdaAction.GetInvocationType: TInvocationType;
begin
  Result := FInvocationType.ValueOrDefault;
end;

procedure TLambdaAction.SetInvocationType(const Value: TInvocationType);
begin
  FInvocationType := Value;
end;

function TLambdaAction.IsSetInvocationType: Boolean;
begin
  Result := FInvocationType.HasValue;
end;

function TLambdaAction.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TLambdaAction.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TLambdaAction.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
