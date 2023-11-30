unit AWS.SES.Model.InvalidFirehoseDestinationException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EInvalidFirehoseDestinationException = class(EAmazonSimpleEmailServiceException)
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

{ EInvalidFirehoseDestinationException }

function EInvalidFirehoseDestinationException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EInvalidFirehoseDestinationException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EInvalidFirehoseDestinationException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function EInvalidFirehoseDestinationException.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure EInvalidFirehoseDestinationException.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function EInvalidFirehoseDestinationException.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
