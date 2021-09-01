unit AWS.Translate.Model.TerminologyDataLocation;

interface

uses
  Bcl.Types.Nullable;

type
  TTerminologyDataLocation = class;
  
  ITerminologyDataLocation = interface
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRepositoryType: string;
    procedure SetRepositoryType(const Value: string);
    function Obj: TTerminologyDataLocation;
    function IsSetLocation: Boolean;
    function IsSetRepositoryType: Boolean;
    property Location: string read GetLocation write SetLocation;
    property RepositoryType: string read GetRepositoryType write SetRepositoryType;
  end;
  
  TTerminologyDataLocation = class
  strict private
    FLocation: Nullable<string>;
    FRepositoryType: Nullable<string>;
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRepositoryType: string;
    procedure SetRepositoryType(const Value: string);
  strict protected
    function Obj: TTerminologyDataLocation;
  public
    function IsSetLocation: Boolean;
    function IsSetRepositoryType: Boolean;
    property Location: string read GetLocation write SetLocation;
    property RepositoryType: string read GetRepositoryType write SetRepositoryType;
  end;
  
implementation

{ TTerminologyDataLocation }

function TTerminologyDataLocation.Obj: TTerminologyDataLocation;
begin
  Result := Self;
end;

function TTerminologyDataLocation.GetLocation: string;
begin
  Result := FLocation.ValueOrDefault;
end;

procedure TTerminologyDataLocation.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

function TTerminologyDataLocation.IsSetLocation: Boolean;
begin
  Result := FLocation.HasValue;
end;

function TTerminologyDataLocation.GetRepositoryType: string;
begin
  Result := FRepositoryType.ValueOrDefault;
end;

procedure TTerminologyDataLocation.SetRepositoryType(const Value: string);
begin
  FRepositoryType := Value;
end;

function TTerminologyDataLocation.IsSetRepositoryType: Boolean;
begin
  Result := FRepositoryType.HasValue;
end;

end.
