unit AWS.SES.Model.InvalidSNSDestinationException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EInvalidSNSDestinationException = class(EAmazonSimpleEmailServiceException)
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

{ EInvalidSNSDestinationException }

function EInvalidSNSDestinationException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EInvalidSNSDestinationException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EInvalidSNSDestinationException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function EInvalidSNSDestinationException.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure EInvalidSNSDestinationException.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function EInvalidSNSDestinationException.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
