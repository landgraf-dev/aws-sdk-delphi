unit AWS.SES.Model.AddHeaderAction;

interface

uses
  Bcl.Types.Nullable;

type
  TAddHeaderAction = class;
  
  IAddHeaderAction = interface
    function GetHeaderName: string;
    procedure SetHeaderName(const Value: string);
    function GetHeaderValue: string;
    procedure SetHeaderValue(const Value: string);
    function Obj: TAddHeaderAction;
    function IsSetHeaderName: Boolean;
    function IsSetHeaderValue: Boolean;
    property HeaderName: string read GetHeaderName write SetHeaderName;
    property HeaderValue: string read GetHeaderValue write SetHeaderValue;
  end;
  
  TAddHeaderAction = class
  strict private
    FHeaderName: Nullable<string>;
    FHeaderValue: Nullable<string>;
    function GetHeaderName: string;
    procedure SetHeaderName(const Value: string);
    function GetHeaderValue: string;
    procedure SetHeaderValue(const Value: string);
  strict protected
    function Obj: TAddHeaderAction;
  public
    function IsSetHeaderName: Boolean;
    function IsSetHeaderValue: Boolean;
    property HeaderName: string read GetHeaderName write SetHeaderName;
    property HeaderValue: string read GetHeaderValue write SetHeaderValue;
  end;
  
implementation

{ TAddHeaderAction }

function TAddHeaderAction.Obj: TAddHeaderAction;
begin
  Result := Self;
end;

function TAddHeaderAction.GetHeaderName: string;
begin
  Result := FHeaderName.ValueOrDefault;
end;

procedure TAddHeaderAction.SetHeaderName(const Value: string);
begin
  FHeaderName := Value;
end;

function TAddHeaderAction.IsSetHeaderName: Boolean;
begin
  Result := FHeaderName.HasValue;
end;

function TAddHeaderAction.GetHeaderValue: string;
begin
  Result := FHeaderValue.ValueOrDefault;
end;

procedure TAddHeaderAction.SetHeaderValue(const Value: string);
begin
  FHeaderValue := Value;
end;

function TAddHeaderAction.IsSetHeaderValue: Boolean;
begin
  Result := FHeaderValue.HasValue;
end;

end.
