unit AWS.S3Control.Model.AwsLambdaTransformation;

interface

uses
  AWS.Nullable;

type
  TAwsLambdaTransformation = class;
  
  IAwsLambdaTransformation = interface
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
    function GetFunctionPayload: string;
    procedure SetFunctionPayload(const Value: string);
    function Obj: TAwsLambdaTransformation;
    function IsSetFunctionArn: Boolean;
    function IsSetFunctionPayload: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
    property FunctionPayload: string read GetFunctionPayload write SetFunctionPayload;
  end;
  
  TAwsLambdaTransformation = class
  strict private
    FFunctionArn: Nullable<string>;
    FFunctionPayload: Nullable<string>;
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
    function GetFunctionPayload: string;
    procedure SetFunctionPayload(const Value: string);
  strict protected
    function Obj: TAwsLambdaTransformation;
  public
    function IsSetFunctionArn: Boolean;
    function IsSetFunctionPayload: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
    property FunctionPayload: string read GetFunctionPayload write SetFunctionPayload;
  end;
  
implementation

{ TAwsLambdaTransformation }

function TAwsLambdaTransformation.Obj: TAwsLambdaTransformation;
begin
  Result := Self;
end;

function TAwsLambdaTransformation.GetFunctionArn: string;
begin
  Result := FFunctionArn.ValueOrDefault;
end;

procedure TAwsLambdaTransformation.SetFunctionArn(const Value: string);
begin
  FFunctionArn := Value;
end;

function TAwsLambdaTransformation.IsSetFunctionArn: Boolean;
begin
  Result := FFunctionArn.HasValue;
end;

function TAwsLambdaTransformation.GetFunctionPayload: string;
begin
  Result := FFunctionPayload.ValueOrDefault;
end;

procedure TAwsLambdaTransformation.SetFunctionPayload(const Value: string);
begin
  FFunctionPayload := Value;
end;

function TAwsLambdaTransformation.IsSetFunctionPayload: Boolean;
begin
  Result := FFunctionPayload.HasValue;
end;

end.
