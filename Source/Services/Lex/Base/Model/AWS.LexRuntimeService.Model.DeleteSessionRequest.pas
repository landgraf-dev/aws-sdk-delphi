unit AWS.LexRuntimeService.Model.DeleteSessionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeService.Model.Request;

type
  TDeleteSessionRequest = class;
  
  IDeleteSessionRequest = interface
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TDeleteSessionRequest;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TDeleteSessionRequest = class(TAmazonLexRequest, IDeleteSessionRequest)
  strict private
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FUserId: Nullable<string>;
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TDeleteSessionRequest;
  public
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TDeleteSessionRequest }

function TDeleteSessionRequest.Obj: TDeleteSessionRequest;
begin
  Result := Self;
end;

function TDeleteSessionRequest.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TDeleteSessionRequest.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TDeleteSessionRequest.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TDeleteSessionRequest.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TDeleteSessionRequest.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TDeleteSessionRequest.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TDeleteSessionRequest.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

end.
