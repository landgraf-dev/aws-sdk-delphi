unit AWS.Polly.Model.InvalidSnsTopicArnException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidSnsTopicArnException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidSnsTopicArnException }

function EInvalidSnsTopicArnException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidSnsTopicArnException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidSnsTopicArnException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
