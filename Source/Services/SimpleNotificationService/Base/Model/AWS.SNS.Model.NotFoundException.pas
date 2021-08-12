unit AWS.SNS.Model.NotFoundException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  ENotFoundException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ENotFoundException }

function ENotFoundException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ENotFoundException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ENotFoundException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
