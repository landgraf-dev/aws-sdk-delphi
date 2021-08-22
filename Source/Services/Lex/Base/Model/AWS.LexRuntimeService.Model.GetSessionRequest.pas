unit AWS.LexRuntimeService.Model.GetSessionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeService.Model.Request;

type
  TGetSessionRequest = class;
  
  IGetSessionRequest = interface
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetCheckpointLabelFilter: string;
    procedure SetCheckpointLabelFilter(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TGetSessionRequest;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetCheckpointLabelFilter: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property CheckpointLabelFilter: string read GetCheckpointLabelFilter write SetCheckpointLabelFilter;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TGetSessionRequest = class(TAmazonLexRequest, IGetSessionRequest)
  strict private
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FCheckpointLabelFilter: Nullable<string>;
    FUserId: Nullable<string>;
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetCheckpointLabelFilter: string;
    procedure SetCheckpointLabelFilter(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TGetSessionRequest;
  public
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetCheckpointLabelFilter: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property CheckpointLabelFilter: string read GetCheckpointLabelFilter write SetCheckpointLabelFilter;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TGetSessionRequest }

function TGetSessionRequest.Obj: TGetSessionRequest;
begin
  Result := Self;
end;

function TGetSessionRequest.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TGetSessionRequest.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TGetSessionRequest.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TGetSessionRequest.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TGetSessionRequest.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TGetSessionRequest.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TGetSessionRequest.GetCheckpointLabelFilter: string;
begin
  Result := FCheckpointLabelFilter.ValueOrDefault;
end;

procedure TGetSessionRequest.SetCheckpointLabelFilter(const Value: string);
begin
  FCheckpointLabelFilter := Value;
end;

function TGetSessionRequest.IsSetCheckpointLabelFilter: Boolean;
begin
  Result := FCheckpointLabelFilter.HasValue;
end;

function TGetSessionRequest.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TGetSessionRequest.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TGetSessionRequest.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

end.
