unit AWS.SES.Model.FromEmailAddressNotVerifiedException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EFromEmailAddressNotVerifiedException = class(EAmazonSimpleEmailServiceException)
  strict private
    FFromEmailAddress: Nullable<string>;
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
  public
    function IsSetFromEmailAddress: Boolean;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
  end;
  
implementation

{ EFromEmailAddressNotVerifiedException }

function EFromEmailAddressNotVerifiedException.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure EFromEmailAddressNotVerifiedException.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function EFromEmailAddressNotVerifiedException.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

end.
