unit AWS.SSM.Model.ResumeSessionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TResumeSessionResponse = class;
  
  IResumeSessionResponse = interface(IAmazonWebServiceResponse)
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function GetStreamUrl: string;
    procedure SetStreamUrl(const Value: string);
    function GetTokenValue: string;
    procedure SetTokenValue(const Value: string);
    function Obj: TResumeSessionResponse;
    function IsSetSessionId: Boolean;
    function IsSetStreamUrl: Boolean;
    function IsSetTokenValue: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
    property StreamUrl: string read GetStreamUrl write SetStreamUrl;
    property TokenValue: string read GetTokenValue write SetTokenValue;
  end;
  
  TResumeSessionResponse = class(TAmazonWebServiceResponse, IResumeSessionResponse)
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
    function Obj: TResumeSessionResponse;
  public
    function IsSetSessionId: Boolean;
    function IsSetStreamUrl: Boolean;
    function IsSetTokenValue: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
    property StreamUrl: string read GetStreamUrl write SetStreamUrl;
    property TokenValue: string read GetTokenValue write SetTokenValue;
  end;
  
implementation

{ TResumeSessionResponse }

function TResumeSessionResponse.Obj: TResumeSessionResponse;
begin
  Result := Self;
end;

function TResumeSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TResumeSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TResumeSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

function TResumeSessionResponse.GetStreamUrl: string;
begin
  Result := FStreamUrl.ValueOrDefault;
end;

procedure TResumeSessionResponse.SetStreamUrl(const Value: string);
begin
  FStreamUrl := Value;
end;

function TResumeSessionResponse.IsSetStreamUrl: Boolean;
begin
  Result := FStreamUrl.HasValue;
end;

function TResumeSessionResponse.GetTokenValue: string;
begin
  Result := FTokenValue.ValueOrDefault;
end;

procedure TResumeSessionResponse.SetTokenValue(const Value: string);
begin
  FTokenValue := Value;
end;

function TResumeSessionResponse.IsSetTokenValue: Boolean;
begin
  Result := FTokenValue.HasValue;
end;

end.
