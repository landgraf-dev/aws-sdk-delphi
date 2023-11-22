unit AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ObjectLambdaConfiguration;

type
  TGetAccessPointConfigurationForObjectLambdaResponse = class;
  
  IGetAccessPointConfigurationForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetConfiguration: TObjectLambdaConfiguration;
    procedure SetConfiguration(const Value: TObjectLambdaConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function Obj: TGetAccessPointConfigurationForObjectLambdaResponse;
    function IsSetConfiguration: Boolean;
    property Configuration: TObjectLambdaConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
  end;
  
  TGetAccessPointConfigurationForObjectLambdaResponse = class(TAmazonWebServiceResponse, IGetAccessPointConfigurationForObjectLambdaResponse)
  strict private
    FConfiguration: TObjectLambdaConfiguration;
    FKeepConfiguration: Boolean;
    function GetConfiguration: TObjectLambdaConfiguration;
    procedure SetConfiguration(const Value: TObjectLambdaConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetAccessPointConfigurationForObjectLambdaResponse;
  public
    destructor Destroy; override;
    function IsSetConfiguration: Boolean;
    property Configuration: TObjectLambdaConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
  end;
  
implementation

{ TGetAccessPointConfigurationForObjectLambdaResponse }

destructor TGetAccessPointConfigurationForObjectLambdaResponse.Destroy;
begin
  Configuration := nil;
  inherited;
end;

function TGetAccessPointConfigurationForObjectLambdaResponse.Obj: TGetAccessPointConfigurationForObjectLambdaResponse;
begin
  Result := Self;
end;

function TGetAccessPointConfigurationForObjectLambdaResponse.GetConfiguration: TObjectLambdaConfiguration;
begin
  Result := FConfiguration;
end;

procedure TGetAccessPointConfigurationForObjectLambdaResponse.SetConfiguration(const Value: TObjectLambdaConfiguration);
begin
  if FConfiguration <> Value then
  begin
    if not KeepConfiguration then
      FConfiguration.Free;
    FConfiguration := Value;
  end;
end;

function TGetAccessPointConfigurationForObjectLambdaResponse.GetKeepConfiguration: Boolean;
begin
  Result := FKeepConfiguration;
end;

procedure TGetAccessPointConfigurationForObjectLambdaResponse.SetKeepConfiguration(const Value: Boolean);
begin
  FKeepConfiguration := Value;
end;

function TGetAccessPointConfigurationForObjectLambdaResponse.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration <> nil;
end;

end.
