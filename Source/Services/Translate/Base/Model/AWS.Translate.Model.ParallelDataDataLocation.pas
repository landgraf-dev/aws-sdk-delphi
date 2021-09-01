unit AWS.Translate.Model.ParallelDataDataLocation;

interface

uses
  Bcl.Types.Nullable;

type
  TParallelDataDataLocation = class;
  
  IParallelDataDataLocation = interface
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRepositoryType: string;
    procedure SetRepositoryType(const Value: string);
    function Obj: TParallelDataDataLocation;
    function IsSetLocation: Boolean;
    function IsSetRepositoryType: Boolean;
    property Location: string read GetLocation write SetLocation;
    property RepositoryType: string read GetRepositoryType write SetRepositoryType;
  end;
  
  TParallelDataDataLocation = class
  strict private
    FLocation: Nullable<string>;
    FRepositoryType: Nullable<string>;
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRepositoryType: string;
    procedure SetRepositoryType(const Value: string);
  strict protected
    function Obj: TParallelDataDataLocation;
  public
    function IsSetLocation: Boolean;
    function IsSetRepositoryType: Boolean;
    property Location: string read GetLocation write SetLocation;
    property RepositoryType: string read GetRepositoryType write SetRepositoryType;
  end;
  
implementation

{ TParallelDataDataLocation }

function TParallelDataDataLocation.Obj: TParallelDataDataLocation;
begin
  Result := Self;
end;

function TParallelDataDataLocation.GetLocation: string;
begin
  Result := FLocation.ValueOrDefault;
end;

procedure TParallelDataDataLocation.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

function TParallelDataDataLocation.IsSetLocation: Boolean;
begin
  Result := FLocation.HasValue;
end;

function TParallelDataDataLocation.GetRepositoryType: string;
begin
  Result := FRepositoryType.ValueOrDefault;
end;

procedure TParallelDataDataLocation.SetRepositoryType(const Value: string);
begin
  FRepositoryType := Value;
end;

function TParallelDataDataLocation.IsSetRepositoryType: Boolean;
begin
  Result := FRepositoryType.HasValue;
end;

end.
