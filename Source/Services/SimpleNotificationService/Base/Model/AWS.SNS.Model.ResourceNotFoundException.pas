unit AWS.SNS.Model.ResourceNotFoundException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EResourceNotFoundException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EResourceNotFoundException }

function EResourceNotFoundException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EResourceNotFoundException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EResourceNotFoundException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
