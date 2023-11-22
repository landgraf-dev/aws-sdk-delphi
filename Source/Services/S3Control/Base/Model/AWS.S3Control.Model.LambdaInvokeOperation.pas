unit AWS.S3Control.Model.LambdaInvokeOperation;

interface

uses
  Bcl.Types.Nullable;

type
  TLambdaInvokeOperation = class;
  
  ILambdaInvokeOperation = interface
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
    function Obj: TLambdaInvokeOperation;
    function IsSetFunctionArn: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
  end;
  
  TLambdaInvokeOperation = class
  strict private
    FFunctionArn: Nullable<string>;
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
  strict protected
    function Obj: TLambdaInvokeOperation;
  public
    function IsSetFunctionArn: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
  end;
  
implementation

{ TLambdaInvokeOperation }

function TLambdaInvokeOperation.Obj: TLambdaInvokeOperation;
begin
  Result := Self;
end;

function TLambdaInvokeOperation.GetFunctionArn: string;
begin
  Result := FFunctionArn.ValueOrDefault;
end;

procedure TLambdaInvokeOperation.SetFunctionArn(const Value: string);
begin
  FFunctionArn := Value;
end;

function TLambdaInvokeOperation.IsSetFunctionArn: Boolean;
begin
  Result := FFunctionArn.HasValue;
end;

end.
