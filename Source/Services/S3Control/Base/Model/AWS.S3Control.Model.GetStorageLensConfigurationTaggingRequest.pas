unit AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TGetStorageLensConfigurationTaggingRequest = class;
  
  IGetStorageLensConfigurationTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function Obj: TGetStorageLensConfigurationTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
  TGetStorageLensConfigurationTaggingRequest = class(TAmazonS3ControlRequest, IGetStorageLensConfigurationTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
  strict protected
    function Obj: TGetStorageLensConfigurationTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
implementation

{ TGetStorageLensConfigurationTaggingRequest }

function TGetStorageLensConfigurationTaggingRequest.Obj: TGetStorageLensConfigurationTaggingRequest;
begin
  Result := Self;
end;

function TGetStorageLensConfigurationTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetStorageLensConfigurationTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetStorageLensConfigurationTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetStorageLensConfigurationTaggingRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TGetStorageLensConfigurationTaggingRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TGetStorageLensConfigurationTaggingRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

end.
