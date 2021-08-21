unit AWS.SES.Model.SendTemplatedEmailRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.Destination, 
  AWS.SES.Model.MessageTag;

type
  TSendTemplatedEmailRequest = class;
  
  ISendTemplatedEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetReturnPath: string;
    procedure SetReturnPath(const Value: string);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
    function GetTemplate: string;
    procedure SetTemplate(const Value: string);
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function Obj: TSendTemplatedEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestination: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    function IsSetTemplate: Boolean;
    function IsSetTemplateArn: Boolean;
    function IsSetTemplateData: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destination: TDestination read GetDestination write SetDestination;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
    property Template: string read GetTemplate write SetTemplate;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
    property TemplateData: string read GetTemplateData write SetTemplateData;
  end;
  
  TSendTemplatedEmailRequest = class(TAmazonSimpleEmailServiceRequest, ISendTemplatedEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDestination: TDestination;
    FReplyToAddresses: TList<string>;
    FReturnPath: Nullable<string>;
    FReturnPathArn: Nullable<string>;
    FSource: Nullable<string>;
    FSourceArn: Nullable<string>;
    FTags: TObjectList<TMessageTag>;
    FTemplate: Nullable<string>;
    FTemplateArn: Nullable<string>;
    FTemplateData: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetReplyToAddresses: TList<string>;
    procedure SetReplyToAddresses(const Value: TList<string>);
    function GetReturnPath: string;
    procedure SetReturnPath(const Value: string);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
    function GetTemplate: string;
    procedure SetTemplate(const Value: string);
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
  strict protected
    function Obj: TSendTemplatedEmailRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestination: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    function IsSetTemplate: Boolean;
    function IsSetTemplateArn: Boolean;
    function IsSetTemplateData: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destination: TDestination read GetDestination write SetDestination;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
    property Template: string read GetTemplate write SetTemplate;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
    property TemplateData: string read GetTemplateData write SetTemplateData;
  end;
  
implementation

{ TSendTemplatedEmailRequest }

constructor TSendTemplatedEmailRequest.Create;
begin
  inherited;
  FReplyToAddresses := TList<string>.Create;
  FTags := TObjectList<TMessageTag>.Create;
end;

destructor TSendTemplatedEmailRequest.Destroy;
begin
  Tags := nil;
  ReplyToAddresses := nil;
  Destination := nil;
  inherited;
end;

function TSendTemplatedEmailRequest.Obj: TSendTemplatedEmailRequest;
begin
  Result := Self;
end;

function TSendTemplatedEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendTemplatedEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendTemplatedEmailRequest.GetDestination: TDestination;
begin
  Result := FDestination;
end;

procedure TSendTemplatedEmailRequest.SetDestination(const Value: TDestination);
begin
  if FDestination <> Value then
  begin
    FDestination.Free;
    FDestination := Value;
  end;
end;

function TSendTemplatedEmailRequest.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TSendTemplatedEmailRequest.GetReplyToAddresses: TList<string>;
begin
  Result := FReplyToAddresses;
end;

procedure TSendTemplatedEmailRequest.SetReplyToAddresses(const Value: TList<string>);
begin
  if FReplyToAddresses <> Value then
  begin
    FReplyToAddresses.Free;
    FReplyToAddresses := Value;
  end;
end;

function TSendTemplatedEmailRequest.IsSetReplyToAddresses: Boolean;
begin
  Result := (FReplyToAddresses <> nil) and (FReplyToAddresses.Count > 0);
end;

function TSendTemplatedEmailRequest.GetReturnPath: string;
begin
  Result := FReturnPath.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetReturnPath(const Value: string);
begin
  FReturnPath := Value;
end;

function TSendTemplatedEmailRequest.IsSetReturnPath: Boolean;
begin
  Result := FReturnPath.HasValue;
end;

function TSendTemplatedEmailRequest.GetReturnPathArn: string;
begin
  Result := FReturnPathArn.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetReturnPathArn(const Value: string);
begin
  FReturnPathArn := Value;
end;

function TSendTemplatedEmailRequest.IsSetReturnPathArn: Boolean;
begin
  Result := FReturnPathArn.HasValue;
end;

function TSendTemplatedEmailRequest.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TSendTemplatedEmailRequest.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TSendTemplatedEmailRequest.GetSourceArn: string;
begin
  Result := FSourceArn.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetSourceArn(const Value: string);
begin
  FSourceArn := Value;
end;

function TSendTemplatedEmailRequest.IsSetSourceArn: Boolean;
begin
  Result := FSourceArn.HasValue;
end;

function TSendTemplatedEmailRequest.GetTags: TObjectList<TMessageTag>;
begin
  Result := FTags;
end;

procedure TSendTemplatedEmailRequest.SetTags(const Value: TObjectList<TMessageTag>);
begin
  if FTags <> Value then
  begin
    FTags.Free;
    FTags := Value;
  end;
end;

function TSendTemplatedEmailRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TSendTemplatedEmailRequest.GetTemplate: string;
begin
  Result := FTemplate.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetTemplate(const Value: string);
begin
  FTemplate := Value;
end;

function TSendTemplatedEmailRequest.IsSetTemplate: Boolean;
begin
  Result := FTemplate.HasValue;
end;

function TSendTemplatedEmailRequest.GetTemplateArn: string;
begin
  Result := FTemplateArn.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetTemplateArn(const Value: string);
begin
  FTemplateArn := Value;
end;

function TSendTemplatedEmailRequest.IsSetTemplateArn: Boolean;
begin
  Result := FTemplateArn.HasValue;
end;

function TSendTemplatedEmailRequest.GetTemplateData: string;
begin
  Result := FTemplateData.ValueOrDefault;
end;

procedure TSendTemplatedEmailRequest.SetTemplateData(const Value: string);
begin
  FTemplateData := Value;
end;

function TSendTemplatedEmailRequest.IsSetTemplateData: Boolean;
begin
  Result := FTemplateData.HasValue;
end;

end.
