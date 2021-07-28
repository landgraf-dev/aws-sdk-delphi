unit AWS.SES.Model.RawMessage;

interface

uses
  System.Classes;

type
  TRawMessage = class;
  
  IRawMessage = interface
    function GetData: TBytesStream;
    procedure SetData(const Value: TBytesStream);
    function Obj: TRawMessage;
    function IsSetData: Boolean;
    property Data: TBytesStream read GetData write SetData;
  end;
  
  TRawMessage = class
  strict private
    FData: TBytesStream;
    function GetData: TBytesStream;
    procedure SetData(const Value: TBytesStream);
  strict protected
    function Obj: TRawMessage;
  public
    destructor Destroy; override;
    constructor Create(const AData: TBytesStream); overload;
    function IsSetData: Boolean;
    property Data: TBytesStream read GetData write SetData;
  end;
  
implementation

{ TRawMessage }

destructor TRawMessage.Destroy;
begin
  FData.Free;
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
    FData.Free;
    FData := Value;
  end;
end;

function TRawMessage.IsSetData: Boolean;
begin
  Result := FData <> nil;
end;

end.
