unit AWS.S3.Model.GetBucketTaggingResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.Tag;

type
  TGetBucketTaggingResponse = class;
  
  IGetBucketTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function Obj: TGetBucketTaggingResponse;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
  TGetBucketTaggingResponse = class(TAmazonWebServiceResponse, IGetBucketTaggingResponse)
  strict private
    FTagSet: TObjectList<TTag>;
    FKeepTagSet: Boolean;
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
  strict protected
    function Obj: TGetBucketTaggingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
implementation

{ TGetBucketTaggingResponse }

constructor TGetBucketTaggingResponse.Create;
begin
  inherited;
  FTagSet := TObjectList<TTag>.Create;
end;

destructor TGetBucketTaggingResponse.Destroy;
begin
  TagSet := nil;
  inherited;
end;

function TGetBucketTaggingResponse.Obj: TGetBucketTaggingResponse;
begin
  Result := Self;
end;

function TGetBucketTaggingResponse.GetTagSet: TObjectList<TTag>;
begin
  Result := FTagSet;
end;

procedure TGetBucketTaggingResponse.SetTagSet(const Value: TObjectList<TTag>);
begin
  if FTagSet <> Value then
  begin
    if not KeepTagSet then
      FTagSet.Free;
    FTagSet := Value;
  end;
end;

function TGetBucketTaggingResponse.GetKeepTagSet: Boolean;
begin
  Result := FKeepTagSet;
end;

procedure TGetBucketTaggingResponse.SetKeepTagSet(const Value: Boolean);
begin
  FKeepTagSet := Value;
end;

function TGetBucketTaggingResponse.IsSetTagSet: Boolean;
begin
  Result := (FTagSet <> nil) and (FTagSet.Count > 0);
end;

end.
