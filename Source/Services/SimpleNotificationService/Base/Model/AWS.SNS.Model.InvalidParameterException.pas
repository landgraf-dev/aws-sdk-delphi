unit AWS.SNS.Model.InvalidParameterException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EInvalidParameterException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidParameterException }

function EInvalidParameterException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidParameterException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidParameterException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
