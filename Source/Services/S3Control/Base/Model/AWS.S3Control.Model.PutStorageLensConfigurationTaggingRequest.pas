unit AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Model.StorageLensTag;

type
  TPutStorageLensConfigurationTaggingRequest = class;
  
  IPutStorageLensConfigurationTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TPutStorageLensConfigurationTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TPutStorageLensConfigurationTaggingRequest = class(TAmazonS3ControlRequest, IPutStorageLensConfigurationTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FConfigId: Nullable<string>;
    FTags: TObjectList<TStorageLensTag>;
    FKeepTags: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetConfigId: string;
    procedure SetConfigId(const Value: string);
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TPutStorageLensConfigurationTaggingRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetConfigId: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ConfigId: string read GetConfigId write SetConfigId;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TPutStorageLensConfigurationTaggingRequest }

constructor TPutStorageLensConfigurationTaggingRequest.Create;
begin
  inherited;
  FTags := TObjectList<TStorageLensTag>.Create;
end;

destructor TPutStorageLensConfigurationTaggingRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TPutStorageLensConfigurationTaggingRequest.Obj: TPutStorageLensConfigurationTaggingRequest;
begin
  Result := Self;
end;

function TPutStorageLensConfigurationTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutStorageLensConfigurationTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutStorageLensConfigurationTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutStorageLensConfigurationTaggingRequest.GetConfigId: string;
begin
  Result := FConfigId.ValueOrDefault;
end;

procedure TPutStorageLensConfigurationTaggingRequest.SetConfigId(const Value: string);
begin
  FConfigId := Value;
end;

function TPutStorageLensConfigurationTaggingRequest.IsSetConfigId: Boolean;
begin
  Result := FConfigId.HasValue;
end;

function TPutStorageLensConfigurationTaggingRequest.GetTags: TObjectList<TStorageLensTag>;
begin
  Result := FTags;
end;

procedure TPutStorageLensConfigurationTaggingRequest.SetTags(const Value: TObjectList<TStorageLensTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TPutStorageLensConfigurationTaggingRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TPutStorageLensConfigurationTaggingRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TPutStorageLensConfigurationTaggingRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
