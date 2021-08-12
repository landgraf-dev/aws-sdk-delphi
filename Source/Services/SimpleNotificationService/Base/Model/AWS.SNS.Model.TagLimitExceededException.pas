unit AWS.SNS.Model.TagLimitExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  ETagLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ETagLimitExceededException }

function ETagLimitExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ETagLimitExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ETagLimitExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
