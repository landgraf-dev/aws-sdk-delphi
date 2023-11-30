unit AWS.LexRuntimeService.Model.DeleteSessionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeleteSessionResponse = class;
  
  IDeleteSessionResponse = interface(IAmazonWebServiceResponse)
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
    function Obj: TDeleteSessionResponse;
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property SessionId: string read GetSessionId write SetSessionId;
    property UserId: string read GetUserId write SetUserId;
  end;
  
  TDeleteSessionResponse = class(TAmazonWebServiceResponse, IDeleteSessionResponse)
  strict private
    FBotAlias: Nullable<string>;
    FBotName: Nullable<string>;
    FSessionId: Nullable<string>;
    FUserId: Nullable<string>;
    function GetBotAlias: string;
    procedure SetBotAlias(const Value: string);
    function GetBotName: string;
    procedure SetBotName(const Value: string);
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetUserId: string;
    procedure SetUserId(const Value: string);
  strict protected
    function Obj: TDeleteSessionResponse;
  public
    function IsSetBotAlias: Boolean;
    function IsSetBotName: Boolean;
    function IsSetSessionId: Boolean;
    function IsSetUserId: Boolean;
    property BotAlias: string read GetBotAlias write SetBotAlias;
    property BotName: string read GetBotName write SetBotName;
    property SessionId: string read GetSessionId write SetSessionId;
    property UserId: string read GetUserId write SetUserId;
  end;
  
implementation

{ TDeleteSessionResponse }

function TDeleteSessionResponse.Obj: TDeleteSessionResponse;
begin
  Result := Self;
end;

function TDeleteSessionResponse.GetBotAlias: string;
begin
  Result := FBotAlias.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetBotAlias(const Value: string);
begin
  FBotAlias := Value;
end;

function TDeleteSessionResponse.IsSetBotAlias: Boolean;
begin
  Result := FBotAlias.HasValue;
end;

function TDeleteSessionResponse.GetBotName: string;
begin
  Result := FBotName.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetBotName(const Value: string);
begin
  FBotName := Value;
end;

function TDeleteSessionResponse.IsSetBotName: Boolean;
begin
  Result := FBotName.HasValue;
end;

function TDeleteSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TDeleteSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TDeleteSessionResponse.GetUserId: string;
begin
  Result := FUserId.ValueOrDefault;
end;

procedure TDeleteSessionResponse.SetUserId(const Value: string);
begin
  FUserId := Value;
end;

function TDeleteSessionResponse.IsSetUserId: Boolean;
begin
  Result := FUserId.HasValue;
end;

end.
