unit AWS.SES.Model.RuleSetDoesNotExistException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ERuleSetDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ ERuleSetDoesNotExistException }

function ERuleSetDoesNotExistException.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure ERuleSetDoesNotExistException.SetName(const Value: string);
begin
  FName := Value;
end;

function ERuleSetDoesNotExistException.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
