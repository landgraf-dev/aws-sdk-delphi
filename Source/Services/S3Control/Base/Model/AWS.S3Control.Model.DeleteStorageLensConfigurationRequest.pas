unit AWS.S3Control.Model.DeleteStorageLensConfigurationRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteStorageLensConfigurationRequest = class;
  
  IDeleteStorageLensConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function Obj: TDeleteStorageLensConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
  TDeleteStorageLensConfigurationRequest = class(TAmazonS3ControlRequest, IDeleteStorageLensConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
  strict protected
    function Obj: TDeleteStorageLensConfigurationRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
implementation

{ TDeleteStorageLensConfigurationRequest }

function TDeleteStorageLensConfigurationRequest.Obj: TDeleteStorageLensConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteStorageLensConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteStorageLensConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteStorageLensConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteStorageLensConfigurationRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TDeleteStorageLensConfigurationRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TDeleteStorageLensConfigurationRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

end.
