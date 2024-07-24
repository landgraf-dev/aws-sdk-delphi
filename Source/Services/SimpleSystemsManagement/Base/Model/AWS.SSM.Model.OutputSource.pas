unit AWS.SSM.Model.OutputSource;

interface

uses
  AWS.Nullable;

type
  TOutputSource = class;
  
  IOutputSource = interface
    function GetOutputSourceId: string;
    procedure SetOutputSourceId(const Value: string);
    function GetOutputSourceType: string;
    procedure SetOutputSourceType(const Value: string);
    function Obj: TOutputSource;
    function IsSetOutputSourceId: Boolean;
    function IsSetOutputSourceType: Boolean;
    property OutputSourceId: string read GetOutputSourceId write SetOutputSourceId;
    property OutputSourceType: string read GetOutputSourceType write SetOutputSourceType;
  end;
  
  TOutputSource = class
  strict private
    FOutputSourceId: Nullable<string>;
    FOutputSourceType: Nullable<string>;
    function GetOutputSourceId: string;
    procedure SetOutputSourceId(const Value: string);
    function GetOutputSourceType: string;
    procedure SetOutputSourceType(const Value: string);
  strict protected
    function Obj: TOutputSource;
  public
    function IsSetOutputSourceId: Boolean;
    function IsSetOutputSourceType: Boolean;
    property OutputSourceId: string read GetOutputSourceId write SetOutputSourceId;
    property OutputSourceType: string read GetOutputSourceType write SetOutputSourceType;
  end;
  
implementation

{ TOutputSource }

function TOutputSource.Obj: TOutputSource;
begin
  Result := Self;
end;

function TOutputSource.GetOutputSourceId: string;
begin
  Result := FOutputSourceId.ValueOrDefault;
end;

procedure TOutputSource.SetOutputSourceId(const Value: string);
begin
  FOutputSourceId := Value;
end;

function TOutputSource.IsSetOutputSourceId: Boolean;
begin
  Result := FOutputSourceId.HasValue;
end;

function TOutputSource.GetOutputSourceType: string;
begin
  Result := FOutputSourceType.ValueOrDefault;
end;

procedure TOutputSource.SetOutputSourceType(const Value: string);
begin
  FOutputSourceType := Value;
end;

function TOutputSource.IsSetOutputSourceType: Boolean;
begin
  Result := FOutputSourceType.HasValue;
end;

end.
