unit AWS.SESv2.Model.GetEmailIdentityResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DkimAttributes, 
  AWS.SESv2.Enums, 
  AWS.SESv2.Model.MailFromAttributes, 
  AWS.SESv2.Model.Tag;

type
  TGetEmailIdentityResponse = class;
  
  IGetEmailIdentityResponse = interface(IAmazonWebServiceResponse)
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDkimAttributes: TDkimAttributes;
    procedure SetDkimAttributes(const Value: TDkimAttributes);
    function GetKeepDkimAttributes: Boolean;
    procedure SetKeepDkimAttributes(const Value: Boolean);
    function GetFeedbackForwardingStatus: Boolean;
    procedure SetFeedbackForwardingStatus(const Value: Boolean);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetMailFromAttributes: TMailFromAttributes;
    procedure SetMailFromAttributes(const Value: TMailFromAttributes);
    function GetKeepMailFromAttributes: Boolean;
    procedure SetKeepMailFromAttributes(const Value: Boolean);
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVerifiedForSendingStatus: Boolean;
    procedure SetVerifiedForSendingStatus(const Value: Boolean);
    function Obj: TGetEmailIdentityResponse;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDkimAttributes: Boolean;
    function IsSetFeedbackForwardingStatus: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetMailFromAttributes: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTags: Boolean;
    function IsSetVerifiedForSendingStatus: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DkimAttributes: TDkimAttributes read GetDkimAttributes write SetDkimAttributes;
    property KeepDkimAttributes: Boolean read GetKeepDkimAttributes write SetKeepDkimAttributes;
    property FeedbackForwardingStatus: Boolean read GetFeedbackForwardingStatus write SetFeedbackForwardingStatus;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property MailFromAttributes: TMailFromAttributes read GetMailFromAttributes write SetMailFromAttributes;
    property KeepMailFromAttributes: Boolean read GetKeepMailFromAttributes write SetKeepMailFromAttributes;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VerifiedForSendingStatus: Boolean read GetVerifiedForSendingStatus write SetVerifiedForSendingStatus;
  end;
  
  TGetEmailIdentityResponse = class(TAmazonWebServiceResponse, IGetEmailIdentityResponse)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDkimAttributes: TDkimAttributes;
    FKeepDkimAttributes: Boolean;
    FFeedbackForwardingStatus: Nullable<Boolean>;
    FIdentityType: Nullable<TIdentityType>;
    FMailFromAttributes: TMailFromAttributes;
    FKeepMailFromAttributes: Boolean;
    FPolicies: TDictionary<string, string>;
    FKeepPolicies: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FVerifiedForSendingStatus: Nullable<Boolean>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDkimAttributes: TDkimAttributes;
    procedure SetDkimAttributes(const Value: TDkimAttributes);
    function GetKeepDkimAttributes: Boolean;
    procedure SetKeepDkimAttributes(const Value: Boolean);
    function GetFeedbackForwardingStatus: Boolean;
    procedure SetFeedbackForwardingStatus(const Value: Boolean);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetMailFromAttributes: TMailFromAttributes;
    procedure SetMailFromAttributes(const Value: TMailFromAttributes);
    function GetKeepMailFromAttributes: Boolean;
    procedure SetKeepMailFromAttributes(const Value: Boolean);
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVerifiedForSendingStatus: Boolean;
    procedure SetVerifiedForSendingStatus(const Value: Boolean);
  strict protected
    function Obj: TGetEmailIdentityResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDkimAttributes: Boolean;
    function IsSetFeedbackForwardingStatus: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetMailFromAttributes: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTags: Boolean;
    function IsSetVerifiedForSendingStatus: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DkimAttributes: TDkimAttributes read GetDkimAttributes write SetDkimAttributes;
    property KeepDkimAttributes: Boolean read GetKeepDkimAttributes write SetKeepDkimAttributes;
    property FeedbackForwardingStatus: Boolean read GetFeedbackForwardingStatus write SetFeedbackForwardingStatus;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property MailFromAttributes: TMailFromAttributes read GetMailFromAttributes write SetMailFromAttributes;
    property KeepMailFromAttributes: Boolean read GetKeepMailFromAttributes write SetKeepMailFromAttributes;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VerifiedForSendingStatus: Boolean read GetVerifiedForSendingStatus write SetVerifiedForSendingStatus;
  end;
  
implementation

{ TGetEmailIdentityResponse }

constructor TGetEmailIdentityResponse.Create;
begin
  inherited;
  FPolicies := TDictionary<string, string>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TGetEmailIdentityResponse.Destroy;
begin
  Tags := nil;
  Policies := nil;
  MailFromAttributes := nil;
  DkimAttributes := nil;
  inherited;
end;

function TGetEmailIdentityResponse.Obj: TGetEmailIdentityResponse;
begin
  Result := Self;
end;

function TGetEmailIdentityResponse.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TGetEmailIdentityResponse.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TGetEmailIdentityResponse.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TGetEmailIdentityResponse.GetDkimAttributes: TDkimAttributes;
begin
  Result := FDkimAttributes;
end;

procedure TGetEmailIdentityResponse.SetDkimAttributes(const Value: TDkimAttributes);
begin
  if FDkimAttributes <> Value then
  begin
    if not KeepDkimAttributes then
      FDkimAttributes.Free;
    FDkimAttributes := Value;
  end;
end;

function TGetEmailIdentityResponse.GetKeepDkimAttributes: Boolean;
begin
  Result := FKeepDkimAttributes;
end;

procedure TGetEmailIdentityResponse.SetKeepDkimAttributes(const Value: Boolean);
begin
  FKeepDkimAttributes := Value;
end;

function TGetEmailIdentityResponse.IsSetDkimAttributes: Boolean;
begin
  Result := FDkimAttributes <> nil;
end;

function TGetEmailIdentityResponse.GetFeedbackForwardingStatus: Boolean;
begin
  Result := FFeedbackForwardingStatus.ValueOrDefault;
end;

procedure TGetEmailIdentityResponse.SetFeedbackForwardingStatus(const Value: Boolean);
begin
  FFeedbackForwardingStatus := Value;
end;

function TGetEmailIdentityResponse.IsSetFeedbackForwardingStatus: Boolean;
begin
  Result := FFeedbackForwardingStatus.HasValue;
end;

function TGetEmailIdentityResponse.GetIdentityType: TIdentityType;
begin
  Result := FIdentityType.ValueOrDefault;
end;

procedure TGetEmailIdentityResponse.SetIdentityType(const Value: TIdentityType);
begin
  FIdentityType := Value;
end;

function TGetEmailIdentityResponse.IsSetIdentityType: Boolean;
begin
  Result := FIdentityType.HasValue;
end;

function TGetEmailIdentityResponse.GetMailFromAttributes: TMailFromAttributes;
begin
  Result := FMailFromAttributes;
end;

procedure TGetEmailIdentityResponse.SetMailFromAttributes(const Value: TMailFromAttributes);
begin
  if FMailFromAttributes <> Value then
  begin
    if not KeepMailFromAttributes then
      FMailFromAttributes.Free;
    FMailFromAttributes := Value;
  end;
end;

function TGetEmailIdentityResponse.GetKeepMailFromAttributes: Boolean;
begin
  Result := FKeepMailFromAttributes;
end;

procedure TGetEmailIdentityResponse.SetKeepMailFromAttributes(const Value: Boolean);
begin
  FKeepMailFromAttributes := Value;
end;

function TGetEmailIdentityResponse.IsSetMailFromAttributes: Boolean;
begin
  Result := FMailFromAttributes <> nil;
end;

function TGetEmailIdentityResponse.GetPolicies: TDictionary<string, string>;
begin
  Result := FPolicies;
end;

procedure TGetEmailIdentityResponse.SetPolicies(const Value: TDictionary<string, string>);
begin
  if FPolicies <> Value then
  begin
    if not KeepPolicies then
      FPolicies.Free;
    FPolicies := Value;
  end;
end;

function TGetEmailIdentityResponse.GetKeepPolicies: Boolean;
begin
  Result := FKeepPolicies;
end;

procedure TGetEmailIdentityResponse.SetKeepPolicies(const Value: Boolean);
begin
  FKeepPolicies := Value;
end;

function TGetEmailIdentityResponse.IsSetPolicies: Boolean;
begin
  Result := (FPolicies <> nil) and (FPolicies.Count > 0);
end;

function TGetEmailIdentityResponse.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TGetEmailIdentityResponse.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetEmailIdentityResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetEmailIdentityResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetEmailIdentityResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TGetEmailIdentityResponse.GetVerifiedForSendingStatus: Boolean;
begin
  Result := FVerifiedForSendingStatus.ValueOrDefault;
end;

procedure TGetEmailIdentityResponse.SetVerifiedForSendingStatus(const Value: Boolean);
begin
  FVerifiedForSendingStatus := Value;
end;

function TGetEmailIdentityResponse.IsSetVerifiedForSendingStatus: Boolean;
begin
  Result := FVerifiedForSendingStatus.HasValue;
end;

end.
