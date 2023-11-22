unit AWS.Internal.Util.HostPrefixUtils;

interface

uses
  System.RegularExpressions;

type
  THostPrefixUtils = class
  private
    class var FLabelValidationRegex: TRegEx;
    class constructor Create;
    class destructor Destroy;
  public
    class function IsValidLabelValue(const Value: string): Boolean; static;
  end;

implementation

{ THostPrefixUtils }

class constructor THostPrefixUtils.Create;
begin
  FLabelValidationRegex := TRegex.Create('^[A-Za-z0-9\-]+$', [roCompiled, roSingleLine]);
end;

class destructor THostPrefixUtils.Destroy;
begin

end;

class function THostPrefixUtils.IsValidLabelValue(const Value: string): Boolean;
begin
  // Make sure value is not null or empty
  if Value = '' then
    Exit(False);

  // Check if the value is between 1 and 63 characters
  if (Length(Value) < 1) or (Length(Value) > 63) then
    Exit(False);

  // Check that the value only contains:
  //  uppercase letters, lowercase letters, numbers,
  //  dashes (-)
  if not FLabelValidationRegex.IsMatch(value) then
    Exit(False);

  Result := True;
end;

end.
