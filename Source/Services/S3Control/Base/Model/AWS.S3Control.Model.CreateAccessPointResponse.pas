unit AWS.S3Control.Model.CreateAccessPointResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateAccessPointResponse = class;
  
  ICreateAccessPointResponse = interface(IAmazonWebServiceResponse)
    function GetAccessPointArn: string;
    procedure SetAccessPointArn(const Value: string);
    function Obj: TCreateAccessPointResponse;
    function IsSetAccessPointArn: Boolean;
    property AccessPointArn: string read GetAccessPointArn write SetAccessPointArn;
  end;
  
  TCreateAccessPointResponse = class(TAmazonWebServiceResponse, ICreateAccessPointResponse)
  strict private
    FAccessPointArn: Nullable<string>;
    function GetAccessPointArn: string;
    procedure SetAccessPointArn(const Value: string);
  strict protected
    function Obj: TCreateAccessPointResponse;
  public
    function IsSetAccessPointArn: Boolean;
    property AccessPointArn: string read GetAccessPointArn write SetAccessPointArn;
  end;
  
implementation

{ TCreateAccessPointResponse }

function TCreateAccessPointResponse.Obj: TCreateAccessPointResponse;
begin
  Result := Self;
end;

function TCreateAccessPointResponse.GetAccessPointArn: string;
begin
  Result := FAccessPointArn.ValueOrDefault;
end;

procedure TCreateAccessPointResponse.SetAccessPointArn(const Value: string);
begin
  FAccessPointArn := Value;
end;

function TCreateAccessPointResponse.IsSetAccessPointArn: Boolean;
begin
  Result := FAccessPointArn.HasValue;
end;

end.
