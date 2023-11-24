unit AWS.S3.Model.InventorySchedule;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TInventorySchedule = class;
  
  IInventorySchedule = interface
    function GetFrequency: TInventoryFrequency;
    procedure SetFrequency(const Value: TInventoryFrequency);
    function Obj: TInventorySchedule;
    function IsSetFrequency: Boolean;
    property Frequency: TInventoryFrequency read GetFrequency write SetFrequency;
  end;
  
  TInventorySchedule = class
  strict private
    FFrequency: Nullable<TInventoryFrequency>;
    function GetFrequency: TInventoryFrequency;
    procedure SetFrequency(const Value: TInventoryFrequency);
  strict protected
    function Obj: TInventorySchedule;
  public
    function IsSetFrequency: Boolean;
    property Frequency: TInventoryFrequency read GetFrequency write SetFrequency;
  end;
  
implementation

{ TInventorySchedule }

function TInventorySchedule.Obj: TInventorySchedule;
begin
  Result := Self;
end;

function TInventorySchedule.GetFrequency: TInventoryFrequency;
begin
  Result := FFrequency.ValueOrDefault;
end;

procedure TInventorySchedule.SetFrequency(const Value: TInventoryFrequency);
begin
  FFrequency := Value;
end;

function TInventorySchedule.IsSetFrequency: Boolean;
begin
  Result := FFrequency.HasValue;
end;

end.
