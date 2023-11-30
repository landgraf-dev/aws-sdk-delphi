unit AWS.Rekognition.Model.DeleteFacesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TDeleteFacesRequest = class;
  
  IDeleteFacesRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceIds: TList<string>;
    procedure SetFaceIds(const Value: TList<string>);
    function GetKeepFaceIds: Boolean;
    procedure SetKeepFaceIds(const Value: Boolean);
    function Obj: TDeleteFacesRequest;
    function IsSetCollectionId: Boolean;
    function IsSetFaceIds: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceIds: TList<string> read GetFaceIds write SetFaceIds;
    property KeepFaceIds: Boolean read GetKeepFaceIds write SetKeepFaceIds;
  end;
  
  TDeleteFacesRequest = class(TAmazonRekognitionRequest, IDeleteFacesRequest)
  strict private
    FCollectionId: Nullable<string>;
    FFaceIds: TList<string>;
    FKeepFaceIds: Boolean;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceIds: TList<string>;
    procedure SetFaceIds(const Value: TList<string>);
    function GetKeepFaceIds: Boolean;
    procedure SetKeepFaceIds(const Value: Boolean);
  strict protected
    function Obj: TDeleteFacesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCollectionId: Boolean;
    function IsSetFaceIds: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceIds: TList<string> read GetFaceIds write SetFaceIds;
    property KeepFaceIds: Boolean read GetKeepFaceIds write SetKeepFaceIds;
  end;
  
implementation

{ TDeleteFacesRequest }

constructor TDeleteFacesRequest.Create;
begin
  inherited;
  FFaceIds := TList<string>.Create;
end;

destructor TDeleteFacesRequest.Destroy;
begin
  FaceIds := nil;
  inherited;
end;

function TDeleteFacesRequest.Obj: TDeleteFacesRequest;
begin
  Result := Self;
end;

function TDeleteFacesRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TDeleteFacesRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TDeleteFacesRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TDeleteFacesRequest.GetFaceIds: TList<string>;
begin
  Result := FFaceIds;
end;

procedure TDeleteFacesRequest.SetFaceIds(const Value: TList<string>);
begin
  if FFaceIds <> Value then
  begin
    if not KeepFaceIds then
      FFaceIds.Free;
    FFaceIds := Value;
  end;
end;

function TDeleteFacesRequest.GetKeepFaceIds: Boolean;
begin
  Result := FKeepFaceIds;
end;

procedure TDeleteFacesRequest.SetKeepFaceIds(const Value: Boolean);
begin
  FKeepFaceIds := Value;
end;

function TDeleteFacesRequest.IsSetFaceIds: Boolean;
begin
  Result := (FFaceIds <> nil) and (FFaceIds.Count > 0);
end;

end.
