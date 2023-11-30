unit AWS.SES.Model.ConfigurationSetAlreadyExistsException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EConfigurationSetAlreadyExistsException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ EConfigurationSetAlreadyExistsException }

function EConfigurationSetAlreadyExistsException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EConfigurationSetAlreadyExistsException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EConfigurationSetAlreadyExistsException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
