unit AWS.Polly.Model.InvalidSampleRateException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidSampleRateException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidSampleRateException }

function EInvalidSampleRateException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidSampleRateException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidSampleRateException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
