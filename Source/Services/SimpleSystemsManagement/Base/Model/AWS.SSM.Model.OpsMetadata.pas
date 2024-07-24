unit AWS.SSM.Model.OpsMetadata;

interface

uses
  AWS.Nullable;

type
  TOpsMetadata = class;
  
  IOpsMetadata = interface
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function Obj: TOpsMetadata;
    function IsSetCreationDate: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    function IsSetResourceId: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
    property ResourceId: string read GetResourceId write SetResourceId;
  end;
  
  TOpsMetadata = class
  strict private
    FCreationDate: Nullable<TDateTime>;
    FLastModifiedDate: Nullable<TDateTime>;
    FLastModifiedUser: Nullable<string>;
    FOpsMetadataArn: Nullable<string>;
    FResourceId: Nullable<string>;
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
  strict protected
    function Obj: TOpsMetadata;
  public
    function IsSetCreationDate: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    function IsSetResourceId: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
    property ResourceId: string read GetResourceId write SetResourceId;
  end;
  
implementation

{ TOpsMetadata }

function TOpsMetadata.Obj: TOpsMetadata;
begin
  Result := Self;
end;

function TOpsMetadata.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TOpsMetadata.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TOpsMetadata.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TOpsMetadata.GetLastModifiedDate: TDateTime;
begin
  Result := FLastModifiedDate.ValueOrDefault;
end;

procedure TOpsMetadata.SetLastModifiedDate(const Value: TDateTime);
begin
  FLastModifiedDate := Value;
end;

function TOpsMetadata.IsSetLastModifiedDate: Boolean;
begin
  Result := FLastModifiedDate.HasValue;
end;

function TOpsMetadata.GetLastModifiedUser: string;
begin
  Result := FLastModifiedUser.ValueOrDefault;
end;

procedure TOpsMetadata.SetLastModifiedUser(const Value: string);
begin
  FLastModifiedUser := Value;
end;

function TOpsMetadata.IsSetLastModifiedUser: Boolean;
begin
  Result := FLastModifiedUser.HasValue;
end;

function TOpsMetadata.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TOpsMetadata.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TOpsMetadata.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

function TOpsMetadata.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TOpsMetadata.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TOpsMetadata.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

end.
