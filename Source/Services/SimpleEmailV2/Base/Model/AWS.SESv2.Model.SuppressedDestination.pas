unit AWS.SESv2.Model.SuppressedDestination;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.SuppressedDestinationAttributes, 
  AWS.SESv2.Enums;

type
  TSuppressedDestination = class;
  
  ISuppressedDestination = interface
    function GetAttributes: TSuppressedDestinationAttributes;
    procedure SetAttributes(const Value: TSuppressedDestinationAttributes);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
    function Obj: TSuppressedDestination;
    function IsSetAttributes: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetReason: Boolean;
    property Attributes: TSuppressedDestinationAttributes read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
  TSuppressedDestination = class
  strict private
    FAttributes: TSuppressedDestinationAttributes;
    FKeepAttributes: Boolean;
    FEmailAddress: Nullable<string>;
    FLastUpdateTime: Nullable<TDateTime>;
    FReason: Nullable<TSuppressionListReason>;
    function GetAttributes: TSuppressedDestinationAttributes;
    procedure SetAttributes(const Value: TSuppressedDestinationAttributes);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
  strict protected
    function Obj: TSuppressedDestination;
  public
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetReason: Boolean;
    property Attributes: TSuppressedDestinationAttributes read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
implementation

{ TSuppressedDestination }

destructor TSuppressedDestination.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TSuppressedDestination.Obj: TSuppressedDestination;
begin
  Result := Self;
end;

function TSuppressedDestination.GetAttributes: TSuppressedDestinationAttributes;
begin
  Result := FAttributes;
end;

procedure TSuppressedDestination.SetAttributes(const Value: TSuppressedDestinationAttributes);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSuppressedDestination.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TSuppressedDestination.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TSuppressedDestination.IsSetAttributes: Boolean;
begin
  Result := FAttributes <> nil;
end;

function TSuppressedDestination.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TSuppressedDestination.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TSuppressedDestination.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TSuppressedDestination.GetLastUpdateTime: TDateTime;
begin
  Result := FLastUpdateTime.ValueOrDefault;
end;

procedure TSuppressedDestination.SetLastUpdateTime(const Value: TDateTime);
begin
  FLastUpdateTime := Value;
end;

function TSuppressedDestination.IsSetLastUpdateTime: Boolean;
begin
  Result := FLastUpdateTime.HasValue;
end;

function TSuppressedDestination.GetReason: TSuppressionListReason;
begin
  Result := FReason.ValueOrDefault;
end;

procedure TSuppressedDestination.SetReason(const Value: TSuppressionListReason);
begin
  FReason := Value;
end;

function TSuppressedDestination.IsSetReason: Boolean;
begin
  Result := FReason.HasValue;
end;

end.
