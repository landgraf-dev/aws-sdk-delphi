unit AWS.Rekognition.Model.DeleteFacesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TDeleteFacesResponse = class;
  
  IDeleteFacesResponse = interface(IAmazonWebServiceResponse)
    function GetDeletedFaces: TList<string>;
    procedure SetDeletedFaces(const Value: TList<string>);
    function GetKeepDeletedFaces: Boolean;
    procedure SetKeepDeletedFaces(const Value: Boolean);
    function Obj: TDeleteFacesResponse;
    function IsSetDeletedFaces: Boolean;
    property DeletedFaces: TList<string> read GetDeletedFaces write SetDeletedFaces;
    property KeepDeletedFaces: Boolean read GetKeepDeletedFaces write SetKeepDeletedFaces;
  end;
  
  TDeleteFacesResponse = class(TAmazonWebServiceResponse, IDeleteFacesResponse)
  strict private
    FDeletedFaces: TList<string>;
    FKeepDeletedFaces: Boolean;
    function GetDeletedFaces: TList<string>;
    procedure SetDeletedFaces(const Value: TList<string>);
    function GetKeepDeletedFaces: Boolean;
    procedure SetKeepDeletedFaces(const Value: Boolean);
  strict protected
    function Obj: TDeleteFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDeletedFaces: Boolean;
    property DeletedFaces: TList<string> read GetDeletedFaces write SetDeletedFaces;
    property KeepDeletedFaces: Boolean read GetKeepDeletedFaces write SetKeepDeletedFaces;
  end;
  
implementation

{ TDeleteFacesResponse }

constructor TDeleteFacesResponse.Create;
begin
  inherited;
  FDeletedFaces := TList<string>.Create;
end;

destructor TDeleteFacesResponse.Destroy;
begin
  DeletedFaces := nil;
  inherited;
end;

function TDeleteFacesResponse.Obj: TDeleteFacesResponse;
begin
  Result := Self;
end;

function TDeleteFacesResponse.GetDeletedFaces: TList<string>;
begin
  Result := FDeletedFaces;
end;

procedure TDeleteFacesResponse.SetDeletedFaces(const Value: TList<string>);
begin
  if FDeletedFaces <> Value then
  begin
    if not KeepDeletedFaces then
      FDeletedFaces.Free;
    FDeletedFaces := Value;
  end;
end;

function TDeleteFacesResponse.GetKeepDeletedFaces: Boolean;
begin
  Result := FKeepDeletedFaces;
end;

procedure TDeleteFacesResponse.SetKeepDeletedFaces(const Value: Boolean);
begin
  FKeepDeletedFaces := Value;
end;

function TDeleteFacesResponse.IsSetDeletedFaces: Boolean;
begin
  Result := (FDeletedFaces <> nil) and (FDeletedFaces.Count > 0);
end;

end.
