unit AWS.S3.Model.Redirect;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TRedirect = class;
  
  IRedirect = interface
    function GetHostName: string;
    procedure SetHostName(const Value: string);
    function GetHttpRedirectCode: string;
    procedure SetHttpRedirectCode(const Value: string);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
    function GetReplaceKeyPrefixWith: string;
    procedure SetReplaceKeyPrefixWith(const Value: string);
    function GetReplaceKeyWith: string;
    procedure SetReplaceKeyWith(const Value: string);
    function Obj: TRedirect;
    function IsSetHostName: Boolean;
    function IsSetHttpRedirectCode: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetReplaceKeyPrefixWith: Boolean;
    function IsSetReplaceKeyWith: Boolean;
    property HostName: string read GetHostName write SetHostName;
    property HttpRedirectCode: string read GetHttpRedirectCode write SetHttpRedirectCode;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
    property ReplaceKeyPrefixWith: string read GetReplaceKeyPrefixWith write SetReplaceKeyPrefixWith;
    property ReplaceKeyWith: string read GetReplaceKeyWith write SetReplaceKeyWith;
  end;
  
  TRedirect = class
  strict private
    FHostName: Nullable<string>;
    FHttpRedirectCode: Nullable<string>;
    FProtocol: Nullable<TProtocol>;
    FReplaceKeyPrefixWith: Nullable<string>;
    FReplaceKeyWith: Nullable<string>;
    function GetHostName: string;
    procedure SetHostName(const Value: string);
    function GetHttpRedirectCode: string;
    procedure SetHttpRedirectCode(const Value: string);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
    function GetReplaceKeyPrefixWith: string;
    procedure SetReplaceKeyPrefixWith(const Value: string);
    function GetReplaceKeyWith: string;
    procedure SetReplaceKeyWith(const Value: string);
  strict protected
    function Obj: TRedirect;
  public
    function IsSetHostName: Boolean;
    function IsSetHttpRedirectCode: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetReplaceKeyPrefixWith: Boolean;
    function IsSetReplaceKeyWith: Boolean;
    property HostName: string read GetHostName write SetHostName;
    property HttpRedirectCode: string read GetHttpRedirectCode write SetHttpRedirectCode;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
    property ReplaceKeyPrefixWith: string read GetReplaceKeyPrefixWith write SetReplaceKeyPrefixWith;
    property ReplaceKeyWith: string read GetReplaceKeyWith write SetReplaceKeyWith;
  end;
  
implementation

{ TRedirect }

function TRedirect.Obj: TRedirect;
begin
  Result := Self;
end;

function TRedirect.GetHostName: string;
begin
  Result := FHostName.ValueOrDefault;
end;

procedure TRedirect.SetHostName(const Value: string);
begin
  FHostName := Value;
end;

function TRedirect.IsSetHostName: Boolean;
begin
  Result := FHostName.HasValue;
end;

function TRedirect.GetHttpRedirectCode: string;
begin
  Result := FHttpRedirectCode.ValueOrDefault;
end;

procedure TRedirect.SetHttpRedirectCode(const Value: string);
begin
  FHttpRedirectCode := Value;
end;

function TRedirect.IsSetHttpRedirectCode: Boolean;
begin
  Result := FHttpRedirectCode.HasValue;
end;

function TRedirect.GetProtocol: TProtocol;
begin
  Result := FProtocol.ValueOrDefault;
end;

procedure TRedirect.SetProtocol(const Value: TProtocol);
begin
  FProtocol := Value;
end;

function TRedirect.IsSetProtocol: Boolean;
begin
  Result := FProtocol.HasValue;
end;

function TRedirect.GetReplaceKeyPrefixWith: string;
begin
  Result := FReplaceKeyPrefixWith.ValueOrDefault;
end;

procedure TRedirect.SetReplaceKeyPrefixWith(const Value: string);
begin
  FReplaceKeyPrefixWith := Value;
end;

function TRedirect.IsSetReplaceKeyPrefixWith: Boolean;
begin
  Result := FReplaceKeyPrefixWith.HasValue;
end;

function TRedirect.GetReplaceKeyWith: string;
begin
  Result := FReplaceKeyWith.ValueOrDefault;
end;

procedure TRedirect.SetReplaceKeyWith(const Value: string);
begin
  FReplaceKeyWith := Value;
end;

function TRedirect.IsSetReplaceKeyWith: Boolean;
begin
  Result := FReplaceKeyWith.HasValue;
end;

end.
