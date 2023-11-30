unit AWS.SES.Model.RuleDoesNotExistException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ERuleDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ ERuleDoesNotExistException }

function ERuleDoesNotExistException.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure ERuleDoesNotExistException.SetName(const Value: string);
begin
  FName := Value;
end;

function ERuleDoesNotExistException.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
