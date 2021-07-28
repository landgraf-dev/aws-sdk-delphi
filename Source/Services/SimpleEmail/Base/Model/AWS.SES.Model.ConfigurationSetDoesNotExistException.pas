unit AWS.SES.Model.ConfigurationSetDoesNotExistException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EConfigurationSetDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ EConfigurationSetDoesNotExistException }

function EConfigurationSetDoesNotExistException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EConfigurationSetDoesNotExistException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EConfigurationSetDoesNotExistException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
