unit AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetAccessPointConfigurationForObjectLambdaRequest = class;
  
  IGetAccessPointConfigurationForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointConfigurationForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointConfigurationForObjectLambdaRequest = class(TAmazonS3ControlRequest, IGetAccessPointConfigurationForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointConfigurationForObjectLambdaRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointConfigurationForObjectLambdaRequest }

function TGetAccessPointConfigurationForObjectLambdaRequest.Obj: TGetAccessPointConfigurationForObjectLambdaRequest;
begin
  Result := Self;
end;

function TGetAccessPointConfigurationForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointConfigurationForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointConfigurationForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointConfigurationForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointConfigurationForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointConfigurationForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
