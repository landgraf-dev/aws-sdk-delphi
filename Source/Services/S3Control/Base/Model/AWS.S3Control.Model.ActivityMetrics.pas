unit AWS.S3Control.Model.ActivityMetrics;

interface

uses
  Bcl.Types.Nullable;

type
  TActivityMetrics = class;
  
  IActivityMetrics = interface
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function Obj: TActivityMetrics;
    function IsSetIsEnabled: Boolean;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
  end;
  
  TActivityMetrics = class
  strict private
    FIsEnabled: Nullable<Boolean>;
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
  strict protected
    function Obj: TActivityMetrics;
  public
    function IsSetIsEnabled: Boolean;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
  end;
  
implementation

{ TActivityMetrics }

function TActivityMetrics.Obj: TActivityMetrics;
begin
  Result := Self;
end;

function TActivityMetrics.GetIsEnabled: Boolean;
begin
  Result := FIsEnabled.ValueOrDefault;
end;

procedure TActivityMetrics.SetIsEnabled(const Value: Boolean);
begin
  FIsEnabled := Value;
end;

function TActivityMetrics.IsSetIsEnabled: Boolean;
begin
  Result := FIsEnabled.HasValue;
end;

end.
