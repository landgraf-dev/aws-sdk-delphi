unit AWS.SNS.Model.InternalErrorException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EInternalErrorException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInternalErrorException }

function EInternalErrorException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInternalErrorException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInternalErrorException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
