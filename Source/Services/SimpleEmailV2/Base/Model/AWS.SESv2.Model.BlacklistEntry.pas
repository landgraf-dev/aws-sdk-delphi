unit AWS.SESv2.Model.BlacklistEntry;

interface

uses
  AWS.Nullable;

type
  TBlacklistEntry = class;
  
  IBlacklistEntry = interface
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetListingTime: TDateTime;
    procedure SetListingTime(const Value: TDateTime);
    function GetRblName: string;
    procedure SetRblName(const Value: string);
    function Obj: TBlacklistEntry;
    function IsSetDescription: Boolean;
    function IsSetListingTime: Boolean;
    function IsSetRblName: Boolean;
    property Description: string read GetDescription write SetDescription;
    property ListingTime: TDateTime read GetListingTime write SetListingTime;
    property RblName: string read GetRblName write SetRblName;
  end;
  
  TBlacklistEntry = class
  strict private
    FDescription: Nullable<string>;
    FListingTime: Nullable<TDateTime>;
    FRblName: Nullable<string>;
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetListingTime: TDateTime;
    procedure SetListingTime(const Value: TDateTime);
    function GetRblName: string;
    procedure SetRblName(const Value: string);
  strict protected
    function Obj: TBlacklistEntry;
  public
    function IsSetDescription: Boolean;
    function IsSetListingTime: Boolean;
    function IsSetRblName: Boolean;
    property Description: string read GetDescription write SetDescription;
    property ListingTime: TDateTime read GetListingTime write SetListingTime;
    property RblName: string read GetRblName write SetRblName;
  end;
  
implementation

{ TBlacklistEntry }

function TBlacklistEntry.Obj: TBlacklistEntry;
begin
  Result := Self;
end;

function TBlacklistEntry.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TBlacklistEntry.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TBlacklistEntry.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TBlacklistEntry.GetListingTime: TDateTime;
begin
  Result := FListingTime.ValueOrDefault;
end;

procedure TBlacklistEntry.SetListingTime(const Value: TDateTime);
begin
  FListingTime := Value;
end;

function TBlacklistEntry.IsSetListingTime: Boolean;
begin
  Result := FListingTime.HasValue;
end;

function TBlacklistEntry.GetRblName: string;
begin
  Result := FRblName.ValueOrDefault;
end;

procedure TBlacklistEntry.SetRblName(const Value: string);
begin
  FRblName := Value;
end;

function TBlacklistEntry.IsSetRblName: Boolean;
begin
  Result := FRblName.HasValue;
end;

end.
