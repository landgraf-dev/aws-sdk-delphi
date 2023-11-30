unit AWS.SES.Model.CannotDeleteException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ECannotDeleteException = class(EAmazonSimpleEmailServiceException)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ ECannotDeleteException }

function ECannotDeleteException.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure ECannotDeleteException.SetName(const Value: string);
begin
  FName := Value;
end;

function ECannotDeleteException.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
