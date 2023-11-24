unit AWS.S3.Model.InventoryFilter;

interface

uses
  Bcl.Types.Nullable;

type
  TInventoryFilter = class;
  
  IInventoryFilter = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TInventoryFilter;
    function IsSetPrefix: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TInventoryFilter = class
  strict private
    FPrefix: Nullable<string>;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TInventoryFilter;
  public
    function IsSetPrefix: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TInventoryFilter }

function TInventoryFilter.Obj: TInventoryFilter;
begin
  Result := Self;
end;

function TInventoryFilter.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TInventoryFilter.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TInventoryFilter.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
