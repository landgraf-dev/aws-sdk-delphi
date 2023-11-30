unit AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteStorageLensConfigurationTaggingRequest = class;
  
  IDeleteStorageLensConfigurationTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function Obj: TDeleteStorageLensConfigurationTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
  TDeleteStorageLensConfigurationTaggingRequest = class(TAmazonS3ControlRequest, IDeleteStorageLensConfigurationTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
  strict protected
    function Obj: TDeleteStorageLensConfigurationTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
  end;
  
implementation

{ TDeleteStorageLensConfigurationTaggingRequest }

function TDeleteStorageLensConfigurationTaggingRequest.Obj: TDeleteStorageLensConfigurationTaggingRequest;
begin
  Result := Self;
end;

function TDeleteStorageLensConfigurationTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteStorageLensConfigurationTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteStorageLensConfigurationTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteStorageLensConfigurationTaggingRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TDeleteStorageLensConfigurationTaggingRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TDeleteStorageLensConfigurationTaggingRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

end.
