unit AWS.LexRuntimeService.Model.LimitExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeService.Exception;

type
  ELimitExceededException = class(EAmazonLexException)
  strict private
    FRetryAfterSeconds: Nullable<string>;
    function GetRetryAfterSeconds: string;
    procedure SetRetryAfterSeconds(const Value: string);
  public
    function IsSetRetryAfterSeconds: Boolean;
    property RetryAfterSeconds: string read GetRetryAfterSeconds write SetRetryAfterSeconds;
  end;
  
implementation

{ ELimitExceededException }

function ELimitExceededException.GetRetryAfterSeconds: string;
begin
  Result := FRetryAfterSeconds.ValueOrDefault;
end;

procedure ELimitExceededException.SetRetryAfterSeconds(const Value: string);
begin
  FRetryAfterSeconds := Value;
end;

function ELimitExceededException.IsSetRetryAfterSeconds: Boolean;
begin
  Result := FRetryAfterSeconds.HasValue;
end;

end.
