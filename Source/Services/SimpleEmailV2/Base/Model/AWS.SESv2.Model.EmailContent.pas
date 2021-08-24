unit AWS.SESv2.Model.EmailContent;

interface

uses
  AWS.SESv2.Model.RawMessage, 
  AWS.SESv2.Model.Message, 
  AWS.SESv2.Model.Template;

type
  TEmailContent = class;
  
  IEmailContent = interface
    function GetRaw: TRawMessage;
    procedure SetRaw(const Value: TRawMessage);
    function GetKeepRaw: Boolean;
    procedure SetKeepRaw(const Value: Boolean);
    function GetSimple: TMessage;
    procedure SetSimple(const Value: TMessage);
    function GetKeepSimple: Boolean;
    procedure SetKeepSimple(const Value: Boolean);
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
    function Obj: TEmailContent;
    function IsSetRaw: Boolean;
    function IsSetSimple: Boolean;
    function IsSetTemplate: Boolean;
    property Raw: TRawMessage read GetRaw write SetRaw;
    property KeepRaw: Boolean read GetKeepRaw write SetKeepRaw;
    property Simple: TMessage read GetSimple write SetSimple;
    property KeepSimple: Boolean read GetKeepSimple write SetKeepSimple;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
  TEmailContent = class
  strict private
    FRaw: TRawMessage;
    FKeepRaw: Boolean;
    FSimple: TMessage;
    FKeepSimple: Boolean;
    FTemplate: TTemplate;
    FKeepTemplate: Boolean;
    function GetRaw: TRawMessage;
    procedure SetRaw(const Value: TRawMessage);
    function GetKeepRaw: Boolean;
    procedure SetKeepRaw(const Value: Boolean);
    function GetSimple: TMessage;
    procedure SetSimple(const Value: TMessage);
    function GetKeepSimple: Boolean;
    procedure SetKeepSimple(const Value: Boolean);
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
  strict protected
    function Obj: TEmailContent;
  public
    destructor Destroy; override;
    function IsSetRaw: Boolean;
    function IsSetSimple: Boolean;
    function IsSetTemplate: Boolean;
    property Raw: TRawMessage read GetRaw write SetRaw;
    property KeepRaw: Boolean read GetKeepRaw write SetKeepRaw;
    property Simple: TMessage read GetSimple write SetSimple;
    property KeepSimple: Boolean read GetKeepSimple write SetKeepSimple;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
implementation

{ TEmailContent }

destructor TEmailContent.Destroy;
begin
  Template := nil;
  Simple := nil;
  Raw := nil;
  inherited;
end;

function TEmailContent.Obj: TEmailContent;
begin
  Result := Self;
end;

function TEmailContent.GetRaw: TRawMessage;
begin
  Result := FRaw;
end;

procedure TEmailContent.SetRaw(const Value: TRawMessage);
begin
  if FRaw <> Value then
  begin
    if not KeepRaw then
      FRaw.Free;
    FRaw := Value;
  end;
end;

function TEmailContent.GetKeepRaw: Boolean;
begin
  Result := FKeepRaw;
end;

procedure TEmailContent.SetKeepRaw(const Value: Boolean);
begin
  FKeepRaw := Value;
end;

function TEmailContent.IsSetRaw: Boolean;
begin
  Result := FRaw <> nil;
end;

function TEmailContent.GetSimple: TMessage;
begin
  Result := FSimple;
end;

procedure TEmailContent.SetSimple(const Value: TMessage);
begin
  if FSimple <> Value then
  begin
    if not KeepSimple then
      FSimple.Free;
    FSimple := Value;
  end;
end;

function TEmailContent.GetKeepSimple: Boolean;
begin
  Result := FKeepSimple;
end;

procedure TEmailContent.SetKeepSimple(const Value: Boolean);
begin
  FKeepSimple := Value;
end;

function TEmailContent.IsSetSimple: Boolean;
begin
  Result := FSimple <> nil;
end;

function TEmailContent.GetTemplate: TTemplate;
begin
  Result := FTemplate;
end;

procedure TEmailContent.SetTemplate(const Value: TTemplate);
begin
  if FTemplate <> Value then
  begin
    if not KeepTemplate then
      FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TEmailContent.GetKeepTemplate: Boolean;
begin
  Result := FKeepTemplate;
end;

procedure TEmailContent.SetKeepTemplate(const Value: Boolean);
begin
  FKeepTemplate := Value;
end;

function TEmailContent.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
