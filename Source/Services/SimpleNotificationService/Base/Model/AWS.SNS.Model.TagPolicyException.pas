unit AWS.SNS.Model.TagPolicyException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  ETagPolicyException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ETagPolicyException }

function ETagPolicyException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ETagPolicyException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ETagPolicyException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
