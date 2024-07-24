unit AWS.SSM.Model.StartSessionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartSessionResponse = class;
  
  IStartSessionResponse = interface(IAmazonWebServiceResponse)
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetStreamUrl: string;
    procedure SetStreamUrl(const Value: string);
    function GetTokenValue: string;
    procedure SetTokenValue(const Value: string);
    function Obj: TStartSessionResponse;
    function IsSetSessionId: Boolean;
    function IsSetStreamUrl: Boolean;
    function IsSetTokenValue: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
    property StreamUrl: string read GetStreamUrl write SetStreamUrl;
    property TokenValue: string read GetTokenValue write SetTokenValue;
  end;
  
  TStartSessionResponse = class(TAmazonWebServiceResponse, IStartSessionResponse)
  strict private
    FSessionId: Nullable<string>;
    FStreamUrl: Nullable<string>;
    FTokenValue: Nullable<string>;
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetStreamUrl: string;
    procedure SetStreamUrl(const Value: string);
    function GetTokenValue: string;
    procedure SetTokenValue(const Value: string);
  strict protected
    function Obj: TStartSessionResponse;
  public
    function IsSetSessionId: Boolean;
    function IsSetStreamUrl: Boolean;
    function IsSetTokenValue: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
    property StreamUrl: string read GetStreamUrl write SetStreamUrl;
    property TokenValue: string read GetTokenValue write SetTokenValue;
  end;
  
implementation

{ TStartSessionResponse }

function TStartSessionResponse.Obj: TStartSessionResponse;
begin
  Result := Self;
end;

function TStartSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TStartSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TStartSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TStartSessionResponse.GetStreamUrl: string;
begin
  Result := FStreamUrl.ValueOrDefault;
end;

procedure TStartSessionResponse.SetStreamUrl(const Value: string);
begin
  FStreamUrl := Value;
end;

function TStartSessionResponse.IsSetStreamUrl: Boolean;
begin
  Result := FStreamUrl.HasValue;
end;

function TStartSessionResponse.GetTokenValue: string;
begin
  Result := FTokenValue.ValueOrDefault;
end;

procedure TStartSessionResponse.SetTokenValue(const Value: string);
begin
  FTokenValue := Value;
end;

function TStartSessionResponse.IsSetTokenValue: Boolean;
begin
  Result := FTokenValue.HasValue;
end;

end.
