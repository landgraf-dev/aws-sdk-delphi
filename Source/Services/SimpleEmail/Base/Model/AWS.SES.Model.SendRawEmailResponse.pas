unit AWS.SES.Model.SendRawEmailResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TSendRawEmailResponse = class;
  
  ISendRawEmailResponse = interface(IAmazonWebServiceResponse)
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function Obj: TSendRawEmailResponse;
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
  TSendRawEmailResponse = class(TAmazonWebServiceResponse, ISendRawEmailResponse)
  strict private
    FMessageId: Nullable<string>;
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
  strict protected
    function Obj: TSendRawEmailResponse;
  public
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
implementation

{ TSendRawEmailResponse }

function TSendRawEmailResponse.Obj: TSendRawEmailResponse;
begin
  Result := Self;
end;

function TSendRawEmailResponse.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSendRawEmailResponse.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSendRawEmailResponse.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

end.
