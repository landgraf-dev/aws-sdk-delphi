unit AWS.S3Control.Model.GetStorageLensConfigurationRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetStorageLensConfigurationRequest = class;
  
  IGetStorageLensConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function Obj: TGetStorageLensConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
  TGetStorageLensConfigurationRequest = class(TAmazonS3ControlRequest, IGetStorageLensConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
  strict protected
    function Obj: TGetStorageLensConfigurationRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
implementation

{ TGetStorageLensConfigurationRequest }

function TGetStorageLensConfigurationRequest.Obj: TGetStorageLensConfigurationRequest;
begin
  Result := Self;
end;

function TGetStorageLensConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetStorageLensConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetStorageLensConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetStorageLensConfigurationRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TGetStorageLensConfigurationRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TGetStorageLensConfigurationRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

end.
