unit AWS.S3.Model.RequestProgress;

interface

uses
  Bcl.Types.Nullable;

type
  TRequestProgress = class;
  
  IRequestProgress = interface
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function Obj: TRequestProgress;
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
  TRequestProgress = class
  strict private
    FEnabled: Nullable<Boolean>;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  strict protected
    function Obj: TRequestProgress;
  public
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
implementation

{ TRequestProgress }

function TRequestProgress.Obj: TRequestProgress;
begin
  Result := Self;
end;

function TRequestProgress.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TRequestProgress.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TRequestProgress.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

end.
