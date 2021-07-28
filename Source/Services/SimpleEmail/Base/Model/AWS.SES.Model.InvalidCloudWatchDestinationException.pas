unit AWS.SES.Model.InvalidCloudWatchDestinationException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EInvalidCloudWatchDestinationException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEventDestinationName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
implementation

{ EInvalidCloudWatchDestinationException }

function EInvalidCloudWatchDestinationException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EInvalidCloudWatchDestinationException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EInvalidCloudWatchDestinationException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function EInvalidCloudWatchDestinationException.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure EInvalidCloudWatchDestinationException.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function EInvalidCloudWatchDestinationException.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
