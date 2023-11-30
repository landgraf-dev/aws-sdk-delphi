unit AWS.SES.Model.SendBulkTemplatedEmailRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Model.MessageTag, 
  AWS.SES.Model.BulkEmailDestination;

type
  TSendBulkTemplatedEmailRequest = class;
  
  ISendBulkTemplatedEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDefaultTags: TObjectList<TMessageTag>;
    procedure SetDefaultTags(const Value: TObjectList<TMessageTag>);
    function GetKeepDefaultTags: Boolean;
    procedure SetKeepDefaultTags(const Value: Boolean);
    function GetDefaultTemplateData: string;
    procedure SetDefaultTemplateData(const Value: string);
    function GetDestinations: TObjectList<TBulkEmailDestination>;
    procedure SetDestinations(const Value: TObjectList<TBulkEmailDestination>);
    function GetKeepDestinations: Boolean;
    procedure SetKeepDestinations(const Value: Boolean);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
    function GetReturnPath: string;
    procedure SetReturnPath(const Value: string);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTemplate: string;
    procedure SetTemplate(const Value: string);
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
    function Obj: TSendBulkTemplatedEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDefaultTags: Boolean;
    function IsSetDefaultTemplateData: Boolean;
    function IsSetDestinations: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTemplate: Boolean;
    function IsSetTemplateArn: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DefaultTags: TObjectList<TMessageTag> read GetDefaultTags write SetDefaultTags;
    property KeepDefaultTags: Boolean read GetKeepDefaultTags write SetKeepDefaultTags;
    property DefaultTemplateData: string read GetDefaultTemplateData write SetDefaultTemplateData;
    property Destinations: TObjectList<TBulkEmailDestination> read GetDestinations write SetDestinations;
    property KeepDestinations: Boolean read GetKeepDestinations write SetKeepDestinations;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Template: string read GetTemplate write SetTemplate;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
  end;
  
  TSendBulkTemplatedEmailRequest = class(TAmazonSimpleEmailServiceRequest, ISendBulkTemplatedEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDefaultTags: TObjectList<TMessageTag>;
    FKeepDefaultTags: Boolean;
    FDefaultTemplateData: Nullable<string>;
    FDestinations: TObjectList<TBulkEmailDestination>;
    FKeepDestinations: Boolean;
    FReplyToAddresses: TList<string>;
    FKeepReplyToAddresses: Boolean;
    FReturnPath: Nullable<string>;
    FReturnPathArn: Nullable<string>;
    FSource: Nullable<string>;
    FSourceArn: Nullable<string>;
    FTemplate: Nullable<string>;
    FTemplateArn: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDefaultTags: TObjectList<TMessageTag>;
    procedure SetDefaultTags(const Value: TObjectList<TMessageTag>);
    function GetKeepDefaultTags: Boolean;
    procedure SetKeepDefaultTags(const Value: Boolean);
    function GetDefaultTemplateData: string;
    procedure SetDefaultTemplateData(const Value: string);
    function GetDestinations: TObjectList<TBulkEmailDestination>;
    procedure SetDestinations(const Value: TObjectList<TBulkEmailDestination>);
    function GetKeepDestinations: Boolean;
    procedure SetKeepDestinations(const Value: Boolean);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetKeepReplyToAddresses: Boolean;
    procedure SetKeepReplyToAddresses(const Value: Boolean);
    function GetReturnPath: string;
    procedure SetReturnPath(const Value: string);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTemplate: string;
    procedure SetTemplate(const Value: string);
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
  strict protected
    function Obj: TSendBulkTemplatedEmailRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDefaultTags: Boolean;
    function IsSetDefaultTemplateData: Boolean;
    function IsSetDestinations: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTemplate: Boolean;
    function IsSetTemplateArn: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DefaultTags: TObjectList<TMessageTag> read GetDefaultTags write SetDefaultTags;
    property KeepDefaultTags: Boolean read GetKeepDefaultTags write SetKeepDefaultTags;
    property DefaultTemplateData: string read GetDefaultTemplateData write SetDefaultTemplateData;
    property Destinations: TObjectList<TBulkEmailDestination> read GetDestinations write SetDestinations;
    property KeepDestinations: Boolean read GetKeepDestinations write SetKeepDestinations;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Template: string read GetTemplate write SetTemplate;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
  end;
  
implementation

{ TSendBulkTemplatedEmailRequest }

constructor TSendBulkTemplatedEmailRequest.Create;
begin
  inherited;
  FDefaultTags := TObjectList<TMessageTag>.Create;
  FDestinations := TObjectList<TBulkEmailDestination>.Create;
  FReplyToAddresses := TList<string>.Create;
end;

destructor TSendBulkTemplatedEmailRequest.Destroy;
begin
  ReplyToAddresses := nil;
  Destinations := nil;
  DefaultTags := nil;
  inherited;
end;

function TSendBulkTemplatedEmailRequest.Obj: TSendBulkTemplatedEmailRequest;
begin
  Result := Self;
end;

function TSendBulkTemplatedEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetDefaultTags: TObjectList<TMessageTag>;
begin
  Result := FDefaultTags;
end;

procedure TSendBulkTemplatedEmailRequest.SetDefaultTags(const Value: TObjectList<TMessageTag>);
begin
  if FDefaultTags <> Value then
  begin
    if not KeepDefaultTags then
      FDefaultTags.Free;
    FDefaultTags := Value;
  end;
end;

function TSendBulkTemplatedEmailRequest.GetKeepDefaultTags: Boolean;
begin
  Result := FKeepDefaultTags;
end;

procedure TSendBulkTemplatedEmailRequest.SetKeepDefaultTags(const Value: Boolean);
begin
  FKeepDefaultTags := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetDefaultTags: Boolean;
begin
  Result := (FDefaultTags <> nil) and (FDefaultTags.Count > 0);
end;

function TSendBulkTemplatedEmailRequest.GetDefaultTemplateData: string;
begin
  Result := FDefaultTemplateData.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetDefaultTemplateData(const Value: string);
begin
  FDefaultTemplateData := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetDefaultTemplateData: Boolean;
begin
  Result := FDefaultTemplateData.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetDestinations: TObjectList<TBulkEmailDestination>;
begin
  Result := FDestinations;
end;

procedure TSendBulkTemplatedEmailRequest.SetDestinations(const Value: TObjectList<TBulkEmailDestination>);
begin
  if FDestinations <> Value then
  begin
    if not KeepDestinations then
      FDestinations.Free;
    FDestinations := Value;
  end;
end;

function TSendBulkTemplatedEmailRequest.GetKeepDestinations: Boolean;
begin
  Result := FKeepDestinations;
end;

procedure TSendBulkTemplatedEmailRequest.SetKeepDestinations(const Value: Boolean);
begin
  FKeepDestinations := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetDestinations: Boolean;
begin
  Result := (FDestinations <> nil) and (FDestinations.Count > 0);
end;

function TSendBulkTemplatedEmailRequest.GetReplyToAddresses: TList<string>;
begin
  Result := FReplyToAddresses;
end;

procedure TSendBulkTemplatedEmailRequest.SetReplyToAddresses(const Value: TList<string>);
begin
  if FReplyToAddresses <> Value then
  begin
    if not KeepReplyToAddresses then
      FReplyToAddresses.Free;
    FReplyToAddresses := Value;
  end;
end;

function TSendBulkTemplatedEmailRequest.GetKeepReplyToAddresses: Boolean;
begin
  Result := FKeepReplyToAddresses;
end;

procedure TSendBulkTemplatedEmailRequest.SetKeepReplyToAddresses(const Value: Boolean);
begin
  FKeepReplyToAddresses := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetReplyToAddresses: Boolean;
begin
  Result := (FReplyToAddresses <> nil) and (FReplyToAddresses.Count > 0);
end;

function TSendBulkTemplatedEmailRequest.GetReturnPath: string;
begin
  Result := FReturnPath.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetReturnPath(const Value: string);
begin
  FReturnPath := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetReturnPath: Boolean;
begin
  Result := FReturnPath.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetReturnPathArn: string;
begin
  Result := FReturnPathArn.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetReturnPathArn(const Value: string);
begin
  FReturnPathArn := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetReturnPathArn: Boolean;
begin
  Result := FReturnPathArn.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetSourceArn: string;
begin
  Result := FSourceArn.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetSourceArn(const Value: string);
begin
  FSourceArn := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetSourceArn: Boolean;
begin
  Result := FSourceArn.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetTemplate: string;
begin
  Result := FTemplate.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetTemplate(const Value: string);
begin
  FTemplate := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetTemplate: Boolean;
begin
  Result := FTemplate.HasValue;
end;

function TSendBulkTemplatedEmailRequest.GetTemplateArn: string;
begin
  Result := FTemplateArn.ValueOrDefault;
end;

procedure TSendBulkTemplatedEmailRequest.SetTemplateArn(const Value: string);
begin
  FTemplateArn := Value;
end;

function TSendBulkTemplatedEmailRequest.IsSetTemplateArn: Boolean;
begin
  Result := FTemplateArn.HasValue;
end;

end.
