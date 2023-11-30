unit AWS.SESv2.Model.IdentityInfo;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TIdentityInfo = class;
  
  IIdentityInfo = interface
    function GetIdentityName: string;
    procedure SetIdentityName(const Value: string);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function Obj: TIdentityInfo;
    function IsSetIdentityName: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetSendingEnabled: Boolean;
    property IdentityName: string read GetIdentityName write SetIdentityName;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
  TIdentityInfo = class
  strict private
    FIdentityName: Nullable<string>;
    FIdentityType: Nullable<TIdentityType>;
    FSendingEnabled: Nullable<Boolean>;
    function GetIdentityName: string;
    procedure SetIdentityName(const Value: string);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
  strict protected
    function Obj: TIdentityInfo;
  public
    function IsSetIdentityName: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetSendingEnabled: Boolean;
    property IdentityName: string read GetIdentityName write SetIdentityName;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
implementation

{ TIdentityInfo }

function TIdentityInfo.Obj: TIdentityInfo;
begin
  Result := Self;
end;

function TIdentityInfo.GetIdentityName: string;
begin
  Result := FIdentityName.ValueOrDefault;
end;

procedure TIdentityInfo.SetIdentityName(const Value: string);
begin
  FIdentityName := Value;
end;

function TIdentityInfo.IsSetIdentityName: Boolean;
begin
  Result := FIdentityName.HasValue;
end;

function TIdentityInfo.GetIdentityType: TIdentityType;
begin
  Result := FIdentityType.ValueOrDefault;
end;

procedure TIdentityInfo.SetIdentityType(const Value: TIdentityType);
begin
  FIdentityType := Value;
end;

function TIdentityInfo.IsSetIdentityType: Boolean;
begin
  Result := FIdentityType.HasValue;
end;

function TIdentityInfo.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TIdentityInfo.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TIdentityInfo.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

end.
