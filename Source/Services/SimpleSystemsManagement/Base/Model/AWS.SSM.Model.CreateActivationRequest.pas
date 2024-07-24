unit AWS.SSM.Model.CreateActivationRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.RegistrationMetadataItem, 
  AWS.SSM.Model.Tag;

type
  TCreateActivationRequest = class;
  
  ICreateActivationRequest = interface
    function GetDefaultInstanceName: string;
    procedure SetDefaultInstanceName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetExpirationDate: TDateTime;
    procedure SetExpirationDate(const Value: TDateTime);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetRegistrationLimit: Integer;
    procedure SetRegistrationLimit(const Value: Integer);
    function GetRegistrationMetadata: TObjectList<TRegistrationMetadataItem>;
    procedure SetRegistrationMetadata(const Value: TObjectList<TRegistrationMetadataItem>);
    function GetKeepRegistrationMetadata: Boolean;
    procedure SetKeepRegistrationMetadata(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateActivationRequest;
    function IsSetDefaultInstanceName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetExpirationDate: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetRegistrationLimit: Boolean;
    function IsSetRegistrationMetadata: Boolean;
    function IsSetTags: Boolean;
    property DefaultInstanceName: string read GetDefaultInstanceName write SetDefaultInstanceName;
    property Description: string read GetDescription write SetDescription;
    property ExpirationDate: TDateTime read GetExpirationDate write SetExpirationDate;
    property IamRole: string read GetIamRole write SetIamRole;
    property RegistrationLimit: Integer read GetRegistrationLimit write SetRegistrationLimit;
    property RegistrationMetadata: TObjectList<TRegistrationMetadataItem> read GetRegistrationMetadata write SetRegistrationMetadata;
    property KeepRegistrationMetadata: Boolean read GetKeepRegistrationMetadata write SetKeepRegistrationMetadata;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateActivationRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateActivationRequest)
  strict private
    FDefaultInstanceName: Nullable<string>;
    FDescription: Nullable<string>;
    FExpirationDate: Nullable<TDateTime>;
    FIamRole: Nullable<string>;
    FRegistrationLimit: Nullable<Integer>;
    FRegistrationMetadata: TObjectList<TRegistrationMetadataItem>;
    FKeepRegistrationMetadata: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetDefaultInstanceName: string;
    procedure SetDefaultInstanceName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetExpirationDate: TDateTime;
    procedure SetExpirationDate(const Value: TDateTime);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetRegistrationLimit: Integer;
    procedure SetRegistrationLimit(const Value: Integer);
    function GetRegistrationMetadata: TObjectList<TRegistrationMetadataItem>;
    procedure SetRegistrationMetadata(const Value: TObjectList<TRegistrationMetadataItem>);
    function GetKeepRegistrationMetadata: Boolean;
    procedure SetKeepRegistrationMetadata(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateActivationRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDefaultInstanceName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetExpirationDate: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetRegistrationLimit: Boolean;
    function IsSetRegistrationMetadata: Boolean;
    function IsSetTags: Boolean;
    property DefaultInstanceName: string read GetDefaultInstanceName write SetDefaultInstanceName;
    property Description: string read GetDescription write SetDescription;
    property ExpirationDate: TDateTime read GetExpirationDate write SetExpirationDate;
    property IamRole: string read GetIamRole write SetIamRole;
    property RegistrationLimit: Integer read GetRegistrationLimit write SetRegistrationLimit;
    property RegistrationMetadata: TObjectList<TRegistrationMetadataItem> read GetRegistrationMetadata write SetRegistrationMetadata;
    property KeepRegistrationMetadata: Boolean read GetKeepRegistrationMetadata write SetKeepRegistrationMetadata;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateActivationRequest }

constructor TCreateActivationRequest.Create;
begin
  inherited;
  FRegistrationMetadata := TObjectList<TRegistrationMetadataItem>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateActivationRequest.Destroy;
begin
  Tags := nil;
  RegistrationMetadata := nil;
  inherited;
end;

function TCreateActivationRequest.Obj: TCreateActivationRequest;
begin
  Result := Self;
end;

function TCreateActivationRequest.GetDefaultInstanceName: string;
begin
  Result := FDefaultInstanceName.ValueOrDefault;
end;

procedure TCreateActivationRequest.SetDefaultInstanceName(const Value: string);
begin
  FDefaultInstanceName := Value;
end;

function TCreateActivationRequest.IsSetDefaultInstanceName: Boolean;
begin
  Result := FDefaultInstanceName.HasValue;
end;

function TCreateActivationRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateActivationRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateActivationRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateActivationRequest.GetExpirationDate: TDateTime;
begin
  Result := FExpirationDate.ValueOrDefault;
end;

procedure TCreateActivationRequest.SetExpirationDate(const Value: TDateTime);
begin
  FExpirationDate := Value;
end;

function TCreateActivationRequest.IsSetExpirationDate: Boolean;
begin
  Result := FExpirationDate.HasValue;
end;

function TCreateActivationRequest.GetIamRole: string;
begin
  Result := FIamRole.ValueOrDefault;
end;

procedure TCreateActivationRequest.SetIamRole(const Value: string);
begin
  FIamRole := Value;
end;

function TCreateActivationRequest.IsSetIamRole: Boolean;
begin
  Result := FIamRole.HasValue;
end;

function TCreateActivationRequest.GetRegistrationLimit: Integer;
begin
  Result := FRegistrationLimit.ValueOrDefault;
end;

procedure TCreateActivationRequest.SetRegistrationLimit(const Value: Integer);
begin
  FRegistrationLimit := Value;
end;

function TCreateActivationRequest.IsSetRegistrationLimit: Boolean;
begin
  Result := FRegistrationLimit.HasValue;
end;

function TCreateActivationRequest.GetRegistrationMetadata: TObjectList<TRegistrationMetadataItem>;
begin
  Result := FRegistrationMetadata;
end;

procedure TCreateActivationRequest.SetRegistrationMetadata(const Value: TObjectList<TRegistrationMetadataItem>);
begin
  if FRegistrationMetadata <> Value then
  begin
    if not KeepRegistrationMetadata then
      FRegistrationMetadata.Free;
    FRegistrationMetadata := Value;
  end;
end;

function TCreateActivationRequest.GetKeepRegistrationMetadata: Boolean;
begin
  Result := FKeepRegistrationMetadata;
end;

procedure TCreateActivationRequest.SetKeepRegistrationMetadata(const Value: Boolean);
begin
  FKeepRegistrationMetadata := Value;
end;

function TCreateActivationRequest.IsSetRegistrationMetadata: Boolean;
begin
  Result := (FRegistrationMetadata <> nil) and (FRegistrationMetadata.Count > 0);
end;

function TCreateActivationRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateActivationRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateActivationRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateActivationRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateActivationRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
