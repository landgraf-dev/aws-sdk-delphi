unit AWS.SNS.Model.KMSInvalidStateException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSInvalidStateException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSInvalidStateException }

function EKMSInvalidStateException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSInvalidStateException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSInvalidStateException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
