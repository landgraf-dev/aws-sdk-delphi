unit AWS.SNS.Model.ThrottledException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EThrottledException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EThrottledException }

function EThrottledException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EThrottledException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EThrottledException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
