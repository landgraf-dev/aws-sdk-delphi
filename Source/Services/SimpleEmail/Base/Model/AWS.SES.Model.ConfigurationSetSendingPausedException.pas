unit AWS.SES.Model.ConfigurationSetSendingPausedException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EConfigurationSetSendingPausedException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ EConfigurationSetSendingPausedException }

function EConfigurationSetSendingPausedException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure EConfigurationSetSendingPausedException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function EConfigurationSetSendingPausedException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
