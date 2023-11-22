unit AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateAccessPointForObjectLambdaResponse = class;
  
  ICreateAccessPointForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetObjectLambdaAccessPointArn: string;
    procedure SetObjectLambdaAccessPointArn(const Value: string);
    function Obj: TCreateAccessPointForObjectLambdaResponse;
    function IsSetObjectLambdaAccessPointArn: Boolean;
    property ObjectLambdaAccessPointArn: string read GetObjectLambdaAccessPointArn write SetObjectLambdaAccessPointArn;
  end;
  
  TCreateAccessPointForObjectLambdaResponse = class(TAmazonWebServiceResponse, ICreateAccessPointForObjectLambdaResponse)
  strict private
    FObjectLambdaAccessPointArn: Nullable<string>;
    function GetObjectLambdaAccessPointArn: string;
    procedure SetObjectLambdaAccessPointArn(const Value: string);
  strict protected
    function Obj: TCreateAccessPointForObjectLambdaResponse;
  public
    function IsSetObjectLambdaAccessPointArn: Boolean;
    property ObjectLambdaAccessPointArn: string read GetObjectLambdaAccessPointArn write SetObjectLambdaAccessPointArn;
  end;
  
implementation

{ TCreateAccessPointForObjectLambdaResponse }

function TCreateAccessPointForObjectLambdaResponse.Obj: TCreateAccessPointForObjectLambdaResponse;
begin
  Result := Self;
end;

function TCreateAccessPointForObjectLambdaResponse.GetObjectLambdaAccessPointArn: string;
begin
  Result := FObjectLambdaAccessPointArn.ValueOrDefault;
end;

procedure TCreateAccessPointForObjectLambdaResponse.SetObjectLambdaAccessPointArn(const Value: string);
begin
  FObjectLambdaAccessPointArn := Value;
end;

function TCreateAccessPointForObjectLambdaResponse.IsSetObjectLambdaAccessPointArn: Boolean;
begin
  Result := FObjectLambdaAccessPointArn.HasValue;
end;

end.
