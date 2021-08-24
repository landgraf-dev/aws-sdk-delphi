unit AWS.SESv2.Model.SendEmailRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.EmailContent, 
  AWS.SESv2.Model.Destination, 
  AWS.SESv2.Model.MessageTag, 
  AWS.SESv2.Model.ListManagementOptions;

type
  TSendEmailRequest = class;
  
  ISendEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetContent: TEmailContent;
    procedure SetContent(const Value: TEmailContent);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetEmailTags: TObjectList<TMessageTag>;
    procedure SetEmailTags(const Value: TObjectList<TMessageTag>);
    function GetKeepEmailTags: Boolean;
    procedure SetKeepEmailTags(const Value: Boolean);
    function GetFeedbackForwardingEmailAddress: string;
    procedure SetFeedbackForwardingEmailAddress(const Value: string);
    function GetFeedbackForwardingEmailAddressIdentityArn: string;
    procedure SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetFromEmailAddressIdentityArn: string;
    procedure SetFromEmailAddressIdentityArn(const Value: string);
    function GetListManagementOptions: TListManagementOptions;
    procedure SetListManagementOptions(const Value: TListManagementOptions);
    function GetKeepListManagementOptions: Boolean;
    procedure SetKeepListManagementOptions(const Value: Boolean);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
    function Obj: TSendEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetContent: Boolean;
    function IsSetDestination: Boolean;
    function IsSetEmailTags: Boolean;
    function IsSetFeedbackForwardingEmailAddress: Boolean;
    function IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetFromEmailAddressIdentityArn: Boolean;
    function IsSetListManagementOptions: Boolean;
    function IsSetReplyToAddresses: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Content: TEmailContent read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property EmailTags: TObjectList<TMessageTag> read GetEmailTags write SetEmailTags;
    property KeepEmailTags: Boolean read GetKeepEmailTags write SetKeepEmailTags;
    property FeedbackForwardingEmailAddress: string read GetFeedbackForwardingEmailAddress write SetFeedbackForwardingEmailAddress;
    property FeedbackForwardingEmailAddressIdentityArn: string read GetFeedbackForwardingEmailAddressIdentityArn write SetFeedbackForwardingEmailAddressIdentityArn;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property FromEmailAddressIdentityArn: string read GetFromEmailAddressIdentityArn write SetFromEmailAddressIdentityArn;
    property ListManagementOptions: TListManagementOptions read GetListManagementOptions write SetListManagementOptions;
    property KeepListManagementOptions: Boolean read GetKeepListManagementOptions write SetKeepListManagementOptions;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
  end;
  
  TSendEmailRequest = class(TAmazonSimpleEmailServiceV2Request, ISendEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FContent: TEmailContent;
    FKeepContent: Boolean;
    FDestination: TDestination;
    FKeepDestination: Boolean;
    FEmailTags: TObjectList<TMessageTag>;
    FKeepEmailTags: Boolean;
    FFeedbackForwardingEmailAddress: Nullable<string>;
    FFeedbackForwardingEmailAddressIdentityArn: Nullable<string>;
    FFromEmailAddress: Nullable<string>;
    FFromEmailAddressIdentityArn: Nullable<string>;
    FListManagementOptions: TListManagementOptions;
    FKeepListManagementOptions: Boolean;
    FReplyToAddresses: TList<string>;
    FKeepReplyToAddresses: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetContent: TEmailContent;
    procedure SetContent(const Value: TEmailContent);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetEmailTags: TObjectList<TMessageTag>;
    procedure SetEmailTags(const Value: TObjectList<TMessageTag>);
    function GetKeepEmailTags: Boolean;
    procedure SetKeepEmailTags(const Value: Boolean);
    function GetFeedbackForwardingEmailAddress: string;
    procedure SetFeedbackForwardingEmailAddress(const Value: string);
    function GetFeedbackForwardingEmailAddressIdentityArn: string;
    procedure SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetFromEmailAddressIdentityArn: string;
    procedure SetFromEmailAddressIdentityArn(const Value: string);
    function GetListManagementOptions: TListManagementOptions;
    procedure SetListManagementOptions(const Value: TListManagementOptions);
    function GetKeepListManagementOptions: Boolean;
    procedure SetKeepListManagementOptions(const Value: Boolean);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
  strict protected
    function Obj: TSendEmailRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetContent: Boolean;
    function IsSetDestination: Boolean;
    function IsSetEmailTags: Boolean;
    function IsSetFeedbackForwardingEmailAddress: Boolean;
    function IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetFromEmailAddressIdentityArn: Boolean;
    function IsSetListManagementOptions: Boolean;
    function IsSetReplyToAddresses: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Content: TEmailContent read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property EmailTags: TObjectList<TMessageTag> read GetEmailTags write SetEmailTags;
    property KeepEmailTags: Boolean read GetKeepEmailTags write SetKeepEmailTags;
    property FeedbackForwardingEmailAddress: string read GetFeedbackForwardingEmailAddress write SetFeedbackForwardingEmailAddress;
    property FeedbackForwardingEmailAddressIdentityArn: string read GetFeedbackForwardingEmailAddressIdentityArn write SetFeedbackForwardingEmailAddressIdentityArn;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property FromEmailAddressIdentityArn: string read GetFromEmailAddressIdentityArn write SetFromEmailAddressIdentityArn;
    property ListManagementOptions: TListManagementOptions read GetListManagementOptions write SetListManagementOptions;
    property KeepListManagementOptions: Boolean read GetKeepListManagementOptions write SetKeepListManagementOptions;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
  end;
  
implementation

{ TSendEmailRequest }

constructor TSendEmailRequest.Create;
begin
  inherited;
  FEmailTags := TObjectList<TMessageTag>.Create;
  FReplyToAddresses := TList<string>.Create;
end;

destructor TSendEmailRequest.Destroy;
begin
  ReplyToAddresses := nil;
  ListManagementOptions := nil;
  EmailTags := nil;
  Destination := nil;
  Content := nil;
  inherited;
end;

function TSendEmailRequest.Obj: TSendEmailRequest;
begin
  Result := Self;
end;

function TSendEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendEmailRequest.GetContent: TEmailContent;
begin
  Result := FContent;
end;

procedure TSendEmailRequest.SetContent(const Value: TEmailContent);
begin
  if FContent <> Value then
  begin
    if not KeepContent then
      FContent.Free;
    FContent := Value;
  end;
end;

function TSendEmailRequest.GetKeepContent: Boolean;
begin
  Result := FKeepContent;
end;

procedure TSendEmailRequest.SetKeepContent(const Value: Boolean);
begin
  FKeepContent := Value;
end;

function TSendEmailRequest.IsSetContent: Boolean;
begin
  Result := FContent <> nil;
end;

function TSendEmailRequest.GetDestination: TDestination;
begin
  Result := FDestination;
end;

procedure TSendEmailRequest.SetDestination(const Value: TDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TSendEmailRequest.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TSendEmailRequest.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TSendEmailRequest.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TSendEmailRequest.GetEmailTags: TObjectList<TMessageTag>;
begin
  Result := FEmailTags;
end;

procedure TSendEmailRequest.SetEmailTags(const Value: TObjectList<TMessageTag>);
begin
  if FEmailTags <> Value then
  begin
    if not KeepEmailTags then
      FEmailTags.Free;
    FEmailTags := Value;
  end;
end;

function TSendEmailRequest.GetKeepEmailTags: Boolean;
begin
  Result := FKeepEmailTags;
end;

procedure TSendEmailRequest.SetKeepEmailTags(const Value: Boolean);
begin
  FKeepEmailTags := Value;
end;

function TSendEmailRequest.IsSetEmailTags: Boolean;
begin
  Result := (FEmailTags <> nil) and (FEmailTags.Count > 0);
end;

function TSendEmailRequest.GetFeedbackForwardingEmailAddress: string;
begin
  Result := FFeedbackForwardingEmailAddress.ValueOrDefault;
end;

procedure TSendEmailRequest.SetFeedbackForwardingEmailAddress(const Value: string);
begin
  FFeedbackForwardingEmailAddress := Value;
end;

function TSendEmailRequest.IsSetFeedbackForwardingEmailAddress: Boolean;
begin
  Result := FFeedbackForwardingEmailAddress.HasValue;
end;

function TSendEmailRequest.GetFeedbackForwardingEmailAddressIdentityArn: string;
begin
  Result := FFeedbackForwardingEmailAddressIdentityArn.ValueOrDefault;
end;

procedure TSendEmailRequest.SetFeedbackForwardingEmailAddressIdentityArn(const Value: string);
begin
  FFeedbackForwardingEmailAddressIdentityArn := Value;
end;

function TSendEmailRequest.IsSetFeedbackForwardingEmailAddressIdentityArn: Boolean;
begin
  Result := FFeedbackForwardingEmailAddressIdentityArn.HasValue;
end;

function TSendEmailRequest.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TSendEmailRequest.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TSendEmailRequest.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TSendEmailRequest.GetFromEmailAddressIdentityArn: string;
begin
  Result := FFromEmailAddressIdentityArn.ValueOrDefault;
end;

procedure TSendEmailRequest.SetFromEmailAddressIdentityArn(const Value: string);
begin
  FFromEmailAddressIdentityArn := Value;
end;

function TSendEmailRequest.IsSetFromEmailAddressIdentityArn: Boolean;
begin
  Result := FFromEmailAddressIdentityArn.HasValue;
end;

function TSendEmailRequest.GetListManagementOptions: TListManagementOptions;
begin
  Result := FListManagementOptions;
end;

procedure TSendEmailRequest.SetListManagementOptions(const Value: TListManagementOptions);
begin
  if FListManagementOptions <> Value then
  begin
    if not KeepListManagementOptions then
      FListManagementOptions.Free;
    FListManagementOptions := Value;
  end;
end;

function TSendEmailRequest.GetKeepListManagementOptions: Boolean;
begin
  Result := FKeepListManagementOptions;
end;

procedure TSendEmailRequest.SetKeepListManagementOptions(const Value: Boolean);
begin
  FKeepListManagementOptions := Value;
end;

function TSendEmailRequest.IsSetListManagementOptions: Boolean;
begin
  Result := FListManagementOptions <> nil;
end;

function TSendEmailRequest.GetReplyToAddresses: TList<string>;
begin
  Result := FReplyToAddresses;
end;

procedure TSendEmailRequest.SetReplyToAddresses(const Value: TList<string>);
begin
  if FReplyToAddresses <> Value then
  begin
    if not KeepReplyToAddresses then
      FReplyToAddresses.Free;
    FReplyToAddresses := Value;
  end;
end;

function TSendEmailRequest.GetKeepReplyToAddresses: Boolean;
begin
  Result := FKeepReplyToAddresses;
end;

procedure TSendEmailRequest.SetKeepReplyToAddresses(const Value: Boolean);
begin
  FKeepReplyToAddresses := Value;
end;

function TSendEmailRequest.IsSetReplyToAddresses: Boolean;
begin
  Result := (FReplyToAddresses <> nil) and (FReplyToAddresses.Count > 0);
end;

end.
