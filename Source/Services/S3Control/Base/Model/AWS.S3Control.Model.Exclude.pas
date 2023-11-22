unit AWS.S3Control.Model.Exclude;

interface

uses
  System.Generics.Collections;

type
  TExclude = class;
  
  IExclude = interface
    function GetBuckets: TList<string>;
    procedure SetBuckets(const Value: TList<string>);
    function GetKeepBuckets: Boolean;
    procedure SetKeepBuckets(const Value: Boolean);
    function GetRegions: TList<string>;
    procedure SetRegions(const Value: TList<string>);
    function GetKeepRegions: Boolean;
    procedure SetKeepRegions(const Value: Boolean);
    function Obj: TExclude;
    function IsSetBuckets: Boolean;
    function IsSetRegions: Boolean;
    property Buckets: TList<string> read GetBuckets write SetBuckets;
    property KeepBuckets: Boolean read GetKeepBuckets write SetKeepBuckets;
    property Regions: TList<string> read GetRegions write SetRegions;
    property KeepRegions: Boolean read GetKeepRegions write SetKeepRegions;
  end;
  
  TExclude = class
  strict private
    FBuckets: TList<string>;
    FKeepBuckets: Boolean;
    FRegions: TList<string>;
    FKeepRegions: Boolean;
    function GetBuckets: TList<string>;
    procedure SetBuckets(const Value: TList<string>);
    function GetKeepBuckets: Boolean;
    procedure SetKeepBuckets(const Value: Boolean);
    function GetRegions: TList<string>;
    procedure SetRegions(const Value: TList<string>);
    function GetKeepRegions: Boolean;
    procedure SetKeepRegions(const Value: Boolean);
  strict protected
    function Obj: TExclude;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBuckets: Boolean;
    function IsSetRegions: Boolean;
    property Buckets: TList<string> read GetBuckets write SetBuckets;
    property KeepBuckets: Boolean read GetKeepBuckets write SetKeepBuckets;
    property Regions: TList<string> read GetRegions write SetRegions;
    property KeepRegions: Boolean read GetKeepRegions write SetKeepRegions;
  end;
  
implementation

{ TExclude }

constructor TExclude.Create;
begin
  inherited;
  FBuckets := TList<string>.Create;
  FRegions := TList<string>.Create;
end;

destructor TExclude.Destroy;
begin
  Regions := nil;
  Buckets := nil;
  inherited;
end;

function TExclude.Obj: TExclude;
begin
  Result := Self;
end;

function TExclude.GetBuckets: TList<string>;
begin
  Result := FBuckets;
end;

procedure TExclude.SetBuckets(const Value: TList<string>);
begin
  if FBuckets <> Value then
  begin
    if not KeepBuckets then
      FBuckets.Free;
    FBuckets := Value;
  end;
end;

function TExclude.GetKeepBuckets: Boolean;
begin
  Result := FKeepBuckets;
end;

procedure TExclude.SetKeepBuckets(const Value: Boolean);
begin
  FKeepBuckets := Value;
end;

function TExclude.IsSetBuckets: Boolean;
begin
  Result := (FBuckets <> nil) and (FBuckets.Count > 0);
end;

function TExclude.GetRegions: TList<string>;
begin
  Result := FRegions;
end;

procedure TExclude.SetRegions(const Value: TList<string>);
begin
  if FRegions <> Value then
  begin
    if not KeepRegions then
      FRegions.Free;
    FRegions := Value;
  end;
end;

function TExclude.GetKeepRegions: Boolean;
begin
  Result := FKeepRegions;
end;

procedure TExclude.SetKeepRegions(const Value: Boolean);
begin
  FKeepRegions := Value;
end;

function TExclude.IsSetRegions: Boolean;
begin
  Result := (FRegions <> nil) and (FRegions.Count > 0);
end;

end.
