unit AWS.S3Control.Model.SelectionCriteria;

interface

uses
  Bcl.Types.Nullable;

type
  TSelectionCriteria = class;
  
  ISelectionCriteria = interface
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetMaxDepth: Integer;
    procedure SetMaxDepth(const Value: Integer);
    function GetMinStorageBytesPercentage: Double;
    procedure SetMinStorageBytesPercentage(const Value: Double);
    function Obj: TSelectionCriteria;
    function IsSetDelimiter: Boolean;
    function IsSetMaxDepth: Boolean;
    function IsSetMinStorageBytesPercentage: Boolean;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property MaxDepth: Integer read GetMaxDepth write SetMaxDepth;
    property MinStorageBytesPercentage: Double read GetMinStorageBytesPercentage write SetMinStorageBytesPercentage;
  end;
  
  TSelectionCriteria = class
  strict private
    FDelimiter: Nullable<string>;
    FMaxDepth: Nullable<Integer>;
    FMinStorageBytesPercentage: Nullable<Double>;
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetMaxDepth: Integer;
    procedure SetMaxDepth(const Value: Integer);
    function GetMinStorageBytesPercentage: Double;
    procedure SetMinStorageBytesPercentage(const Value: Double);
  strict protected
    function Obj: TSelectionCriteria;
  public
    function IsSetDelimiter: Boolean;
    function IsSetMaxDepth: Boolean;
    function IsSetMinStorageBytesPercentage: Boolean;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property MaxDepth: Integer read GetMaxDepth write SetMaxDepth;
    property MinStorageBytesPercentage: Double read GetMinStorageBytesPercentage write SetMinStorageBytesPercentage;
  end;
  
implementation

{ TSelectionCriteria }

function TSelectionCriteria.Obj: TSelectionCriteria;
begin
  Result := Self;
end;

function TSelectionCriteria.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TSelectionCriteria.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TSelectionCriteria.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TSelectionCriteria.GetMaxDepth: Integer;
begin
  Result := FMaxDepth.ValueOrDefault;
end;

procedure TSelectionCriteria.SetMaxDepth(const Value: Integer);
begin
  FMaxDepth := Value;
end;

function TSelectionCriteria.IsSetMaxDepth: Boolean;
begin
  Result := FMaxDepth.HasValue;
end;

function TSelectionCriteria.GetMinStorageBytesPercentage: Double;
begin
  Result := FMinStorageBytesPercentage.ValueOrDefault;
end;

procedure TSelectionCriteria.SetMinStorageBytesPercentage(const Value: Double);
begin
  FMinStorageBytesPercentage := Value;
end;

function TSelectionCriteria.IsSetMinStorageBytesPercentage: Boolean;
begin
  Result := FMinStorageBytesPercentage.HasValue;
end;

end.
