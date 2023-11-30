unit AWS.SES.Model.EventDestinationAlreadyExistsException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EEventDestinationAlreadyExistsException = class(EAmazonSimpleEmailServiceException)
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

{ EEventDestinationAlreadyExistsException }

function EEventDestinationAlreadyExistsException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EEventDestinationAlreadyExistsException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EEventDestinationAlreadyExistsException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function EEventDestinationAlreadyExistsException.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure EEventDestinationAlreadyExistsException.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function EEventDestinationAlreadyExistsException.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
