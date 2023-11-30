unit AWS.SES.Model.EventDestinationDoesNotExistException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EEventDestinationDoesNotExistException = class(EAmazonSimpleEmailServiceException)
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

{ EEventDestinationDoesNotExistException }

function EEventDestinationDoesNotExistException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EEventDestinationDoesNotExistException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EEventDestinationDoesNotExistException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function EEventDestinationDoesNotExistException.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure EEventDestinationDoesNotExistException.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function EEventDestinationDoesNotExistException.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
