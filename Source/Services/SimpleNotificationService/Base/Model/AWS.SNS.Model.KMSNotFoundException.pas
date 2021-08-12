unit AWS.SNS.Model.KMSNotFoundException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EKMSNotFoundException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EKMSNotFoundException }

function EKMSNotFoundException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EKMSNotFoundException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EKMSNotFoundException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
