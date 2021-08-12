unit AWS.SNS.Model.KMSOptInRequiredException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSOptInRequiredException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSOptInRequiredException }

function EKMSOptInRequiredException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSOptInRequiredException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSOptInRequiredException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
