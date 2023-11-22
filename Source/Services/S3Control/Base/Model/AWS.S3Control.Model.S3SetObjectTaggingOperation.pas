unit AWS.S3Control.Model.S3SetObjectTaggingOperation;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.S3Tag;

type
  TS3SetObjectTaggingOperation = class;
  
  IS3SetObjectTaggingOperation = interface
    function GetTagSet: TObjectList<TS3Tag>;
    procedure SetTagSet(const Value: TObjectList<TS3Tag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function Obj: TS3SetObjectTaggingOperation;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TS3Tag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
  TS3SetObjectTaggingOperation = class
  strict private
    FTagSet: TObjectList<TS3Tag>;
    FKeepTagSet: Boolean;
    function GetTagSet: TObjectList<TS3Tag>;
    procedure SetTagSet(const Value: TObjectList<TS3Tag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
  strict protected
    function Obj: TS3SetObjectTaggingOperation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TS3Tag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
implementation

{ TS3SetObjectTaggingOperation }

constructor TS3SetObjectTaggingOperation.Create;
begin
  inherited;
  FTagSet := TObjectList<TS3Tag>.Create;
end;

destructor TS3SetObjectTaggingOperation.Destroy;
begin
  TagSet := nil;
  inherited;
end;

function TS3SetObjectTaggingOperation.Obj: TS3SetObjectTaggingOperation;
begin
  Result := Self;
end;

function TS3SetObjectTaggingOperation.GetTagSet: TObjectList<TS3Tag>;
begin
  Result := FTagSet;
end;

procedure TS3SetObjectTaggingOperation.SetTagSet(const Value: TObjectList<TS3Tag>);
begin
  if FTagSet <> Value then
  begin
    if not KeepTagSet then
      FTagSet.Free;
    FTagSet := Value;
  end;
end;

function TS3SetObjectTaggingOperation.GetKeepTagSet: Boolean;
begin
  Result := FKeepTagSet;
end;

procedure TS3SetObjectTaggingOperation.SetKeepTagSet(const Value: Boolean);
begin
  FKeepTagSet := Value;
end;

function TS3SetObjectTaggingOperation.IsSetTagSet: Boolean;
begin
  Result := (FTagSet <> nil) and (FTagSet.Count > 0);
end;

end.
