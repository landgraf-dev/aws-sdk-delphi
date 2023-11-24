unit AWS.S3.Model.GetObjectTaggingResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Model.Tag;

type
  TGetObjectTaggingResponse = class;
  
  IGetObjectTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TGetObjectTaggingResponse;
    function IsSetTagSet: Boolean;
    function IsSetVersionId: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TGetObjectTaggingResponse = class(TAmazonWebServiceResponse, IGetObjectTaggingResponse)
  strict private
    FTagSet: TObjectList<TTag>;
    FKeepTagSet: Boolean;
    FVersionId: Nullable<string>;
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TGetObjectTaggingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagSet: Boolean;
    function IsSetVersionId: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TGetObjectTaggingResponse }

constructor TGetObjectTaggingResponse.Create;
begin
  inherited;
  FTagSet := TObjectList<TTag>.Create;
end;

destructor TGetObjectTaggingResponse.Destroy;
begin
  TagSet := nil;
  inherited;
end;

function TGetObjectTaggingResponse.Obj: TGetObjectTaggingResponse;
begin
  Result := Self;
end;

function TGetObjectTaggingResponse.GetTagSet: TObjectList<TTag>;
begin
  Result := FTagSet;
end;

procedure TGetObjectTaggingResponse.SetTagSet(const Value: TObjectList<TTag>);
begin
  if FTagSet <> Value then
  begin
    if not KeepTagSet then
      FTagSet.Free;
    FTagSet := Value;
  end;
end;

function TGetObjectTaggingResponse.GetKeepTagSet: Boolean;
begin
  Result := FKeepTagSet;
end;

procedure TGetObjectTaggingResponse.SetKeepTagSet(const Value: Boolean);
begin
  FKeepTagSet := Value;
end;

function TGetObjectTaggingResponse.IsSetTagSet: Boolean;
begin
  Result := (FTagSet <> nil) and (FTagSet.Count > 0);
end;

function TGetObjectTaggingResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectTaggingResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectTaggingResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
