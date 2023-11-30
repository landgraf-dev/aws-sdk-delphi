unit AWS.SNS.Model.VerificationException;

interface

uses
  AWS.SNS.Exception, 
  AWS.Nullable;

type
  EVerificationException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FStatus: Nullable<string>;
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  public
    function IsSetStatus: Boolean;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ EVerificationException }

function EVerificationException.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure EVerificationException.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function EVerificationException.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
