unit AWS.Rekognition.Model.LabelDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.LabelTypes;

type
  TLabelDetection = class;
  
  ILabelDetection = interface
    function GetLabel: TLabel;
    procedure SetLabel(const Value: TLabel);
    function GetKeepLabel: Boolean;
    procedure SetKeepLabel(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TLabelDetection;
    function IsSetLabel: Boolean;
    function IsSetTimestamp: Boolean;
    property &Label: TLabel read GetLabel write SetLabel;
    property KeepLabel: Boolean read GetKeepLabel write SetKeepLabel;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TLabelDetection = class
  strict private
    FLabel: TLabel;
    FKeepLabel: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetLabel: TLabel;
    procedure SetLabel(const Value: TLabel);
    function GetKeepLabel: Boolean;
    procedure SetKeepLabel(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TLabelDetection;
  public
    destructor Destroy; override;
    function IsSetLabel: Boolean;
    function IsSetTimestamp: Boolean;
    property &Label: TLabel read GetLabel write SetLabel;
    property KeepLabel: Boolean read GetKeepLabel write SetKeepLabel;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TLabelDetection }

destructor TLabelDetection.Destroy;
begin
  &Label := nil;
  inherited;
end;

function TLabelDetection.Obj: TLabelDetection;
begin
  Result := Self;
end;

function TLabelDetection.GetLabel: TLabel;
begin
  Result := FLabel;
end;

procedure TLabelDetection.SetLabel(const Value: TLabel);
begin
  if FLabel <> Value then
  begin
    if not KeepLabel then
      FLabel.Free;
    FLabel := Value;
  end;
end;

function TLabelDetection.GetKeepLabel: Boolean;
begin
  Result := FKeepLabel;
end;

procedure TLabelDetection.SetKeepLabel(const Value: Boolean);
begin
  FKeepLabel := Value;
end;

function TLabelDetection.IsSetLabel: Boolean;
begin
  Result := FLabel <> nil;
end;

function TLabelDetection.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TLabelDetection.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TLabelDetection.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
