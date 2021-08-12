unit AWS.SNS.Model.KMSThrottlingException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSThrottlingException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSThrottlingException }

function EKMSThrottlingException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSThrottlingException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSThrottlingException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
