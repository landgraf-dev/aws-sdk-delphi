unit AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.ObjectLambdaConfiguration;

type
  TCreateAccessPointForObjectLambdaRequest = class;
  
  ICreateAccessPointForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfiguration: TObjectLambdaConfiguration;
    procedure SetConfiguration(const Value: TObjectLambdaConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TCreateAccessPointForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Configuration: TObjectLambdaConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property Name: string read GetName write SetName;
  end;
  
  TCreateAccessPointForObjectLambdaRequest = class(TAmazonS3ControlRequest, ICreateAccessPointForObjectLambdaRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfiguration: TObjectLambdaConfiguration;
    FKeepConfiguration: Boolean;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfiguration: TObjectLambdaConfiguration;
    procedure SetConfiguration(const Value: TObjectLambdaConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TCreateAccessPointForObjectLambdaRequest;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Configuration: TObjectLambdaConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TCreateAccessPointForObjectLambdaRequest }

destructor TCreateAccessPointForObjectLambdaRequest.Destroy;
begin
  Configuration := nil;
  inherited;
end;

function TCreateAccessPointForObjectLambdaRequest.Obj: TCreateAccessPointForObjectLambdaRequest;
begin
  Result := Self;
end;

function TCreateAccessPointForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TCreateAccessPointForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TCreateAccessPointForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TCreateAccessPointForObjectLambdaRequest.GetConfiguration: TObjectLambdaConfiguration;
begin
  Result := FConfiguration;
end;

procedure TCreateAccessPointForObjectLambdaRequest.SetConfiguration(const Value: TObjectLambdaConfiguration);
begin
  if FConfiguration <> Value then
  begin
    if not KeepConfiguration then
      FConfiguration.Free;
    FConfiguration := Value;
  end;
end;

function TCreateAccessPointForObjectLambdaRequest.GetKeepConfiguration: Boolean;
begin
  Result := FKeepConfiguration;
end;

procedure TCreateAccessPointForObjectLambdaRequest.SetKeepConfiguration(const Value: Boolean);
begin
  FKeepConfiguration := Value;
end;

function TCreateAccessPointForObjectLambdaRequest.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration <> nil;
end;

function TCreateAccessPointForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateAccessPointForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateAccessPointForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
