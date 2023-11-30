unit AWS.SESv2.Model.SendBulkEmailRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.BulkEmailEntry, 
  AWS.Nullable, 
  AWS.SESv2.Model.BulkEmailContent, 
  AWS.SESv2.Model.MessageTag;

type
  TSendBulkEmailRequest = class;
  
  ISendBulkEmailRequest = interface
    function GetBulkEmailEntries: TObjectList<TBulkEmailEntry>;
    procedure SetBulkEmailEntries(const Value: TObjectList<TBulkEmailEntry>);
    function GetKeepBulkEmailEntries: Boolean;
    procedure SetKeepBulkEmailEntries(const Value: Boolean);
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDefaultContent: TBulkEmailContent;
    procedure SetDefaultContent(const Value: TBulkEmailContent);
    function GetKeepDefaultContent: Boolean;
    procedure SetKeepDefaultContent(const Value: Boolean);
    function GetDefaultEmailTags: TObjectList<TMessageTag>;
    procedure SetDefaultEmailTags(const Value: TObjectList<TMessageTag>);
    function GetKeepDefaultEmailTags: Boolean;
    procedure SetKeepDefaultEmailTags(const Value: Boolean);
    function GetFeedbackForwardingEmailAddress: string;
    procedure SetFeedbackForwardingEmailAddress(const Value: string);
    function GetFeedbackForwardingEmailAddressIdentityArn: string;
    procedure SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetFromEmailAddressIdentityArn: string;
    procedure SetFromEmailAddressIdentityArn(const Value: string);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
    function Obj: TSendBulkEmailRequest;
    function IsSetBulkEmailEntries: Boolean;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDefaultContent: Boolean;
    function IsSetDefaultEmailTags: Boolean;
    function IsSetFeedbackForwardingEmailAddress: Boolean;
    function IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetFromEmailAddressIdentityArn: Boolean;
    function IsSetReplyToAddresses: Boolean;
    property BulkEmailEntries: TObjectList<TBulkEmailEntry> read GetBulkEmailEntries write SetBulkEmailEntries;
    property KeepBulkEmailEntries: Boolean read GetKeepBulkEmailEntries write SetKeepBulkEmailEntries;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DefaultContent: TBulkEmailContent read GetDefaultContent write SetDefaultContent;
    property KeepDefaultContent: Boolean read GetKeepDefaultContent write SetKeepDefaultContent;
    property DefaultEmailTags: TObjectList<TMessageTag> read GetDefaultEmailTags write SetDefaultEmailTags;
    property KeepDefaultEmailTags: Boolean read GetKeepDefaultEmailTags write SetKeepDefaultEmailTags;
    property FeedbackForwardingEmailAddress: string read GetFeedbackForwardingEmailAddress write SetFeedbackForwardingEmailAddress;
    property FeedbackForwardingEmailAddressIdentityArn: string read GetFeedbackForwardingEmailAddressIdentityArn write SetFeedbackForwardingEmailAddressIdentityArn;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property FromEmailAddressIdentityArn: string read GetFromEmailAddressIdentityArn write SetFromEmailAddressIdentityArn;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
  end;
  
  TSendBulkEmailRequest = class(TAmazonSimpleEmailServiceV2Request, ISendBulkEmailRequest)
  strict private
    FBulkEmailEntries: TObjectList<TBulkEmailEntry>;
    FKeepBulkEmailEntries: Boolean;
    FConfigurationSetName: Nullable<string>;
    FDefaultContent: TBulkEmailContent;
    FKeepDefaultContent: Boolean;
    FDefaultEmailTags: TObjectList<TMessageTag>;
    FKeepDefaultEmailTags: Boolean;
    FFeedbackForwardingEmailAddress: Nullable<string>;
    FFeedbackForwardingEmailAddressIdentityArn: Nullable<string>;
    FFromEmailAddress: Nullable<string>;
    FFromEmailAddressIdentityArn: Nullable<string>;
    FReplyToAddresses: TList<string>;
    FKeepReplyToAddresses: Boolean;
    function GetBulkEmailEntries: TObjectList<TBulkEmailEntry>;
    procedure SetBulkEmailEntries(const Value: TObjectList<TBulkEmailEntry>);
    function GetKeepBulkEmailEntries: Boolean;
    procedure SetKeepBulkEmailEntries(const Value: Boolean);
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDefaultContent: TBulkEmailContent;
    procedure SetDefaultContent(const Value: TBulkEmailContent);
    function GetKeepDefaultContent: Boolean;
    procedure SetKeepDefaultContent(const Value: Boolean);
    function GetDefaultEmailTags: TObjectList<TMessageTag>;
    procedure SetDefaultEmailTags(const Value: TObjectList<TMessageTag>);
    function GetKeepDefaultEmailTags: Boolean;
    procedure SetKeepDefaultEmailTags(const Value: Boolean);
    function GetFeedbackForwardingEmailAddress: string;
    procedure SetFeedbackForwardingEmailAddress(const Value: string);
    function GetFeedbackForwardingEmailAddressIdentityArn: string;
    procedure SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetFromEmailAddressIdentityArn: string;
    procedure SetFromEmailAddressIdentityArn(const Value: string);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
  strict protected
    function Obj: TSendBulkEmailRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBulkEmailEntries: Boolean;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDefaultContent: Boolean;
    function IsSetDefaultEmailTags: Boolean;
    function IsSetFeedbackForwardingEmailAddress: Boolean;
    function IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetFromEmailAddressIdentityArn: Boolean;
    function IsSetReplyToAddresses: Boolean;
    property BulkEmailEntries: TObjectList<TBulkEmailEntry> read GetBulkEmailEntries write SetBulkEmailEntries;
    property KeepBulkEmailEntries: Boolean read GetKeepBulkEmailEntries write SetKeepBulkEmailEntries;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DefaultContent: TBulkEmailContent read GetDefaultContent write SetDefaultContent;
    property KeepDefaultContent: Boolean read GetKeepDefaultContent write SetKeepDefaultContent;
    property DefaultEmailTags: TObjectList<TMessageTag> read GetDefaultEmailTags write SetDefaultEmailTags;
    property KeepDefaultEmailTags: Boolean read GetKeepDefaultEmailTags write SetKeepDefaultEmailTags;
    property FeedbackForwardingEmailAddress: string read GetFeedbackForwardingEmailAddress write SetFeedbackForwardingEmailAddress;
    property FeedbackForwardingEmailAddressIdentityArn: string read GetFeedbackForwardingEmailAddressIdentityArn write SetFeedbackForwardingEmailAddressIdentityArn;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property FromEmailAddressIdentityArn: string read GetFromEmailAddressIdentityArn write SetFromEmailAddressIdentityArn;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
  end;
  
implementation

{ TSendBulkEmailRequest }

constructor TSendBulkEmailRequest.Create;
begin
  inherited;
  FBulkEmailEntries := TObjectList<TBulkEmailEntry>.Create;
  FDefaultEmailTags := TObjectList<TMessageTag>.Create;
  FReplyToAddresses := TList<string>.Create;
end;

destructor TSendBulkEmailRequest.Destroy;
begin
  ReplyToAddresses := nil;
  DefaultEmailTags := nil;
  DefaultContent := nil;
  BulkEmailEntries := nil;
  inherited;
end;

function TSendBulkEmailRequest.Obj: TSendBulkEmailRequest;
begin
  Result := Self;
end;

function TSendBulkEmailRequest.GetBulkEmailEntries: TObjectList<TBulkEmailEntry>;
begin
  Result := FBulkEmailEntries;
end;

procedure TSendBulkEmailRequest.SetBulkEmailEntries(const Value: TObjectList<TBulkEmailEntry>);
begin
  if FBulkEmailEntries <> Value then
  begin
    if not KeepBulkEmailEntries then
      FBulkEmailEntries.Free;
    FBulkEmailEntries := Value;
  end;
end;

function TSendBulkEmailRequest.GetKeepBulkEmailEntries: Boolean;
begin
  Result := FKeepBulkEmailEntries;
end;

procedure TSendBulkEmailRequest.SetKeepBulkEmailEntries(const Value: Boolean);
begin
  FKeepBulkEmailEntries := Value;
end;

function TSendBulkEmailRequest.IsSetBulkEmailEntries: Boolean;
begin
  Result := (FBulkEmailEntries <> nil) and (FBulkEmailEntries.Count > 0);
end;

function TSendBulkEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendBulkEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendBulkEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendBulkEmailRequest.GetDefaultContent: TBulkEmailContent;
begin
  Result := FDefaultContent;
end;

procedure TSendBulkEmailRequest.SetDefaultContent(const Value: TBulkEmailContent);
begin
  if FDefaultContent <> Value then
  begin
    if not KeepDefaultContent then
      FDefaultContent.Free;
    FDefaultContent := Value;
  end;
end;

function TSendBulkEmailRequest.GetKeepDefaultContent: Boolean;
begin
  Result := FKeepDefaultContent;
end;

procedure TSendBulkEmailRequest.SetKeepDefaultContent(const Value: Boolean);
begin
  FKeepDefaultContent := Value;
end;

function TSendBulkEmailRequest.IsSetDefaultContent: Boolean;
begin
  Result := FDefaultContent <> nil;
end;

function TSendBulkEmailRequest.GetDefaultEmailTags: TObjectList<TMessageTag>;
begin
  Result := FDefaultEmailTags;
end;

procedure TSendBulkEmailRequest.SetDefaultEmailTags(const Value: TObjectList<TMessageTag>);
begin
  if FDefaultEmailTags <> Value then
  begin
    if not KeepDefaultEmailTags then
      FDefaultEmailTags.Free;
    FDefaultEmailTags := Value;
  end;
end;

function TSendBulkEmailRequest.GetKeepDefaultEmailTags: Boolean;
begin
  Result := FKeepDefaultEmailTags;
end;

procedure TSendBulkEmailRequest.SetKeepDefaultEmailTags(const Value: Boolean);
begin
  FKeepDefaultEmailTags := Value;
end;

function TSendBulkEmailRequest.IsSetDefaultEmailTags: Boolean;
begin
  Result := (FDefaultEmailTags <> nil) and (FDefaultEmailTags.Count > 0);
end;

function TSendBulkEmailRequest.GetFeedbackForwardingEmailAddress: string;
begin
  Result := FFeedbackForwardingEmailAddress.ValueOrDefault;
end;

procedure TSendBulkEmailRequest.SetFeedbackForwardingEmailAddress(const Value: string);
begin
  FFeedbackForwardingEmailAddress := Value;
end;

function TSendBulkEmailRequest.IsSetFeedbackForwardingEmailAddress: Boolean;
begin
  Result := FFeedbackForwardingEmailAddress.HasValue;
end;

function TSendBulkEmailRequest.GetFeedbackForwardingEmailAddressIdentityArn: string;
begin
  Result := FFeedbackForwardingEmailAddressIdentityArn.ValueOrDefault;
end;

procedure TSendBulkEmailRequest.SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
begin
  FFeedbackForwardingEmailAddressIdentityArn := Value;
end;

function TSendBulkEmailRequest.IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
begin
  Result := FFeedbackForwardingEmailAddressIdentityArn.HasValue;
end;

function TSendBulkEmailRequest.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TSendBulkEmailRequest.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TSendBulkEmailRequest.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TSendBulkEmailRequest.GetFromEmailAddressIdentityArn: string;
begin
  Result := FFromEmailAddressIdentityArn.ValueOrDefault;
end;

procedure TSendBulkEmailRequest.SetFromEmailAddressIdentityArn(const Value: string);
begin
  FFromEmailAddressIdentityArn := Value;
end;

function TSendBulkEmailRequest.IsSetFromEmailAddressIdentityArn: Boolean;
begin
  Result := FFromEmailAddressIdentityArn.HasValue;
end;

function TSendBulkEmailRequest.GetReplyToAddresses: TList<string>;
begin
  Result := FReplyToAddresses;
end;

procedure TSendBulkEmailRequest.SetReplyToAddresses(const Value: TList<string>);
begin
  if FReplyToAddresses <> Value then
  begin
    if not KeepReplyToAddresses then
      FReplyToAddresses.Free;
    FReplyToAddresses := Value;
  end;
end;

function TSendBulkEmailRequest.GetKeepReplyToAddresses: Boolean;
begin
  Result := FKeepReplyToAddresses;
end;

procedure TSendBulkEmailRequest.SetKeepReplyToAddresses(const Value: Boolean);
begin
  FKeepReplyToAddresses := Value;
end;

function TSendBulkEmailRequest.IsSetReplyToAddresses: Boolean;
begin
  Result := (FReplyToAddresses <> nil) and (FReplyToAddresses.Count > 0);
end;

end.
