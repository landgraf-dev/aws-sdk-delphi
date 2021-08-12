unit AWS.SNS.Model.ConcurrentAccessException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EConcurrentAccessException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EConcurrentAccessException }

function EConcurrentAccessException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EConcurrentAccessException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EConcurrentAccessException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
