unit AWS.SNS.Model.KMSAccessDeniedException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSAccessDeniedException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSAccessDeniedException }

function EKMSAccessDeniedException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSAccessDeniedException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSAccessDeniedException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
