unit AWS.Polly.Model.MarksNotSupportedForFormatException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EMarksNotSupportedForFormatException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EMarksNotSupportedForFormatException }

function EMarksNotSupportedForFormatException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EMarksNotSupportedForFormatException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EMarksNotSupportedForFormatException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
