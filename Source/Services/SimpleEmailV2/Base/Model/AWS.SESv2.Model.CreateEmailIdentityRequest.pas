unit AWS.SESv2.Model.CreateEmailIdentityRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.DkimSigningAttributes, 
  AWS.SESv2.Model.Tag;

type
  TCreateEmailIdentityRequest = class;
  
  ICreateEmailIdentityRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDkimSigningAttributes: TDkimSigningAttributes;
    procedure SetDkimSigningAttributes(const Value: TDkimSigningAttributes);
    function GetKeepDkimSigningAttributes: Boolean;
    procedure SetKeepDkimSigningAttributes(const Value: Boolean);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateEmailIdentityRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDkimSigningAttributes: Boolean;
    function IsSetEmailIdentity: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DkimSigningAttributes: TDkimSigningAttributes read GetDkimSigningAttributes write SetDkimSigningAttributes;
    property KeepDkimSigningAttributes: Boolean read GetKeepDkimSigningAttributes write SetKeepDkimSigningAttributes;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateEmailIdentityRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateEmailIdentityRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDkimSigningAttributes: TDkimSigningAttributes;
    FKeepDkimSigningAttributes: Boolean;
    FEmailIdentity: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDkimSigningAttributes: TDkimSigningAttributes;
    procedure SetDkimSigningAttributes(const Value: TDkimSigningAttributes);
    function GetKeepDkimSigningAttributes: Boolean;
    procedure SetKeepDkimSigningAttributes(const Value: Boolean);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateEmailIdentityRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDkimSigningAttributes: Boolean;
    function IsSetEmailIdentity: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DkimSigningAttributes: TDkimSigningAttributes read GetDkimSigningAttributes write SetDkimSigningAttributes;
    property KeepDkimSigningAttributes: Boolean read GetKeepDkimSigningAttributes write SetKeepDkimSigningAttributes;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateEmailIdentityRequest }

constructor TCreateEmailIdentityRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateEmailIdentityRequest.Destroy;
begin
  Tags := nil;
  DkimSigningAttributes := nil;
  inherited;
end;

function TCreateEmailIdentityRequest.Obj: TCreateEmailIdentityRequest;
begin
  Result := Self;
end;

function TCreateEmailIdentityRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TCreateEmailIdentityRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TCreateEmailIdentityRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TCreateEmailIdentityRequest.GetDkimSigningAttributes: TDkimSigningAttributes;
begin
  Result := FDkimSigningAttributes;
end;

procedure TCreateEmailIdentityRequest.SetDkimSigningAttributes(const Value: TDkimSigningAttributes);
begin
  if FDkimSigningAttributes <> Value then
  begin
    if not KeepDkimSigningAttributes then
      FDkimSigningAttributes.Free;
    FDkimSigningAttributes := Value;
  end;
end;

function TCreateEmailIdentityRequest.GetKeepDkimSigningAttributes: Boolean;
begin
  Result := FKeepDkimSigningAttributes;
end;

procedure TCreateEmailIdentityRequest.SetKeepDkimSigningAttributes(const Value: Boolean);
begin
  FKeepDkimSigningAttributes := Value;
end;

function TCreateEmailIdentityRequest.IsSetDkimSigningAttributes: Boolean;
begin
  Result := FDkimSigningAttributes <> nil;
end;

function TCreateEmailIdentityRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TCreateEmailIdentityRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TCreateEmailIdentityRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TCreateEmailIdentityRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateEmailIdentityRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateEmailIdentityRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateEmailIdentityRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateEmailIdentityRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
