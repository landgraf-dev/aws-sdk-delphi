unit AWS.SNS.Model.FilterPolicyLimitExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EFilterPolicyLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EFilterPolicyLimitExceededException }

function EFilterPolicyLimitExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EFilterPolicyLimitExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EFilterPolicyLimitExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
