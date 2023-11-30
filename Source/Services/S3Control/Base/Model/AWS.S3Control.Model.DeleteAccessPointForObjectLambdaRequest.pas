unit AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteAccessPointForObjectLambdaRequest = class;
  
  IDeleteAccessPointForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteAccessPointForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteAccessPointForObjectLambdaRequest = class(TAmazonS3ControlRequest, IDeleteAccessPointForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteAccessPointForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteAccessPointForObjectLambdaRequest }

function TDeleteAccessPointForObjectLambdaRequest.Obj: TDeleteAccessPointForObjectLambdaRequest;
begin
  Result := Self;
end;

function TDeleteAccessPointForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteAccessPointForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteAccessPointForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteAccessPointForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteAccessPointForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteAccessPointForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
