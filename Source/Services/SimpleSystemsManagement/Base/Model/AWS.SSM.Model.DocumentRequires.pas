unit AWS.SSM.Model.DocumentRequires;

interface

uses
  AWS.Nullable;

type
  TDocumentRequires = class;
  
  IDocumentRequires = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TDocumentRequires;
    function IsSetName: Boolean;
    function IsSetVersion: Boolean;
    property Name: string read GetName write SetName;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TDocumentRequires = class
  strict private
    FName: Nullable<string>;
    FVersion: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TDocumentRequires;
  public
    function IsSetName: Boolean;
    function IsSetVersion: Boolean;
    property Name: string read GetName write SetName;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TDocumentRequires }

function TDocumentRequires.Obj: TDocumentRequires;
begin
  Result := Self;
end;

function TDocumentRequires.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentRequires.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentRequires.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDocumentRequires.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TDocumentRequires.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TDocumentRequires.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
