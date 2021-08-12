unit AWS.SNS.Model.StaleTagException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EStaleTagException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EStaleTagException }

function EStaleTagException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EStaleTagException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EStaleTagException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
