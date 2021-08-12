unit AWS.SNS.Model.VerificationException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EVerificationException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    FStatus: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  public
    function IsSetMessage: Boolean;
    function IsSetStatus: Boolean;
    property Message: string read GetMessage write SetMessage;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ EVerificationException }

function EVerificationException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EVerificationException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EVerificationException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

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
