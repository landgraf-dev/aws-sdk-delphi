unit AWS.S3Control.Model.ObjectLambdaAccessPoint;

interface

uses
  AWS.Nullable;

type
  TObjectLambdaAccessPoint = class;
  
  IObjectLambdaAccessPoint = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetObjectLambdaAccessPointArn: string;
    procedure SetObjectLambdaAccessPointArn(const Value: string);
    function Obj: TObjectLambdaAccessPoint;
    function IsSetName: Boolean;
    function IsSetObjectLambdaAccessPointArn: Boolean;
    property Name: string read GetName write SetName;
    property ObjectLambdaAccessPointArn: string read GetObjectLambdaAccessPointArn write SetObjectLambdaAccessPointArn;
  end;
  
  TObjectLambdaAccessPoint = class
  strict private
    FName: Nullable<string>;
    FObjectLambdaAccessPointArn: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetObjectLambdaAccessPointArn: string;
    procedure SetObjectLambdaAccessPointArn(const Value: string);
  strict protected
    function Obj: TObjectLambdaAccessPoint;
  public
    function IsSetName: Boolean;
    function IsSetObjectLambdaAccessPointArn: Boolean;
    property Name: string read GetName write SetName;
    property ObjectLambdaAccessPointArn: string read GetObjectLambdaAccessPointArn write SetObjectLambdaAccessPointArn;
  end;
  
implementation

{ TObjectLambdaAccessPoint }

function TObjectLambdaAccessPoint.Obj: TObjectLambdaAccessPoint;
begin
  Result := Self;
end;

function TObjectLambdaAccessPoint.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TObjectLambdaAccessPoint.SetName(const Value: string);
begin
  FName := Value;
end;

function TObjectLambdaAccessPoint.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TObjectLambdaAccessPoint.GetObjectLambdaAccessPointArn: string;
begin
  Result := FObjectLambdaAccessPointArn.ValueOrDefault;
end;

procedure TObjectLambdaAccessPoint.SetObjectLambdaAccessPointArn(const Value: string);
begin
  FObjectLambdaAccessPointArn := Value;
end;

function TObjectLambdaAccessPoint.IsSetObjectLambdaAccessPointArn: Boolean;
begin
  Result := FObjectLambdaAccessPointArn.HasValue;
end;

end.
