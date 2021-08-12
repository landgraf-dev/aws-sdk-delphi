unit AWS.SNS.Model.ValidationException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EValidationException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EValidationException }

function EValidationException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EValidationException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EValidationException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
