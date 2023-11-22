unit AWS.S3Control.Model.GetBucketTaggingResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.S3Tag;

type
  TGetBucketTaggingResponse = class;
  
  IGetBucketTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetTagSet: TObjectList<TS3Tag>;
    procedure SetTagSet(const Value: TObjectList<TS3Tag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function Obj: TGetBucketTaggingResponse;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TS3Tag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
  TGetBucketTaggingResponse = class(TAmazonWebServiceResponse, IGetBucketTaggingResponse)
  strict private
    FTagSet: TObjectList<TS3Tag>;
    FKeepTagSet: Boolean;
    function GetTagSet: TObjectList<TS3Tag>;
    procedure SetTagSet(const Value: TObjectList<TS3Tag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
  strict protected
    function Obj: TGetBucketTaggingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagSet: Boolean;
    property TagSet: TObjectList<TS3Tag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
implementation

{ TGetBucketTaggingResponse }

constructor TGetBucketTaggingResponse.Create;
begin
  inherited;
  FTagSet := TObjectList<TS3Tag>.Create;
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

function TGetBucketTaggingResponse.GetTagSet: TObjectList<TS3Tag>;
begin
  Result := FTagSet;
end;

procedure TGetBucketTaggingResponse.SetTagSet(const Value: TObjectList<TS3Tag>);
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
