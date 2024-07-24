unit AWS.SSM.Model.Activation;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.Tag;

type
  TActivation = class;
  
  IActivation = interface
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDefaultInstanceName: string;
    procedure SetDefaultInstanceName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetExpirationDate: TDateTime;
    procedure SetExpirationDate(const Value: TDateTime);
    function GetExpired: Boolean;
    procedure SetExpired(const Value: Boolean);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetRegistrationLimit: Integer;
    procedure SetRegistrationLimit(const Value: Integer);
    function GetRegistrationsCount: Integer;
    procedure SetRegistrationsCount(const Value: Integer);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TActivation;
    function IsSetActivationId: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDefaultInstanceName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetExpirationDate: Boolean;
    function IsSetExpired: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetRegistrationLimit: Boolean;
    function IsSetRegistrationsCount: Boolean;
    function IsSetTags: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DefaultInstanceName: string read GetDefaultInstanceName write SetDefaultInstanceName;
    property Description: string read GetDescription write SetDescription;
    property ExpirationDate: TDateTime read GetExpirationDate write SetExpirationDate;
    property Expired: Boolean read GetExpired write SetExpired;
    property IamRole: string read GetIamRole write SetIamRole;
    property RegistrationLimit: Integer read GetRegistrationLimit write SetRegistrationLimit;
    property RegistrationsCount: Integer read GetRegistrationsCount write SetRegistrationsCount;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TActivation = class
  strict private
    FActivationId: Nullable<string>;
    FCreatedDate: Nullable<TDateTime>;
    FDefaultInstanceName: Nullable<string>;
    FDescription: Nullable<string>;
    FExpirationDate: Nullable<TDateTime>;
    FExpired: Nullable<Boolean>;
    FIamRole: Nullable<string>;
    FRegistrationLimit: Nullable<Integer>;
    FRegistrationsCount: Nullable<Integer>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDefaultInstanceName: string;
    procedure SetDefaultInstanceName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetExpirationDate: TDateTime;
    procedure SetExpirationDate(const Value: TDateTime);
    function GetExpired: Boolean;
    procedure SetExpired(const Value: Boolean);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetRegistrationLimit: Integer;
    procedure SetRegistrationLimit(const Value: Integer);
    function GetRegistrationsCount: Integer;
    procedure SetRegistrationsCount(const Value: Integer);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TActivation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActivationId: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDefaultInstanceName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetExpirationDate: Boolean;
    function IsSetExpired: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetRegistrationLimit: Boolean;
    function IsSetRegistrationsCount: Boolean;
    function IsSetTags: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property DefaultInstanceName: string read GetDefaultInstanceName write SetDefaultInstanceName;
    property Description: string read GetDescription write SetDescription;
    property ExpirationDate: TDateTime read GetExpirationDate write SetExpirationDate;
    property Expired: Boolean read GetExpired write SetExpired;
    property IamRole: string read GetIamRole write SetIamRole;
    property RegistrationLimit: Integer read GetRegistrationLimit write SetRegistrationLimit;
    property RegistrationsCount: Integer read GetRegistrationsCount write SetRegistrationsCount;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TActivation }

constructor TActivation.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TActivation.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TActivation.Obj: TActivation;
begin
  Result := Self;
end;

function TActivation.GetActivationId: string;
begin
  Result := FActivationId.ValueOrDefault;
end;

procedure TActivation.SetActivationId(const Value: string);
begin
  FActivationId := Value;
end;

function TActivation.IsSetActivationId: Boolean;
begin
  Result := FActivationId.HasValue;
end;

function TActivation.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TActivation.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TActivation.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TActivation.GetDefaultInstanceName: string;
begin
  Result := FDefaultInstanceName.ValueOrDefault;
end;

procedure TActivation.SetDefaultInstanceName(const Value: string);
begin
  FDefaultInstanceName := Value;
end;

function TActivation.IsSetDefaultInstanceName: Boolean;
begin
  Result := FDefaultInstanceName.HasValue;
end;

function TActivation.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TActivation.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TActivation.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TActivation.GetExpirationDate: TDateTime;
begin
  Result := FExpirationDate.ValueOrDefault;
end;

procedure TActivation.SetExpirationDate(const Value: TDateTime);
begin
  FExpirationDate := Value;
end;

function TActivation.IsSetExpirationDate: Boolean;
begin
  Result := FExpirationDate.HasValue;
end;

function TActivation.GetExpired: Boolean;
begin
  Result := FExpired.ValueOrDefault;
end;

procedure TActivation.SetExpired(const Value: Boolean);
begin
  FExpired := Value;
end;

function TActivation.IsSetExpired: Boolean;
begin
  Result := FExpired.HasValue;
end;

function TActivation.GetIamRole: string;
begin
  Result := FIamRole.ValueOrDefault;
end;

procedure TActivation.SetIamRole(const Value: string);
begin
  FIamRole := Value;
end;

function TActivation.IsSetIamRole: Boolean;
begin
  Result := FIamRole.HasValue;
end;

function TActivation.GetRegistrationLimit: Integer;
begin
  Result := FRegistrationLimit.ValueOrDefault;
end;

procedure TActivation.SetRegistrationLimit(const Value: Integer);
begin
  FRegistrationLimit := Value;
end;

function TActivation.IsSetRegistrationLimit: Boolean;
begin
  Result := FRegistrationLimit.HasValue;
end;

function TActivation.GetRegistrationsCount: Integer;
begin
  Result := FRegistrationsCount.ValueOrDefault;
end;

procedure TActivation.SetRegistrationsCount(const Value: Integer);
begin
  FRegistrationsCount := Value;
end;

function TActivation.IsSetRegistrationsCount: Boolean;
begin
  Result := FRegistrationsCount.HasValue;
end;

function TActivation.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TActivation.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TActivation.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TActivation.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TActivation.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
