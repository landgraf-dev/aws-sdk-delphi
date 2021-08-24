unit AWS.SESv2.Model.SuppressedDestinationSummary;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TSuppressedDestinationSummary = class;
  
  ISuppressedDestinationSummary = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
    function Obj: TSuppressedDestinationSummary;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetReason: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
  TSuppressedDestinationSummary = class
  strict private
    FEmailAddress: Nullable<string>;
    FLastUpdateTime: Nullable<TDateTime>;
    FReason: Nullable<TSuppressionListReason>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
  strict protected
    function Obj: TSuppressedDestinationSummary;
  public
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetReason: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
implementation

{ TSuppressedDestinationSummary }

function TSuppressedDestinationSummary.Obj: TSuppressedDestinationSummary;
begin
  Result := Self;
end;

function TSuppressedDestinationSummary.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TSuppressedDestinationSummary.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TSuppressedDestinationSummary.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TSuppressedDestinationSummary.GetLastUpdateTime: TDateTime;
begin
  Result := FLastUpdateTime.ValueOrDefault;
end;

procedure TSuppressedDestinationSummary.SetLastUpdateTime(const Value: TDateTime);
begin
  FLastUpdateTime := Value;
end;

function TSuppressedDestinationSummary.IsSetLastUpdateTime: Boolean;
begin
  Result := FLastUpdateTime.HasValue;
end;

function TSuppressedDestinationSummary.GetReason: TSuppressionListReason;
begin
  Result := FReason.ValueOrDefault;
end;

procedure TSuppressedDestinationSummary.SetReason(const Value: TSuppressionListReason);
begin
  FReason := Value;
end;

function TSuppressedDestinationSummary.IsSetReason: Boolean;
begin
  Result := FReason.HasValue;
end;

end.
