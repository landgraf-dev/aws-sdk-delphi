unit AWS.SNS.Model.OptedOutException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EOptedOutException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EOptedOutException }

function EOptedOutException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EOptedOutException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EOptedOutException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
