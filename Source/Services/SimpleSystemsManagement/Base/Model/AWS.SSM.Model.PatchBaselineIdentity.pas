unit AWS.SSM.Model.PatchBaselineIdentity;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TPatchBaselineIdentity = class;
  
  IPatchBaselineIdentity = interface
    function GetBaselineDescription: string;
    procedure SetBaselineDescription(const Value: string);
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetBaselineName: string;
    procedure SetBaselineName(const Value: string);
    function GetDefaultBaseline: Boolean;
    procedure SetDefaultBaseline(const Value: Boolean);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function Obj: TPatchBaselineIdentity;
    function IsSetBaselineDescription: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetBaselineName: Boolean;
    function IsSetDefaultBaseline: Boolean;
    function IsSetOperatingSystem: Boolean;
    property BaselineDescription: string read GetBaselineDescription write SetBaselineDescription;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property BaselineName: string read GetBaselineName write SetBaselineName;
    property DefaultBaseline: Boolean read GetDefaultBaseline write SetDefaultBaseline;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
  TPatchBaselineIdentity = class
  strict private
    FBaselineDescription: Nullable<string>;
    FBaselineId: Nullable<string>;
    FBaselineName: Nullable<string>;
    FDefaultBaseline: Nullable<Boolean>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    function GetBaselineDescription: string;
    procedure SetBaselineDescription(const Value: string);
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetBaselineName: string;
    procedure SetBaselineName(const Value: string);
    function GetDefaultBaseline: Boolean;
    procedure SetDefaultBaseline(const Value: Boolean);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
  strict protected
    function Obj: TPatchBaselineIdentity;
  public
    function IsSetBaselineDescription: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetBaselineName: Boolean;
    function IsSetDefaultBaseline: Boolean;
    function IsSetOperatingSystem: Boolean;
    property BaselineDescription: string read GetBaselineDescription write SetBaselineDescription;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property BaselineName: string read GetBaselineName write SetBaselineName;
    property DefaultBaseline: Boolean read GetDefaultBaseline write SetDefaultBaseline;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
implementation

{ TPatchBaselineIdentity }

function TPatchBaselineIdentity.Obj: TPatchBaselineIdentity;
begin
  Result := Self;
end;

function TPatchBaselineIdentity.GetBaselineDescription: string;
begin
  Result := FBaselineDescription.ValueOrDefault;
end;

procedure TPatchBaselineIdentity.SetBaselineDescription(const Value: string);
begin
  FBaselineDescription := Value;
end;

function TPatchBaselineIdentity.IsSetBaselineDescription: Boolean;
begin
  Result := FBaselineDescription.HasValue;
end;

function TPatchBaselineIdentity.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TPatchBaselineIdentity.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TPatchBaselineIdentity.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TPatchBaselineIdentity.GetBaselineName: string;
begin
  Result := FBaselineName.ValueOrDefault;
end;

procedure TPatchBaselineIdentity.SetBaselineName(const Value: string);
begin
  FBaselineName := Value;
end;

function TPatchBaselineIdentity.IsSetBaselineName: Boolean;
begin
  Result := FBaselineName.HasValue;
end;

function TPatchBaselineIdentity.GetDefaultBaseline: Boolean;
begin
  Result := FDefaultBaseline.ValueOrDefault;
end;

procedure TPatchBaselineIdentity.SetDefaultBaseline(const Value: Boolean);
begin
  FDefaultBaseline := Value;
end;

function TPatchBaselineIdentity.IsSetDefaultBaseline: Boolean;
begin
  Result := FDefaultBaseline.HasValue;
end;

function TPatchBaselineIdentity.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TPatchBaselineIdentity.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TPatchBaselineIdentity.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

end.
