unit AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.ObjectLambdaConfiguration;

type
  TPutAccessPointConfigurationForObjectLambdaRequest = class;
  
  IPutAccessPointConfigurationForObjectLambdaRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfiguration: TObjectLambdaConfiguration;
    procedure SetConfiguration(const Value: TObjectLambdaConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TPutAccessPointConfigurationForObjectLambdaRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Configuration: TObjectLambdaConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property Name: string read GetName write SetName;
  end;
  
  TPutAccessPointConfigurationForObjectLambdaRequest = class(TAmazonS3ControlRequest, IPutAccessPointConfigurationForObjectLambdaRequest)
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
    function Obj: TPutAccessPointConfigurationForObjectLambdaRequest;
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

{ TPutAccessPointConfigurationForObjectLambdaRequest }

destructor TPutAccessPointConfigurationForObjectLambdaRequest.Destroy;
begin
  Configuration := nil;
  inherited;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.Obj: TPutAccessPointConfigurationForObjectLambdaRequest;
begin
  Result := Self;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutAccessPointConfigurationForObjectLambdaRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.GetConfiguration: TObjectLambdaConfiguration;
begin
  Result := FConfiguration;
end;

procedure TPutAccessPointConfigurationForObjectLambdaRequest.SetConfiguration(const Value: TObjectLambdaConfiguration);
begin
  if FConfiguration <> Value then
  begin
    if not KeepConfiguration then
      FConfiguration.Free;
    FConfiguration := Value;
  end;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.GetKeepConfiguration: Boolean;
begin
  Result := FKeepConfiguration;
end;

procedure TPutAccessPointConfigurationForObjectLambdaRequest.SetKeepConfiguration(const Value: Boolean);
begin
  FKeepConfiguration := Value;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration <> nil;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPutAccessPointConfigurationForObjectLambdaRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TPutAccessPointConfigurationForObjectLambdaRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
