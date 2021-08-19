unit AWS.Polly.Model.InvalidTaskIdException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidTaskIdException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidTaskIdException }

function EInvalidTaskIdException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidTaskIdException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidTaskIdException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
