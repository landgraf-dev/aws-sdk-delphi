unit AWS.SES.Model.SendRawEmailRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.RawMessage, 
  AWS.SES.Model.MessageTag;

type
  TSendRawEmailRequest = class;
  
  ISendRawEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestinations: TList<string>;
    procedure SetDestinations(const Value: TList<string>);
    function GetFromArn: string;
    procedure SetFromArn(const Value: string);
    function GetRawMessage: TRawMessage;
    procedure SetRawMessage(const Value: TRawMessage);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
    function Obj: TSendRawEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestinations: Boolean;
    function IsSetFromArn: Boolean;
    function IsSetRawMessage: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destinations: TList<string> read GetDestinations write SetDestinations;
    property FromArn: string read GetFromArn write SetFromArn;
    property RawMessage: TRawMessage read GetRawMessage write SetRawMessage;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
  end;
  
  TSendRawEmailRequest = class(TAmazonSimpleEmailServiceRequest, ISendRawEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDestinations: TList<string>;
    FFromArn: Nullable<string>;
    FRawMessage: TRawMessage;
    FReturnPathArn: Nullable<string>;
    FSource: Nullable<string>;
    FSourceArn: Nullable<string>;
    FTags: TObjectList<TMessageTag>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDestinations: TList<string>;
    procedure SetDestinations(const Value: TList<string>);
    function GetFromArn: string;
    procedure SetFromArn(const Value: string);
    function GetRawMessage: TRawMessage;
    procedure SetRawMessage(const Value: TRawMessage);
    function GetReturnPathArn: string;
    procedure SetReturnPathArn(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function GetSourceArn: string;
    procedure SetSourceArn(const Value: string);
    function GetTags: TObjectList<TMessageTag>;
    procedure SetTags(const Value: TObjectList<TMessageTag>);
  strict protected
    function Obj: TSendRawEmailRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ARawMessage: TRawMessage); overload;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDestinations: Boolean;
    function IsSetFromArn: Boolean;
    function IsSetRawMessage: Boolean;
    function IsSetReturnPathArn: Boolean;
    function IsSetSource: Boolean;
    function IsSetSourceArn: Boolean;
    function IsSetTags: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Destinations: TList<string> read GetDestinations write SetDestinations;
    property FromArn: string read GetFromArn write SetFromArn;
    property RawMessage: TRawMessage read GetRawMessage write SetRawMessage;
    property ReturnPathArn: string read GetReturnPathArn write SetReturnPathArn;
    property Source: string read GetSource write SetSource;
    property SourceArn: string read GetSourceArn write SetSourceArn;
    property Tags: TObjectList<TMessageTag> read GetTags write SetTags;
  end;
  
implementation

{ TSendRawEmailRequest }

constructor TSendRawEmailRequest.Create;
begin
  inherited;
  FDestinations := TList<string>.Create;
  FTags := TObjectList<TMessageTag>.Create;
end;

destructor TSendRawEmailRequest.Destroy;
begin
  Tags := nil;
  RawMessage := nil;
  Destinations := nil;
  inherited;
end;

function TSendRawEmailRequest.Obj: TSendRawEmailRequest;
begin
  Result := Self;
end;

constructor TSendRawEmailRequest.Create(const ARawMessage: TRawMessage);
begin
  inherited Create;
  RawMessage := ARawMessage;
end;

function TSendRawEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendRawEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendRawEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendRawEmailRequest.GetDestinations: TList<string>;
begin
  Result := FDestinations;
end;

procedure TSendRawEmailRequest.SetDestinations(const Value: TList<string>);
begin
  if FDestinations <> Value then
  begin
    FDestinations.Free;
    FDestinations := Value;
  end;
end;

function TSendRawEmailRequest.IsSetDestinations: Boolean;
begin
  Result := (FDestinations <> nil) and (FDestinations.Count > 0);
end;

function TSendRawEmailRequest.GetFromArn: string;
begin
  Result := FFromArn.ValueOrDefault;
end;

procedure TSendRawEmailRequest.SetFromArn(const Value: string);
begin
  FFromArn := Value;
end;

function TSendRawEmailRequest.IsSetFromArn: Boolean;
begin
  Result := FFromArn.HasValue;
end;

function TSendRawEmailRequest.GetRawMessage: TRawMessage;
begin
  Result := FRawMessage;
end;

procedure TSendRawEmailRequest.SetRawMessage(const Value: TRawMessage);
begin
  if FRawMessage <> Value then
  begin
    FRawMessage.Free;
    FRawMessage := Value;
  end;
end;

function TSendRawEmailRequest.IsSetRawMessage: Boolean;
begin
  Result := FRawMessage <> nil;
end;

function TSendRawEmailRequest.GetReturnPathArn: string;
begin
  Result := FReturnPathArn.ValueOrDefault;
end;

procedure TSendRawEmailRequest.SetReturnPathArn(const Value: string);
begin
  FReturnPathArn := Value;
end;

function TSendRawEmailRequest.IsSetReturnPathArn: Boolean;
begin
  Result := FReturnPathArn.HasValue;
end;

function TSendRawEmailRequest.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TSendRawEmailRequest.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TSendRawEmailRequest.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

function TSendRawEmailRequest.GetSourceArn: string;
begin
  Result := FSourceArn.ValueOrDefault;
end;

procedure TSendRawEmailRequest.SetSourceArn(const Value: string);
begin
  FSourceArn := Value;
end;

function TSendRawEmailRequest.IsSetSourceArn: Boolean;
begin
  Result := FSourceArn.HasValue;
end;

function TSendRawEmailRequest.GetTags: TObjectList<TMessageTag>;
begin
  Result := FTags;
end;

procedure TSendRawEmailRequest.SetTags(const Value: TObjectList<TMessageTag>);
begin
  if FTags <> Value then
  begin
    FTags.Free;
    FTags := Value;
  end;
end;

function TSendRawEmailRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
