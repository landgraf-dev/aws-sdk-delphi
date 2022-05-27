unit AWS.Rekognition.Model.StreamProcessorSettings;

interface

uses
  AWS.Rekognition.Model.ConnectedHomeSettings, 
  AWS.Rekognition.Model.FaceSearchSettings;

type
  TStreamProcessorSettings = class;
  
  IStreamProcessorSettings = interface
    function GetConnectedHome: TConnectedHomeSettings;
    procedure SetConnectedHome(const Value: TConnectedHomeSettings);
    function GetKeepConnectedHome: Boolean;
    procedure SetKeepConnectedHome(const Value: Boolean);
    function GetFaceSearch: TFaceSearchSettings;
    procedure SetFaceSearch(const Value: TFaceSearchSettings);
    function GetKeepFaceSearch: Boolean;
    procedure SetKeepFaceSearch(const Value: Boolean);
    function Obj: TStreamProcessorSettings;
    function IsSetConnectedHome: Boolean;
    function IsSetFaceSearch: Boolean;
    property ConnectedHome: TConnectedHomeSettings read GetConnectedHome write SetConnectedHome;
    property KeepConnectedHome: Boolean read GetKeepConnectedHome write SetKeepConnectedHome;
    property FaceSearch: TFaceSearchSettings read GetFaceSearch write SetFaceSearch;
    property KeepFaceSearch: Boolean read GetKeepFaceSearch write SetKeepFaceSearch;
  end;
  
  TStreamProcessorSettings = class
  strict private
    FConnectedHome: TConnectedHomeSettings;
    FKeepConnectedHome: Boolean;
    FFaceSearch: TFaceSearchSettings;
    FKeepFaceSearch: Boolean;
    function GetConnectedHome: TConnectedHomeSettings;
    procedure SetConnectedHome(const Value: TConnectedHomeSettings);
    function GetKeepConnectedHome: Boolean;
    procedure SetKeepConnectedHome(const Value: Boolean);
    function GetFaceSearch: TFaceSearchSettings;
    procedure SetFaceSearch(const Value: TFaceSearchSettings);
    function GetKeepFaceSearch: Boolean;
    procedure SetKeepFaceSearch(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorSettings;
  public
    destructor Destroy; override;
    function IsSetConnectedHome: Boolean;
    function IsSetFaceSearch: Boolean;
    property ConnectedHome: TConnectedHomeSettings read GetConnectedHome write SetConnectedHome;
    property KeepConnectedHome: Boolean read GetKeepConnectedHome write SetKeepConnectedHome;
    property FaceSearch: TFaceSearchSettings read GetFaceSearch write SetFaceSearch;
    property KeepFaceSearch: Boolean read GetKeepFaceSearch write SetKeepFaceSearch;
  end;
  
implementation

{ TStreamProcessorSettings }

destructor TStreamProcessorSettings.Destroy;
begin
  FaceSearch := nil;
  ConnectedHome := nil;
  inherited;
end;

function TStreamProcessorSettings.Obj: TStreamProcessorSettings;
begin
  Result := Self;
end;

function TStreamProcessorSettings.GetConnectedHome: TConnectedHomeSettings;
begin
  Result := FConnectedHome;
end;

procedure TStreamProcessorSettings.SetConnectedHome(const Value: TConnectedHomeSettings);
begin
  if FConnectedHome <> Value then
  begin
    if not KeepConnectedHome then
      FConnectedHome.Free;
    FConnectedHome := Value;
  end;
end;

function TStreamProcessorSettings.GetKeepConnectedHome: Boolean;
begin
  Result := FKeepConnectedHome;
end;

procedure TStreamProcessorSettings.SetKeepConnectedHome(const Value: Boolean);
begin
  FKeepConnectedHome := Value;
end;

function TStreamProcessorSettings.IsSetConnectedHome: Boolean;
begin
  Result := FConnectedHome <> nil;
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
