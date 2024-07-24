unit AWS.SSM.Model.ParameterInlinePolicy;

interface

uses
  AWS.Nullable;

type
  TParameterInlinePolicy = class;
  
  IParameterInlinePolicy = interface
    function GetPolicyStatus: string;
    procedure SetPolicyStatus(const Value: string);
    function GetPolicyText: string;
    procedure SetPolicyText(const Value: string);
    function GetPolicyType: string;
    procedure SetPolicyType(const Value: string);
    function Obj: TParameterInlinePolicy;
    function IsSetPolicyStatus: Boolean;
    function IsSetPolicyText: Boolean;
    function IsSetPolicyType: Boolean;
    property PolicyStatus: string read GetPolicyStatus write SetPolicyStatus;
    property PolicyText: string read GetPolicyText write SetPolicyText;
    property PolicyType: string read GetPolicyType write SetPolicyType;
  end;
  
  TParameterInlinePolicy = class
  strict private
    FPolicyStatus: Nullable<string>;
    FPolicyText: Nullable<string>;
    FPolicyType: Nullable<string>;
    function GetPolicyStatus: string;
    procedure SetPolicyStatus(const Value: string);
    function GetPolicyText: string;
    procedure SetPolicyText(const Value: string);
    function GetPolicyType: string;
    procedure SetPolicyType(const Value: string);
  strict protected
    function Obj: TParameterInlinePolicy;
  public
    function IsSetPolicyStatus: Boolean;
    function IsSetPolicyText: Boolean;
    function IsSetPolicyType: Boolean;
    property PolicyStatus: string read GetPolicyStatus write SetPolicyStatus;
    property PolicyText: string read GetPolicyText write SetPolicyText;
    property PolicyType: string read GetPolicyType write SetPolicyType;
  end;
  
implementation

{ TParameterInlinePolicy }

function TParameterInlinePolicy.Obj: TParameterInlinePolicy;
begin
  Result := Self;
end;

function TParameterInlinePolicy.GetPolicyStatus: string;
begin
  Result := FPolicyStatus.ValueOrDefault;
end;

procedure TParameterInlinePolicy.SetPolicyStatus(const Value: string);
begin
  FPolicyStatus := Value;
end;

function TParameterInlinePolicy.IsSetPolicyStatus: Boolean;
begin
  Result := FPolicyStatus.HasValue;
end;

function TParameterInlinePolicy.GetPolicyText: string;
begin
  Result := FPolicyText.ValueOrDefault;
end;

procedure TParameterInlinePolicy.SetPolicyText(const Value: string);
begin
  FPolicyText := Value;
end;

function TParameterInlinePolicy.IsSetPolicyText: Boolean;
begin
  Result := FPolicyText.HasValue;
end;

function TParameterInlinePolicy.GetPolicyType: string;
begin
  Result := FPolicyType.ValueOrDefault;
end;

procedure TParameterInlinePolicy.SetPolicyType(const Value: string);
begin
  FPolicyType := Value;
end;

function TParameterInlinePolicy.IsSetPolicyType: Boolean;
begin
  Result := FPolicyType.HasValue;
end;

end.
