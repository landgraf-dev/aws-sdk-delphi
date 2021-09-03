unit AWS.Rekognition.Model.DetectLabelsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.LabelTypes, 
  AWS.Rekognition.Enums;

type
  TDetectLabelsResponse = class;
  
  IDetectLabelsResponse = interface(IAmazonWebServiceResponse)
    function GetLabelModelVersion: string;
    procedure SetLabelModelVersion(const Value: string);
    function GetLabels: TObjectList<TLabel>;
    procedure SetLabels(const Value: TObjectList<TLabel>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function Obj: TDetectLabelsResponse;
    function IsSetLabelModelVersion: Boolean;
    function IsSetLabels: Boolean;
    function IsSetOrientationCorrection: Boolean;
    property LabelModelVersion: string read GetLabelModelVersion write SetLabelModelVersion;
    property Labels: TObjectList<TLabel> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
  end;
  
  TDetectLabelsResponse = class(TAmazonWebServiceResponse, IDetectLabelsResponse)
  strict private
    FLabelModelVersion: Nullable<string>;
    FLabels: TObjectList<TLabel>;
    FKeepLabels: Boolean;
    FOrientationCorrection: Nullable<TOrientationCorrection>;
    function GetLabelModelVersion: string;
    procedure SetLabelModelVersion(const Value: string);
    function GetLabels: TObjectList<TLabel>;
    procedure SetLabels(const Value: TObjectList<TLabel>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
  strict protected
    function Obj: TDetectLabelsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLabelModelVersion: Boolean;
    function IsSetLabels: Boolean;
    function IsSetOrientationCorrection: Boolean;
    property LabelModelVersion: string read GetLabelModelVersion write SetLabelModelVersion;
    property Labels: TObjectList<TLabel> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
  end;
  
implementation

{ TDetectLabelsResponse }

constructor TDetectLabelsResponse.Create;
begin
  inherited;
  FLabels := TObjectList<TLabel>.Create;
end;

destructor TDetectLabelsResponse.Destroy;
begin
  Labels := nil;
  inherited;
end;

function TDetectLabelsResponse.Obj: TDetectLabelsResponse;
begin
  Result := Self;
end;

function TDetectLabelsResponse.GetLabelModelVersion: string;
begin
  Result := FLabelModelVersion.ValueOrDefault;
end;

procedure TDetectLabelsResponse.SetLabelModelVersion(const Value: string);
begin
  FLabelModelVersion := Value;
end;

function TDetectLabelsResponse.IsSetLabelModelVersion: Boolean;
begin
  Result := FLabelModelVersion.HasValue;
end;

function TDetectLabelsResponse.GetLabels: TObjectList<TLabel>;
begin
  Result := FLabels;
end;

procedure TDetectLabelsResponse.SetLabels(const Value: TObjectList<TLabel>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TDetectLabelsResponse.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TDetectLabelsResponse.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TDetectLabelsResponse.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TDetectLabelsResponse.GetOrientationCorrection: TOrientationCorrection;
begin
  Result := FOrientationCorrection.ValueOrDefault;
end;

procedure TDetectLabelsResponse.SetOrientationCorrection(const Value: TOrientationCorrection);
begin
  FOrientationCorrection := Value;
end;

function TDetectLabelsResponse.IsSetOrientationCorrection: Boolean;
begin
  Result := FOrientationCorrection.HasValue;
end;

end.
