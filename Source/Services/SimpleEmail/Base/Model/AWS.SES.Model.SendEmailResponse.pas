unit AWS.SES.Model.SendEmailResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TSendEmailResponse = class;
  
  ISendEmailResponse = interface(IAmazonWebServiceResponse)
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function Obj: TSendEmailResponse;
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
  TSendEmailResponse = class(TAmazonWebServiceResponse, ISendEmailResponse)
  strict private
    FMessageId: Nullable<string>;
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
  strict protected
    function Obj: TSendEmailResponse;
  public
    function IsSetMessageId: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
implementation

{ TSendEmailResponse }

function TSendEmailResponse.Obj: TSendEmailResponse;
begin
  Result := Self;
end;

function TSendEmailResponse.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSendEmailResponse.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSendEmailResponse.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

end.
