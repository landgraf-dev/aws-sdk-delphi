unit AWS.S3.Model.RecordsEvent;

interface

uses
  System.Classes;

type
  TRecordsEvent = class;
  
  IRecordsEvent = interface
    function GetPayload: TBytesStream;
    procedure SetPayload(const Value: TBytesStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
    function Obj: TRecordsEvent;
    function IsSetPayload: Boolean;
    property Payload: TBytesStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
  end;
  
  TRecordsEvent = class
  strict private
    FPayload: TBytesStream;
    FKeepPayload: Boolean;
    function GetPayload: TBytesStream;
    procedure SetPayload(const Value: TBytesStream);
    function GetKeepPayload: Boolean;
    procedure SetKeepPayload(const Value: Boolean);
  strict protected
    function Obj: TRecordsEvent;
  public
    destructor Destroy; override;
    function IsSetPayload: Boolean;
    property Payload: TBytesStream read GetPayload write SetPayload;
    property KeepPayload: Boolean read GetKeepPayload write SetKeepPayload;
  end;
  
implementation

{ TRecordsEvent }

destructor TRecordsEvent.Destroy;
begin
  Payload := nil;
  inherited;
end;

function TRecordsEvent.Obj: TRecordsEvent;
begin
  Result := Self;
end;

function TRecordsEvent.GetPayload: TBytesStream;
begin
  Result := FPayload;
end;

procedure TRecordsEvent.SetPayload(const Value: TBytesStream);
begin
  if FPayload <> Value then
  begin
    if not KeepPayload then
      FPayload.Free;
    FPayload := Value;
  end;
end;

function TRecordsEvent.GetKeepPayload: Boolean;
begin
  Result := FKeepPayload;
end;

procedure TRecordsEvent.SetKeepPayload(const Value: Boolean);
begin
  FKeepPayload := Value;
end;

function TRecordsEvent.IsSetPayload: Boolean;
begin
  Result := FPayload <> nil;
end;

end.
