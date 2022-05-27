unit AWS.Rekognition.Model.UpdateStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.StreamProcessorSettingsForUpdate;

type
  TUpdateStreamProcessorRequest = class;
  
  IUpdateStreamProcessorRequest = interface
    function GetDataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference;
    procedure SetDataSharingPreferenceForUpdate(const Value: TStreamProcessorDataSharingPreference);
    function GetKeepDataSharingPreferenceForUpdate: Boolean;
    procedure SetKeepDataSharingPreferenceForUpdate(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParametersToDelete: TList<string>;
    procedure SetParametersToDelete(const Value: TList<string>);
    function GetKeepParametersToDelete: Boolean;
    procedure SetKeepParametersToDelete(const Value: Boolean);
    function GetRegionsOfInterestForUpdate: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterestForUpdate(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterestForUpdate: Boolean;
    procedure SetKeepRegionsOfInterestForUpdate(const Value: Boolean);
    function GetSettingsForUpdate: TStreamProcessorSettingsForUpdate;
    procedure SetSettingsForUpdate(const Value: TStreamProcessorSettingsForUpdate);
    function GetKeepSettingsForUpdate: Boolean;
    procedure SetKeepSettingsForUpdate(const Value: Boolean);
    function Obj: TUpdateStreamProcessorRequest;
    function IsSetDataSharingPreferenceForUpdate: Boolean;
    function IsSetName: Boolean;
    function IsSetParametersToDelete: Boolean;
    function IsSetRegionsOfInterestForUpdate: Boolean;
    function IsSetSettingsForUpdate: Boolean;
    property DataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference read GetDataSharingPreferenceForUpdate write SetDataSharingPreferenceForUpdate;
    property KeepDataSharingPreferenceForUpdate: Boolean read GetKeepDataSharingPreferenceForUpdate write SetKeepDataSharingPreferenceForUpdate;
    property Name: string read GetName write SetName;
    property ParametersToDelete: TList<string> read GetParametersToDelete write SetParametersToDelete;
    property KeepParametersToDelete: Boolean read GetKeepParametersToDelete write SetKeepParametersToDelete;
    property RegionsOfInterestForUpdate: TObjectList<TRegionOfInterest> read GetRegionsOfInterestForUpdate write SetRegionsOfInterestForUpdate;
    property KeepRegionsOfInterestForUpdate: Boolean read GetKeepRegionsOfInterestForUpdate write SetKeepRegionsOfInterestForUpdate;
    property SettingsForUpdate: TStreamProcessorSettingsForUpdate read GetSettingsForUpdate write SetSettingsForUpdate;
    property KeepSettingsForUpdate: Boolean read GetKeepSettingsForUpdate write SetKeepSettingsForUpdate;
  end;
  
  TUpdateStreamProcessorRequest = class(TAmazonRekognitionRequest, IUpdateStreamProcessorRequest)
  strict private
    FDataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference;
    FKeepDataSharingPreferenceForUpdate: Boolean;
    FName: Nullable<string>;
    FParametersToDelete: TList<string>;
    FKeepParametersToDelete: Boolean;
    FRegionsOfInterestForUpdate: TObjectList<TRegionOfInterest>;
    FKeepRegionsOfInterestForUpdate: Boolean;
    FSettingsForUpdate: TStreamProcessorSettingsForUpdate;
    FKeepSettingsForUpdate: Boolean;
    function GetDataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference;
    procedure SetDataSharingPreferenceForUpdate(const Value: TStreamProcessorDataSharingPreference);
    function GetKeepDataSharingPreferenceForUpdate: Boolean;
    procedure SetKeepDataSharingPreferenceForUpdate(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParametersToDelete: TList<string>;
    procedure SetParametersToDelete(const Value: TList<string>);
    function GetKeepParametersToDelete: Boolean;
    procedure SetKeepParametersToDelete(const Value: Boolean);
    function GetRegionsOfInterestForUpdate: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterestForUpdate(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterestForUpdate: Boolean;
    procedure SetKeepRegionsOfInterestForUpdate(const Value: Boolean);
    function GetSettingsForUpdate: TStreamProcessorSettingsForUpdate;
    procedure SetSettingsForUpdate(const Value: TStreamProcessorSettingsForUpdate);
    function GetKeepSettingsForUpdate: Boolean;
    procedure SetKeepSettingsForUpdate(const Value: Boolean);
  strict protected
    function Obj: TUpdateStreamProcessorRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDataSharingPreferenceForUpdate: Boolean;
    function IsSetName: Boolean;
    function IsSetParametersToDelete: Boolean;
    function IsSetRegionsOfInterestForUpdate: Boolean;
    function IsSetSettingsForUpdate: Boolean;
    property DataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference read GetDataSharingPreferenceForUpdate write SetDataSharingPreferenceForUpdate;
    property KeepDataSharingPreferenceForUpdate: Boolean read GetKeepDataSharingPreferenceForUpdate write SetKeepDataSharingPreferenceForUpdate;
    property Name: string read GetName write SetName;
    property ParametersToDelete: TList<string> read GetParametersToDelete write SetParametersToDelete;
    property KeepParametersToDelete: Boolean read GetKeepParametersToDelete write SetKeepParametersToDelete;
    property RegionsOfInterestForUpdate: TObjectList<TRegionOfInterest> read GetRegionsOfInterestForUpdate write SetRegionsOfInterestForUpdate;
    property KeepRegionsOfInterestForUpdate: Boolean read GetKeepRegionsOfInterestForUpdate write SetKeepRegionsOfInterestForUpdate;
    property SettingsForUpdate: TStreamProcessorSettingsForUpdate read GetSettingsForUpdate write SetSettingsForUpdate;
    property KeepSettingsForUpdate: Boolean read GetKeepSettingsForUpdate write SetKeepSettingsForUpdate;
  end;
  
implementation

{ TUpdateStreamProcessorRequest }

constructor TUpdateStreamProcessorRequest.Create;
begin
  inherited;
  FParametersToDelete := TList<string>.Create;
  FRegionsOfInterestForUpdate := TObjectList<TRegionOfInterest>.Create;
end;

destructor TUpdateStreamProcessorRequest.Destroy;
begin
  SettingsForUpdate := nil;
  RegionsOfInterestForUpdate := nil;
  ParametersToDelete := nil;
  DataSharingPreferenceForUpdate := nil;
  inherited;
end;

function TUpdateStreamProcessorRequest.Obj: TUpdateStreamProcessorRequest;
begin
  Result := Self;
end;

function TUpdateStreamProcessorRequest.GetDataSharingPreferenceForUpdate: TStreamProcessorDataSharingPreference;
begin
  Result := FDataSharingPreferenceForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetDataSharingPreferenceForUpdate(const Value: TStreamProcessorDataSharingPreference);
begin
  if FDataSharingPreferenceForUpdate <> Value then
  begin
    if not KeepDataSharingPreferenceForUpdate then
      FDataSharingPreferenceForUpdate.Free;
    FDataSharingPreferenceForUpdate := Value;
  end;
end;

function TUpdateStreamProcessorRequest.GetKeepDataSharingPreferenceForUpdate: Boolean;
begin
  Result := FKeepDataSharingPreferenceForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetKeepDataSharingPreferenceForUpdate(const Value: Boolean);
begin
  FKeepDataSharingPreferenceForUpdate := Value;
end;

function TUpdateStreamProcessorRequest.IsSetDataSharingPreferenceForUpdate: Boolean;
begin
  Result := FDataSharingPreferenceForUpdate <> nil;
end;

function TUpdateStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateStreamProcessorRequest.GetParametersToDelete: TList<string>;
begin
  Result := FParametersToDelete;
end;

procedure TUpdateStreamProcessorRequest.SetParametersToDelete(const Value: TList<string>);
begin
  if FParametersToDelete <> Value then
  begin
    if not KeepParametersToDelete then
      FParametersToDelete.Free;
    FParametersToDelete := Value;
  end;
end;

function TUpdateStreamProcessorRequest.GetKeepParametersToDelete: Boolean;
begin
  Result := FKeepParametersToDelete;
end;

procedure TUpdateStreamProcessorRequest.SetKeepParametersToDelete(const Value: Boolean);
begin
  FKeepParametersToDelete := Value;
end;

function TUpdateStreamProcessorRequest.IsSetParametersToDelete: Boolean;
begin
  Result := (FParametersToDelete <> nil) and (FParametersToDelete.Count > 0);
end;

function TUpdateStreamProcessorRequest.GetRegionsOfInterestForUpdate: TObjectList<TRegionOfInterest>;
begin
  Result := FRegionsOfInterestForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetRegionsOfInterestForUpdate(const Value: TObjectList<TRegionOfInterest>);
begin
  if FRegionsOfInterestForUpdate <> Value then
  begin
    if not KeepRegionsOfInterestForUpdate then
      FRegionsOfInterestForUpdate.Free;
    FRegionsOfInterestForUpdate := Value;
  end;
end;

function TUpdateStreamProcessorRequest.GetKeepRegionsOfInterestForUpdate: Boolean;
begin
  Result := FKeepRegionsOfInterestForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetKeepRegionsOfInterestForUpdate(const Value: Boolean);
begin
  FKeepRegionsOfInterestForUpdate := Value;
end;

function TUpdateStreamProcessorRequest.IsSetRegionsOfInterestForUpdate: Boolean;
begin
  Result := (FRegionsOfInterestForUpdate <> nil) and (FRegionsOfInterestForUpdate.Count > 0);
end;

function TUpdateStreamProcessorRequest.GetSettingsForUpdate: TStreamProcessorSettingsForUpdate;
begin
  Result := FSettingsForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetSettingsForUpdate(const Value: TStreamProcessorSettingsForUpdate);
begin
  if FSettingsForUpdate <> Value then
  begin
    if not KeepSettingsForUpdate then
      FSettingsForUpdate.Free;
    FSettingsForUpdate := Value;
  end;
end;

function TUpdateStreamProcessorRequest.GetKeepSettingsForUpdate: Boolean;
begin
  Result := FKeepSettingsForUpdate;
end;

procedure TUpdateStreamProcessorRequest.SetKeepSettingsForUpdate(const Value: Boolean);
begin
  FKeepSettingsForUpdate := Value;
end;

function TUpdateStreamProcessorRequest.IsSetSettingsForUpdate: Boolean;
begin
  Result := FSettingsForUpdate <> nil;
end;

end.
