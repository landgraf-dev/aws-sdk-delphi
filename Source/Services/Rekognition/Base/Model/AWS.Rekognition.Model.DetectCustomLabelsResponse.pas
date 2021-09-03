unit AWS.Rekognition.Model.DetectCustomLabelsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CustomLabel;

type
  TDetectCustomLabelsResponse = class;
  
  IDetectCustomLabelsResponse = interface(IAmazonWebServiceResponse)
    function GetCustomLabels: TObjectList<TCustomLabel>;
    procedure SetCustomLabels(const Value: TObjectList<TCustomLabel>);
    function GetKeepCustomLabels: Boolean;
    procedure SetKeepCustomLabels(const Value: Boolean);
    function Obj: TDetectCustomLabelsResponse;
    function IsSetCustomLabels: Boolean;
    property CustomLabels: TObjectList<TCustomLabel> read GetCustomLabels write SetCustomLabels;
    property KeepCustomLabels: Boolean read GetKeepCustomLabels write SetKeepCustomLabels;
  end;
  
  TDetectCustomLabelsResponse = class(TAmazonWebServiceResponse, IDetectCustomLabelsResponse)
  strict private
    FCustomLabels: TObjectList<TCustomLabel>;
    FKeepCustomLabels: Boolean;
    function GetCustomLabels: TObjectList<TCustomLabel>;
    procedure SetCustomLabels(const Value: TObjectList<TCustomLabel>);
    function GetKeepCustomLabels: Boolean;
    procedure SetKeepCustomLabels(const Value: Boolean);
  strict protected
    function Obj: TDetectCustomLabelsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCustomLabels: Boolean;
    property CustomLabels: TObjectList<TCustomLabel> read GetCustomLabels write SetCustomLabels;
    property KeepCustomLabels: Boolean read GetKeepCustomLabels write SetKeepCustomLabels;
  end;
  
implementation

{ TDetectCustomLabelsResponse }

constructor TDetectCustomLabelsResponse.Create;
begin
  inherited;
  FCustomLabels := TObjectList<TCustomLabel>.Create;
end;

destructor TDetectCustomLabelsResponse.Destroy;
begin
  CustomLabels := nil;
  inherited;
end;

function TDetectCustomLabelsResponse.Obj: TDetectCustomLabelsResponse;
begin
  Result := Self;
end;

function TDetectCustomLabelsResponse.GetCustomLabels: TObjectList<TCustomLabel>;
begin
  Result := FCustomLabels;
end;

procedure TDetectCustomLabelsResponse.SetCustomLabels(const Value: TObjectList<TCustomLabel>);
begin
  if FCustomLabels <> Value then
  begin
    if not KeepCustomLabels then
      FCustomLabels.Free;
    FCustomLabels := Value;
  end;
end;

function TDetectCustomLabelsResponse.GetKeepCustomLabels: Boolean;
begin
  Result := FKeepCustomLabels;
end;

procedure TDetectCustomLabelsResponse.SetKeepCustomLabels(const Value: Boolean);
begin
  FKeepCustomLabels := Value;
end;

function TDetectCustomLabelsResponse.IsSetCustomLabels: Boolean;
begin
  Result := (FCustomLabels <> nil) and (FCustomLabels.Count > 0);
end;

end.
