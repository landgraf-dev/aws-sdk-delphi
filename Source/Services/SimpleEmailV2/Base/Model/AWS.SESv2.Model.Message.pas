unit AWS.SESv2.Model.Message;

interface

uses
  AWS.SESv2.Model.Body, 
  AWS.SESv2.Model.Content;

type
  TMessage = class;
  
  IMessage = interface
    function GetBody: TBody;
    procedure SetBody(const Value: TBody);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetSubject: TContent;
    procedure SetSubject(const Value: TContent);
    function GetKeepSubject: Boolean;
    procedure SetKeepSubject(const Value: Boolean);
    function Obj: TMessage;
    function IsSetBody: Boolean;
    function IsSetSubject: Boolean;
    property Body: TBody read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property Subject: TContent read GetSubject write SetSubject;
    property KeepSubject: Boolean read GetKeepSubject write SetKeepSubject;
  end;
  
  TMessage = class
  strict private
    FBody: TBody;
    FKeepBody: Boolean;
    FSubject: TContent;
    FKeepSubject: Boolean;
    function GetBody: TBody;
    procedure SetBody(const Value: TBody);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetSubject: TContent;
    procedure SetSubject(const Value: TContent);
    function GetKeepSubject: Boolean;
    procedure SetKeepSubject(const Value: Boolean);
  strict protected
    function Obj: TMessage;
  public
    destructor Destroy; override;
    function IsSetBody: Boolean;
    function IsSetSubject: Boolean;
    property Body: TBody read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property Subject: TContent read GetSubject write SetSubject;
    property KeepSubject: Boolean read GetKeepSubject write SetKeepSubject;
  end;
  
implementation

{ TMessage }

destructor TMessage.Destroy;
begin
  Subject := nil;
  Body := nil;
  inherited;
end;

function TMessage.Obj: TMessage;
begin
  Result := Self;
end;

function TMessage.GetBody: TBody;
begin
  Result := FBody;
end;

procedure TMessage.SetBody(const Value: TBody);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TMessage.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TMessage.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
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
    if not KeepSubject then
      FSubject.Free;
    FSubject := Value;
  end;
end;

function TMessage.GetKeepSubject: Boolean;
begin
  Result := FKeepSubject;
end;

procedure TMessage.SetKeepSubject(const Value: Boolean);
begin
  FKeepSubject := Value;
end;

function TMessage.IsSetSubject: Boolean;
begin
  Result := FSubject <> nil;
end;

end.
