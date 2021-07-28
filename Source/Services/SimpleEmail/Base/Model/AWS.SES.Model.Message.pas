unit AWS.SES.Model.Message;

interface

uses
  AWS.SES.Model.Body, 
  AWS.SES.Model.Content;

type
  TMessage = class;
  
  IMessage = interface
    function GetBody: TBody;
    procedure SetBody(const Value: TBody);
    function GetSubject: TContent;
    procedure SetSubject(const Value: TContent);
    function Obj: TMessage;
    function IsSetBody: Boolean;
    function IsSetSubject: Boolean;
    property Body: TBody read GetBody write SetBody;
    property Subject: TContent read GetSubject write SetSubject;
  end;
  
  TMessage = class
  strict private
    FBody: TBody;
    FSubject: TContent;
    function GetBody: TBody;
    procedure SetBody(const Value: TBody);
    function GetSubject: TContent;
    procedure SetSubject(const Value: TContent);
  strict protected
    function Obj: TMessage;
  public
    destructor Destroy; override;
    constructor Create(const ASubject: TContent; const ABody: TBody); overload;
    function IsSetBody: Boolean;
    function IsSetSubject: Boolean;
    property Body: TBody read GetBody write SetBody;
    property Subject: TContent read GetSubject write SetSubject;
  end;
  
implementation

{ TMessage }

destructor TMessage.Destroy;
begin
  FSubject.Free;
  FBody.Free;
  inherited;
end;

function TMessage.Obj: TMessage;
begin
  Result := Self;
end;

constructor TMessage.Create(const ASubject: TContent; const ABody: TBody);
begin
  inherited Create;
  Subject := ASubject;
  Body := ABody;
end;

function TMessage.GetBody: TBody;
begin
  Result := FBody;
end;

procedure TMessage.SetBody(const Value: TBody);
begin
  if FBody <> Value then
  begin
    FBody.Free;
    FBody := Value;
  end;
end;

function TMessage.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TMessage.GetSubject: TContent;
begin
  Result := FSubject;
end;

procedure TMessage.SetSubject(const Value: TContent);
begin
  if FSubject <> Value then
  begin
    FSubject.Free;
    FSubject := Value;
  end;
end;

function TMessage.IsSetSubject: Boolean;
begin
  Result := FSubject <> nil;
end;

end.
