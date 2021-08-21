unit AWS.SQS.Model.ReceiveMessageResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.Message;

type
  TReceiveMessageResponse = class;
  
  IReceiveMessageResponse = interface(IAmazonWebServiceResponse)
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
    function Obj: TReceiveMessageResponse;
    function IsSetMessages: Boolean;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
  end;
  
  TReceiveMessageResponse = class(TAmazonWebServiceResponse, IReceiveMessageResponse)
  strict private
    FMessages: TObjectList<TMessage>;
    function GetMessages: TObjectList<TMessage>;
    procedure SetMessages(const Value: TObjectList<TMessage>);
  strict protected
    function Obj: TReceiveMessageResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMessages: Boolean;
    property Messages: TObjectList<TMessage> read GetMessages write SetMessages;
  end;
  
implementation

{ TReceiveMessageResponse }

constructor TReceiveMessageResponse.Create;
begin
  inherited;
  FMessages := TObjectList<TMessage>.Create;
end;

destructor TReceiveMessageResponse.Destroy;
begin
  Messages := nil;
  inherited;
end;

function TReceiveMessageResponse.Obj: TReceiveMessageResponse;
begin
  Result := Self;
end;

function TReceiveMessageResponse.GetMessages: TObjectList<TMessage>;
begin
  Result := FMessages;
end;

procedure TReceiveMessageResponse.SetMessages(const Value: TObjectList<TMessage>);
begin
  if FMessages <> Value then
  begin
    FMessages.Free;
    FMessages := Value;
  end;
end;

function TReceiveMessageResponse.IsSetMessages: Boolean;
begin
  Result := (FMessages <> nil) and (FMessages.Count > 0);
end;

end.
