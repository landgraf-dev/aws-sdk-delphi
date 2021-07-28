unit AWS.SES.Model.InvalidLambdaFunctionException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EInvalidLambdaFunctionException = class(EAmazonSimpleEmailServiceException)
  strict private
    FFunctionArn: Nullable<string>;
    function GetFunctionArn: string;
    procedure SetFunctionArn(const Value: string);
  public
    function IsSetFunctionArn: Boolean;
    property FunctionArn: string read GetFunctionArn write SetFunctionArn;
  end;
  
implementation

{ EInvalidLambdaFunctionException }

function EInvalidLambdaFunctionException.GetFunctionArn: string;
begin
  Result := FFunctionArn.ValueOrDefault;
end;

procedure EInvalidLambdaFunctionException.SetFunctionArn(const Value: string);
begin
  FFunctionArn := Value;
end;

function EInvalidLambdaFunctionException.IsSetFunctionArn: Boolean;
begin
  Result := FFunctionArn.HasValue;
end;

end.
