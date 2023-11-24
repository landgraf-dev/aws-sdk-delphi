unit AWS.S3.Model.Tagging;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TTagging = class;
  
  ITagging = interface
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function Obj: TTagging;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
  TTagging = class
  strict private
    FTagSet: TObjectList<TTag>;
    FKeepTagSet: Boolean;
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
  strict protected
    function Obj: TTagging;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
implementation

{ TTagging }

constructor TTagging.Create;
begin
  inherited;
  FTagSet := TObjectList<TTag>.Create;
end;

destructor TTagging.Destroy;
begin
  TagSet := nil;
  inherited;
end;

function TTagging.Obj: TTagging;
begin
  Result := Self;
end;

function TTagging.GetTagSet: TObjectList<TTag>;
begin
  Result := FTagSet;
end;

procedure TTagging.SetTagSet(const Value: TObjectList<TTag>);
begin
  if FTagSet <> Value then
  begin
    if not KeepTagSet then
      FTagSet.Free;
    FTagSet := Value;
  end;
end;

function TTagging.GetKeepTagSet: Boolean;
begin
  Result := FKeepTagSet;
end;

procedure TTagging.SetKeepTagSet(const Value: Boolean);
begin
  FKeepTagSet := Value;
end;

function TTagging.IsSetTagSet: Boolean;
begin
  Result := (FTagSet <> nil) and (FTagSet.Count > 0);
end;

end.
