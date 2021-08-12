unit AWS.SNS.Model.InvalidParameterValueException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EInvalidParameterValueException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidParameterValueException }

function EInvalidParameterValueException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidParameterValueException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidParameterValueException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
