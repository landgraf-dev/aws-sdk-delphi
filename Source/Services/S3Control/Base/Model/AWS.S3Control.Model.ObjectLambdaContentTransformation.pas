unit AWS.S3Control.Model.ObjectLambdaContentTransformation;

interface

uses
  AWS.S3Control.Model.AwsLambdaTransformation;

type
  TObjectLambdaContentTransformation = class;
  
  IObjectLambdaContentTransformation = interface
    function GetAwsLambda: TAwsLambdaTransformation;
    procedure SetAwsLambda(const Value: TAwsLambdaTransformation);
    function GetKeepAwsLambda: Boolean;
    procedure SetKeepAwsLambda(const Value: Boolean);
    function Obj: TObjectLambdaContentTransformation;
    function IsSetAwsLambda: Boolean;
    property AwsLambda: TAwsLambdaTransformation read GetAwsLambda write SetAwsLambda;
    property KeepAwsLambda: Boolean read GetKeepAwsLambda write SetKeepAwsLambda;
  end;
  
  TObjectLambdaContentTransformation = class
  strict private
    FAwsLambda: TAwsLambdaTransformation;
    FKeepAwsLambda: Boolean;
    function GetAwsLambda: TAwsLambdaTransformation;
    procedure SetAwsLambda(const Value: TAwsLambdaTransformation);
    function GetKeepAwsLambda: Boolean;
    procedure SetKeepAwsLambda(const Value: Boolean);
  strict protected
    function Obj: TObjectLambdaContentTransformation;
  public
    destructor Destroy; override;
    function IsSetAwsLambda: Boolean;
    property AwsLambda: TAwsLambdaTransformation read GetAwsLambda write SetAwsLambda;
    property KeepAwsLambda: Boolean read GetKeepAwsLambda write SetKeepAwsLambda;
  end;
  
implementation

{ TObjectLambdaContentTransformation }

destructor TObjectLambdaContentTransformation.Destroy;
begin
  AwsLambda := nil;
  inherited;
end;

function TObjectLambdaContentTransformation.Obj: TObjectLambdaContentTransformation;
begin
  Result := Self;
end;

function TObjectLambdaContentTransformation.GetAwsLambda: TAwsLambdaTransformation;
begin
  Result := FAwsLambda;
end;

procedure TObjectLambdaContentTransformation.SetAwsLambda(const Value: TAwsLambdaTransformation);
begin
  if FAwsLambda <> Value then
  begin
    if not KeepAwsLambda then
      FAwsLambda.Free;
    FAwsLambda := Value;
  end;
end;

function TObjectLambdaContentTransformation.GetKeepAwsLambda: Boolean;
begin
  Result := FKeepAwsLambda;
end;

procedure TObjectLambdaContentTransformation.SetKeepAwsLambda(const Value: Boolean);
begin
  FKeepAwsLambda := Value;
end;

function TObjectLambdaContentTransformation.IsSetAwsLambda: Boolean;
begin
  Result := FAwsLambda <> nil;
end;

end.
