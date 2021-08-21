unit AWS.SES.Model.SendEmailRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.Destination, 
  AWS.SES.Model.Message, 
  AWS.SES.Model.MessageTag;

type
  TSendEmailRequest = class;
  
  ISendEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetMessage: TMessage;
    procedure SetMessage(const Value: TMessage);
    function GetKeepMessage: Boolean;
    procedure SetKeepMessage(const Value: Boolean);
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
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TSendEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestination: Boolean;
    function IsSetMessage: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property Message: TMessage read GetMessage write SetMessage;
    property KeepMessage: Boolean read GetKeepMessage write SetKeepMessage;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TSendEmailRequest = class(TAmazonSimpleEmailServiceRequest, ISendEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDestination: TDestination;
    FKeepDestination: Boolean;
    FMessage: TMessage;
    FKeepMessage: Boolean;
    FReplyToAddresses: TList<string>;
    FKeepReplyToAddresses: Boolean;
    FReturnPath: Nullable<string>;
    FReturnPathArn: Nullable<string>;
    FSource: Nullable<string>;
    FSourceArn: Nullable<string>;
    FTags: TObjectList<TMessageTag>;
    FKeepTags: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetMessage: TMessage;
    procedure SetMessage(const Value: TMessage);
    function GetKeepMessage: Boolean;
    procedure SetKeepMessage(const Value: Boolean);
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
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TSendEmailRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ASource: string; const ADestination: TDestination; const AMessage: TMessage); overload;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestination: Boolean;
    function IsSetMessage: Boolean;
    function IsSetReplyToAddresses: Boolean;
    function IsSetReturnPath: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property Message: TMessage read GetMessage write SetMessage;
    property KeepMessage: Boolean read GetKeepMessage write SetKeepMessage;
    property ReplyToAddresses: TList<string> read GetReplyToAddresses write SetReplyToAddresses;
    property KeepReplyToAddresses: Boolean read GetKeepReplyToAddresses write SetKeepReplyToAddresses;
    property ReturnPath: string read GetReturnPath write SetReturnPath;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TSendEmailRequest }

constructor TSendEmailRequest.Create;
begin
  inherited;
  FReplyToAddresses := TList<string>.Create;
  FTags := TObjectList<TMessageTag>.Create;
end;

destructor TSendEmailRequest.Destroy;
begin
  Tags := nil;
  ReplyToAddresses := nil;
  Message := nil;
  Destination := nil;
  inherited;
end;

function TSendEmailRequest.Obj: TSendEmailRequest;
begin
  Result := Self;
end;

constructor TSendEmailRequest.Create(const ASource: string; const ADestination: TDestination; const AMessage: TMessage);
begin
  inherited Create;
  Source := ASource;
  Destination := ADestination;
  Message := AMessage;
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

function TSendEmailRequest.GetMessage: TMessage;
begin
  Result := FMessage;
end;

procedure TSendEmailRequest.SetMessage(const Value: TMessage);
begin
  if FMessage <> Value then
  begin
    if not KeepMessage then
      FMessage.Free;
    FMessage := Value;
  end;
end;

function TSendEmailRequest.GetKeepMessage: Boolean;
begin
  Result := FKeepMessage;
end;

procedure TSendEmailRequest.SetKeepMessage(const Value: Boolean);
begin
  FKeepMessage := Value;
end;

function TSendEmailRequest.IsSetMessage: Boolean;
begin
  Result := FMessage <> nil;
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

function TSendEmailRequest.GetReturnPath: string;
begin
  Result := FReturnPath.ValueOrDefault;
end;

procedure TSendEmailRequest.SetReturnPath(const Value: string);
begin
  FReturnPath := Value;
end;

function TSendEmailRequest.IsSetReturnPath: Boolean;
begin
  Result := FReturnPath.HasValue;
end;

function TSendEmailRequest.GetReturnPathArn: string;
begin
  Result := FReturnPathArn.ValueOrDefault;
end;

procedure TSendEmailRequest.SetReturnPathArn(const Value: string);
begin
  FReturnPathArn := Value;
end;

function TSendEmailRequest.IsSetReturnPathArn: Boolean;
begin
  Result := FReturnPathArn.HasValue;
end;

function TSendEmailRequest.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TSendEmailRequest.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TSendEmailRequest.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TSendEmailRequest.GetSourceArn: string;
begin
  Result := FSourceArn.ValueOrDefault;
end;

procedure TSendEmailRequest.SetSourceArn(const Value: string);
begin
  FSourceArn := Value;
end;

function TSendEmailRequest.IsSetSourceArn: Boolean;
begin
  Result := FSourceArn.HasValue;
end;

function TSendEmailRequest.GetTags: TObjectList<TMessageTag>;
begin
  Result := FTags;
end;

procedure TSendEmailRequest.SetTags(const Value: TObjectList<TMessageTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TSendEmailRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TSendEmailRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TSendEmailRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
