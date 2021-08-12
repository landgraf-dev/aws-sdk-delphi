unit AWS.SNS.Model.PlatformApplicationDisabledException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EPlatformApplicationDisabledException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EPlatformApplicationDisabledException }

function EPlatformApplicationDisabledException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EPlatformApplicationDisabledException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EPlatformApplicationDisabledException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
