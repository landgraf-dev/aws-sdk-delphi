unit AWS.SES.Model.SendBounceResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TSendBounceResponse = class;
  
  ISendBounceResponse = interface(IAmazonWebServiceResponse)
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function Obj: TSendBounceResponse;
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
  TSendBounceResponse = class(TAmazonWebServiceResponse, ISendBounceResponse)
  strict private
    FMessageId: Nullable<string>;
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
  strict protected
    function Obj: TSendBounceResponse;
  public
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
implementation

{ TSendBounceResponse }

function TSendBounceResponse.Obj: TSendBounceResponse;
begin
  Result := Self;
end;

function TSendBounceResponse.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSendBounceResponse.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSendBounceResponse.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

end.
