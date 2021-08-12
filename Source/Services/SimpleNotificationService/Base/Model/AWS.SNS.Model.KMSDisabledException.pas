unit AWS.SNS.Model.KMSDisabledException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSDisabledException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSDisabledException }

function EKMSDisabledException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSDisabledException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSDisabledException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
