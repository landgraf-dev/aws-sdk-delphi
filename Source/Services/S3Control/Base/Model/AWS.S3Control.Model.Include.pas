unit AWS.S3Control.Model.Include;

interface

uses
  System.Generics.Collections;

type
  TInclude = class;
  
  IInclude = interface
    function GetBuckets: TList<string>;
    procedure SetBuckets(const Value: TList<string>);
    function GetKeepBuckets: Boolean;
    procedure SetKeepBuckets(const Value: Boolean);
    function GetRegions: TList<string>;
    procedure SetRegions(const Value: TList<string>);
    function GetKeepRegions: Boolean;
    procedure SetKeepRegions(const Value: Boolean);
    function Obj: TInclude;
    function IsSetBuckets: Boolean;
    function IsSetRegions: Boolean;
    property Buckets: TList<string> read GetBuckets write SetBuckets;
    property KeepBuckets: Boolean read GetKeepBuckets write SetKeepBuckets;
    property Regions: TList<string> read GetRegions write SetRegions;
    property KeepRegions: Boolean read GetKeepRegions write SetKeepRegions;
  end;
  
  TInclude = class
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
    function Obj: TInclude;
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

{ TInclude }

constructor TInclude.Create;
begin
  inherited;
  FBuckets := TList<string>.Create;
  FRegions := TList<string>.Create;
end;

destructor TInclude.Destroy;
begin
  Regions := nil;
  Buckets := nil;
  inherited;
end;

function TInclude.Obj: TInclude;
begin
  Result := Self;
end;

function TInclude.GetBuckets: TList<string>;
begin
  Result := FBuckets;
end;

procedure TInclude.SetBuckets(const Value: TList<string>);
begin
  if FBuckets <> Value then
  begin
    if not KeepBuckets then
      FBuckets.Free;
    FBuckets := Value;
  end;
end;

function TInclude.GetKeepBuckets: Boolean;
begin
  Result := FKeepBuckets;
end;

procedure TInclude.SetKeepBuckets(const Value: Boolean);
begin
  FKeepBuckets := Value;
end;

function TInclude.IsSetBuckets: Boolean;
begin
  Result := (FBuckets <> nil) and (FBuckets.Count > 0);
end;

function TInclude.GetRegions: TList<string>;
begin
  Result := FRegions;
end;

procedure TInclude.SetRegions(const Value: TList<string>);
begin
  if FRegions <> Value then
  begin
    if not KeepRegions then
      FRegions.Free;
    FRegions := Value;
  end;
end;

function TInclude.GetKeepRegions: Boolean;
begin
  Result := FKeepRegions;
end;

procedure TInclude.SetKeepRegions(const Value: Boolean);
begin
  FKeepRegions := Value;
end;

function TInclude.IsSetRegions: Boolean;
begin
  Result := (FRegions <> nil) and (FRegions.Count > 0);
end;

end.
