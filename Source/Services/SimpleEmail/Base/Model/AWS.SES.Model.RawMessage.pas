unit AWS.SES.Model.RawMessage;

interface

uses
  System.Classes;

type
  TRawMessage = class;
  
  IRawMessage = interface
    function GetData: TBytesStream;
    procedure SetData(const Value: TBytesStream);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
    function Obj: TRawMessage;
    function IsSetData: Boolean;
    property Data: TBytesStream read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
  end;
  
  TRawMessage = class
  strict private
    FData: TBytesStream;
    FKeepData: Boolean;
    function GetData: TBytesStream;
    procedure SetData(const Value: TBytesStream);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
  strict protected
    function Obj: TRawMessage;
  public
    destructor Destroy; override;
    constructor Create(const AData: TBytesStream); overload;
    function IsSetData: Boolean;
    property Data: TBytesStream read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
  end;
  
implementation

{ TRawMessage }

destructor TRawMessage.Destroy;
begin
  Data := nil;
  inherited;
end;

function TRawMessage.Obj: TRawMessage;
begin
  Result := Self;
end;

constructor TRawMessage.Create(const AData: TBytesStream);
begin
  inherited Create;
  Data := AData;
end;

function TRawMessage.GetData: TBytesStream;
begin
  Result := FData;
end;

procedure TRawMessage.SetData(const Value: TBytesStream);
begin
  if FData <> Value then
  begin
    if not KeepData then
      FData.Free;
    FData := Value;
  end;
end;

function TRawMessage.GetKeepData: Boolean;
begin
  Result := FKeepData;
end;

procedure TRawMessage.SetKeepData(const Value: Boolean);
begin
  FKeepData := Value;
end;

function TRawMessage.IsSetData: Boolean;
begin
  Result := FData <> nil;
end;

end.
