unit AWS.S3.Model.RedirectAllRequestsTo;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TRedirectAllRequestsTo = class;
  
  IRedirectAllRequestsTo = interface
    function GetHostName: string;
    procedure SetHostName(const Value: string);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
    function Obj: TRedirectAllRequestsTo;
    function IsSetHostName: Boolean;
    function IsSetProtocol: Boolean;
    property HostName: string read GetHostName write SetHostName;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
  end;
  
  TRedirectAllRequestsTo = class
  strict private
    FHostName: Nullable<string>;
    FProtocol: Nullable<TProtocol>;
    function GetHostName: string;
    procedure SetHostName(const Value: string);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
  strict protected
    function Obj: TRedirectAllRequestsTo;
  public
    function IsSetHostName: Boolean;
    function IsSetProtocol: Boolean;
    property HostName: string read GetHostName write SetHostName;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
  end;
  
implementation

{ TRedirectAllRequestsTo }

function TRedirectAllRequestsTo.Obj: TRedirectAllRequestsTo;
begin
  Result := Self;
end;

function TRedirectAllRequestsTo.GetHostName: string;
begin
  Result := FHostName.ValueOrDefault;
end;

procedure TRedirectAllRequestsTo.SetHostName(const Value: string);
begin
  FHostName := Value;
end;

function TRedirectAllRequestsTo.IsSetHostName: Boolean;
begin
  Result := FHostName.HasValue;
end;

function TRedirectAllRequestsTo.GetProtocol: TProtocol;
begin
  Result := FProtocol.ValueOrDefault;
end;

procedure TRedirectAllRequestsTo.SetProtocol(const Value: TProtocol);
begin
  FProtocol := Value;
end;

function TRedirectAllRequestsTo.IsSetProtocol: Boolean;
begin
  Result := FProtocol.HasValue;
end;

end.
