unit AWS.Rekognition.Model.ListCollectionsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TListCollectionsResponse = class;
  
  IListCollectionsResponse = interface(IAmazonWebServiceResponse)
    function GetCollectionIds: TList<string>;
    procedure SetCollectionIds(const Value: TList<string>);
    function GetKeepCollectionIds: Boolean;
    procedure SetKeepCollectionIds(const Value: Boolean);
    function GetFaceModelVersions: TList<string>;
    procedure SetFaceModelVersions(const Value: TList<string>);
    function GetKeepFaceModelVersions: Boolean;
    procedure SetKeepFaceModelVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCollectionsResponse;
    function IsSetCollectionIds: Boolean;
    function IsSetFaceModelVersions: Boolean;
    function IsSetNextToken: Boolean;
    property CollectionIds: TList<string> read GetCollectionIds write SetCollectionIds;
    property KeepCollectionIds: Boolean read GetKeepCollectionIds write SetKeepCollectionIds;
    property FaceModelVersions: TList<string> read GetFaceModelVersions write SetFaceModelVersions;
    property KeepFaceModelVersions: Boolean read GetKeepFaceModelVersions write SetKeepFaceModelVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCollectionsResponse = class(TAmazonWebServiceResponse, IListCollectionsResponse)
  strict private
    FCollectionIds: TList<string>;
    FKeepCollectionIds: Boolean;
    FFaceModelVersions: TList<string>;
    FKeepFaceModelVersions: Boolean;
    FNextToken: Nullable<string>;
    function GetCollectionIds: TList<string>;
    procedure SetCollectionIds(const Value: TList<string>);
    function GetKeepCollectionIds: Boolean;
    procedure SetKeepCollectionIds(const Value: Boolean);
    function GetFaceModelVersions: TList<string>;
    procedure SetFaceModelVersions(const Value: TList<string>);
    function GetKeepFaceModelVersions: Boolean;
    procedure SetKeepFaceModelVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCollectionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCollectionIds: Boolean;
    function IsSetFaceModelVersions: Boolean;
    function IsSetNextToken: Boolean;
    property CollectionIds: TList<string> read GetCollectionIds write SetCollectionIds;
    property KeepCollectionIds: Boolean read GetKeepCollectionIds write SetKeepCollectionIds;
    property FaceModelVersions: TList<string> read GetFaceModelVersions write SetFaceModelVersions;
    property KeepFaceModelVersions: Boolean read GetKeepFaceModelVersions write SetKeepFaceModelVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCollectionsResponse }

constructor TListCollectionsResponse.Create;
begin
  inherited;
  FCollectionIds := TList<string>.Create;
  FFaceModelVersions := TList<string>.Create;
end;

destructor TListCollectionsResponse.Destroy;
begin
  FaceModelVersions := nil;
  CollectionIds := nil;
  inherited;
end;

function TListCollectionsResponse.Obj: TListCollectionsResponse;
begin
  Result := Self;
end;

function TListCollectionsResponse.GetCollectionIds: TList<string>;
begin
  Result := FCollectionIds;
end;

procedure TListCollectionsResponse.SetCollectionIds(const Value: TList<string>);
begin
  if FCollectionIds <> Value then
  begin
    if not KeepCollectionIds then
      FCollectionIds.Free;
    FCollectionIds := Value;
  end;
end;

function TListCollectionsResponse.GetKeepCollectionIds: Boolean;
begin
  Result := FKeepCollectionIds;
end;

procedure TListCollectionsResponse.SetKeepCollectionIds(const Value: Boolean);
begin
  FKeepCollectionIds := Value;
end;

function TListCollectionsResponse.IsSetCollectionIds: Boolean;
begin
  Result := (FCollectionIds <> nil) and (FCollectionIds.Count > 0);
end;

function TListCollectionsResponse.GetFaceModelVersions: TList<string>;
begin
  Result := FFaceModelVersions;
end;

procedure TListCollectionsResponse.SetFaceModelVersions(const Value: TList<string>);
begin
  if FFaceModelVersions <> Value then
  begin
    if not KeepFaceModelVersions then
      FFaceModelVersions.Free;
    FFaceModelVersions := Value;
  end;
end;

function TListCollectionsResponse.GetKeepFaceModelVersions: Boolean;
begin
  Result := FKeepFaceModelVersions;
end;

procedure TListCollectionsResponse.SetKeepFaceModelVersions(const Value: Boolean);
begin
  FKeepFaceModelVersions := Value;
end;

function TListCollectionsResponse.IsSetFaceModelVersions: Boolean;
begin
  Result := (FFaceModelVersions <> nil) and (FFaceModelVersions.Count > 0);
end;

function TListCollectionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCollectionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCollectionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
