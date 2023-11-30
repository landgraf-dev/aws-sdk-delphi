unit AWS.SES.Model.ConfigurationSet;

interface

uses
  AWS.Nullable;

type
  TConfigurationSet = class;
  
  IConfigurationSet = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TConfigurationSet;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TConfigurationSet = class
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TConfigurationSet;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TConfigurationSet }

function TConfigurationSet.Obj: TConfigurationSet;
begin
  Result := Self;
end;

function TConfigurationSet.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TConfigurationSet.SetName(const Value: string);
begin
  FName := Value;
end;

function TConfigurationSet.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
