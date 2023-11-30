unit AWS.Rekognition.Model.Parent;

interface

uses
  AWS.Nullable;

type
  TParent = class;
  
  IParent = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TParent;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TParent = class
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TParent;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TParent }

function TParent.Obj: TParent;
begin
  Result := Self;
end;

function TParent.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TParent.SetName(const Value: string);
begin
  FName := Value;
end;

function TParent.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
