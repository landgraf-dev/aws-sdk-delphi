unit AWS.Rekognition.Model.StreamProcessorSettings;

interface

uses
  AWS.Rekognition.Model.FaceSearchSettings;

type
  TStreamProcessorSettings = class;
  
  IStreamProcessorSettings = interface
    function GetFaceSearch: TFaceSearchSettings;
    procedure SetFaceSearch(const Value: TFaceSearchSettings);
    function GetKeepFaceSearch: Boolean;
    procedure SetKeepFaceSearch(const Value: Boolean);
    function Obj: TStreamProcessorSettings;
    function IsSetFaceSearch: Boolean;
    property FaceSearch: TFaceSearchSettings read GetFaceSearch write SetFaceSearch;
    property KeepFaceSearch: Boolean read GetKeepFaceSearch write SetKeepFaceSearch;
  end;
  
  TStreamProcessorSettings = class
  strict private
    FFaceSearch: TFaceSearchSettings;
    FKeepFaceSearch: Boolean;
    function GetFaceSearch: TFaceSearchSettings;
    procedure SetFaceSearch(const Value: TFaceSearchSettings);
    function GetKeepFaceSearch: Boolean;
    procedure SetKeepFaceSearch(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorSettings;
  public
    destructor Destroy; override;
    function IsSetFaceSearch: Boolean;
    property FaceSearch: TFaceSearchSettings read GetFaceSearch write SetFaceSearch;
    property KeepFaceSearch: Boolean read GetKeepFaceSearch write SetKeepFaceSearch;
  end;
  
implementation

{ TStreamProcessorSettings }

destructor TStreamProcessorSettings.Destroy;
begin
  FaceSearch := nil;
  inherited;
end;

function TStreamProcessorSettings.Obj: TStreamProcessorSettings;
begin
  Result := Self;
end;

function TStreamProcessorSettings.GetFaceSearch: TFaceSearchSettings;
begin
  Result := FFaceSearch;
end;

procedure TStreamProcessorSettings.SetFaceSearch(const Value: TFaceSearchSettings);
begin
  if FFaceSearch <> Value then
  begin
    if not KeepFaceSearch then
      FFaceSearch.Free;
    FFaceSearch := Value;
  end;
end;

function TStreamProcessorSettings.GetKeepFaceSearch: Boolean;
begin
  Result := FKeepFaceSearch;
end;

procedure TStreamProcessorSettings.SetKeepFaceSearch(const Value: Boolean);
begin
  FKeepFaceSearch := Value;
end;

function TStreamProcessorSettings.IsSetFaceSearch: Boolean;
begin
  Result := FFaceSearch <> nil;
end;

end.
