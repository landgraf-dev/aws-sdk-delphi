unit AWS.SESv2.Model.TrackingOptions;

interface

uses
  Bcl.Types.Nullable;

type
  TTrackingOptions = class;
  
  ITrackingOptions = interface
    function GetCustomRedirectDomain: string;
    procedure SetCustomRedirectDomain(const Value: string);
    function Obj: TTrackingOptions;
    function IsSetCustomRedirectDomain: Boolean;
    property CustomRedirectDomain: string read GetCustomRedirectDomain write SetCustomRedirectDomain;
  end;
  
  TTrackingOptions = class
  strict private
    FCustomRedirectDomain: Nullable<string>;
    function GetCustomRedirectDomain: string;
    procedure SetCustomRedirectDomain(const Value: string);
  strict protected
    function Obj: TTrackingOptions;
  public
    function IsSetCustomRedirectDomain: Boolean;
    property CustomRedirectDomain: string read GetCustomRedirectDomain write SetCustomRedirectDomain;
  end;
  
implementation

{ TTrackingOptions }

function TTrackingOptions.Obj: TTrackingOptions;
begin
  Result := Self;
end;

function TTrackingOptions.GetCustomRedirectDomain: string;
begin
  Result := FCustomRedirectDomain.ValueOrDefault;
end;

procedure TTrackingOptions.SetCustomRedirectDomain(const Value: string);
begin
  FCustomRedirectDomain := Value;
end;

function TTrackingOptions.IsSetCustomRedirectDomain: Boolean;
begin
  Result := FCustomRedirectDomain.HasValue;
end;

end.
