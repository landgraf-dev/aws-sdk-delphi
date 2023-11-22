unit AWS.S3Control.Model.PutStorageLensConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.StorageLensConfiguration, 
  AWS.S3Control.Model.StorageLensTag;

type
  TPutStorageLensConfigurationRequest = class;
  
  IPutStorageLensConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function GetStorageLensConfiguration: TStorageLensConfiguration;
    procedure SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
    function GetKeepStorageLensConfiguration: Boolean;
    procedure SetKeepStorageLensConfiguration(const Value: Boolean);
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TPutStorageLensConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    function IsSetStorageLensConfiguration: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
    property StorageLensConfiguration: TStorageLensConfiguration read GetStorageLensConfiguration write SetStorageLensConfiguration;
    property KeepStorageLensConfiguration: Boolean read GetKeepStorageLensConfiguration write SetKeepStorageLensConfiguration;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TPutStorageLensConfigurationRequest = class(TAmazonS3ControlRequest, IPutStorageLensConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    FStorageLensConfiguration: TStorageLensConfiguration;
    FKeepStorageLensConfiguration: Boolean;
    FTags: TObjectList<TStorageLensTag>;
    FKeepTags: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function GetStorageLensConfiguration: TStorageLensConfiguration;
    procedure SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
    function GetKeepStorageLensConfiguration: Boolean;
    procedure SetKeepStorageLensConfiguration(const Value: Boolean);
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TPutStorageLensConfigurationRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    function IsSetStorageLensConfiguration: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
    property StorageLensConfiguration: TStorageLensConfiguration read GetStorageLensConfiguration write SetStorageLensConfiguration;
    property KeepStorageLensConfiguration: Boolean read GetKeepStorageLensConfiguration write SetKeepStorageLensConfiguration;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TPutStorageLensConfigurationRequest }

constructor TPutStorageLensConfigurationRequest.Create;
begin
  inherited;
  FTags := TObjectList<TStorageLensTag>.Create;
end;

destructor TPutStorageLensConfigurationRequest.Destroy;
begin
  Tags := nil;
  StorageLensConfiguration := nil;
  inherited;
end;

function TPutStorageLensConfigurationRequest.Obj: TPutStorageLensConfigurationRequest;
begin
  Result := Self;
end;

function TPutStorageLensConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutStorageLensConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutStorageLensConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutStorageLensConfigurationRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TPutStorageLensConfigurationRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TPutStorageLensConfigurationRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

function TPutStorageLensConfigurationRequest.GetStorageLensConfiguration: TStorageLensConfiguration;
begin
  Result := FStorageLensConfiguration;
end;

procedure TPutStorageLensConfigurationRequest.SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
begin
  if FStorageLensConfiguration <> Value then
  begin
    if not KeepStorageLensConfiguration then
      FStorageLensConfiguration.Free;
    FStorageLensConfiguration := Value;
  end;
end;

function TPutStorageLensConfigurationRequest.GetKeepStorageLensConfiguration: Boolean;
begin
  Result := FKeepStorageLensConfiguration;
end;

procedure TPutStorageLensConfigurationRequest.SetKeepStorageLensConfiguration(const Value: Boolean);
begin
  FKeepStorageLensConfiguration := Value;
end;

function TPutStorageLensConfigurationRequest.IsSetStorageLensConfiguration: Boolean;
begin
  Result := FStorageLensConfiguration <> nil;
end;

function TPutStorageLensConfigurationRequest.GetTags: TObjectList<TStorageLensTag>;
begin
  Result := FTags;
end;

procedure TPutStorageLensConfigurationRequest.SetTags(const Value: TObjectList<TStorageLensTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TPutStorageLensConfigurationRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TPutStorageLensConfigurationRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TPutStorageLensConfigurationRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
