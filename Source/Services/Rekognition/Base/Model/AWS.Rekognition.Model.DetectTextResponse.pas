unit AWS.Rekognition.Model.DetectTextResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.TextDetection;

type
  TDetectTextResponse = class;
  
  IDetectTextResponse = interface(IAmazonWebServiceResponse)
    function GetTextDetections: TObjectList<TTextDetection>;
    procedure SetTextDetections(const Value: TObjectList<TTextDetection>);
    function GetKeepTextDetections: Boolean;
    procedure SetKeepTextDetections(const Value: Boolean);
    function GetTextModelVersion: string;
    procedure SetTextModelVersion(const Value: string);
    function Obj: TDetectTextResponse;
    function IsSetTextDetections: Boolean;
    function IsSetTextModelVersion: Boolean;
    property TextDetections: TObjectList<TTextDetection> read GetTextDetections write SetTextDetections;
    property KeepTextDetections: Boolean read GetKeepTextDetections write SetKeepTextDetections;
    property TextModelVersion: string read GetTextModelVersion write SetTextModelVersion;
  end;
  
  TDetectTextResponse = class(TAmazonWebServiceResponse, IDetectTextResponse)
  strict private
    FTextDetections: TObjectList<TTextDetection>;
    FKeepTextDetections: Boolean;
    FTextModelVersion: Nullable<string>;
    function GetTextDetections: TObjectList<TTextDetection>;
    procedure SetTextDetections(const Value: TObjectList<TTextDetection>);
    function GetKeepTextDetections: Boolean;
    procedure SetKeepTextDetections(const Value: Boolean);
    function GetTextModelVersion: string;
    procedure SetTextModelVersion(const Value: string);
  strict protected
    function Obj: TDetectTextResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTextDetections: Boolean;
    function IsSetTextModelVersion: Boolean;
    property TextDetections: TObjectList<TTextDetection> read GetTextDetections write SetTextDetections;
    property KeepTextDetections: Boolean read GetKeepTextDetections write SetKeepTextDetections;
    property TextModelVersion: string read GetTextModelVersion write SetTextModelVersion;
  end;
  
implementation

{ TDetectTextResponse }

constructor TDetectTextResponse.Create;
begin
  inherited;
  FTextDetections := TObjectList<TTextDetection>.Create;
end;

destructor TDetectTextResponse.Destroy;
begin
  TextDetections := nil;
  inherited;
end;

function TDetectTextResponse.Obj: TDetectTextResponse;
begin
  Result := Self;
end;

function TDetectTextResponse.GetTextDetections: TObjectList<TTextDetection>;
begin
  Result := FTextDetections;
end;

procedure TDetectTextResponse.SetTextDetections(const Value: TObjectList<TTextDetection>);
begin
  if FTextDetections <> Value then
  begin
    if not KeepTextDetections then
      FTextDetections.Free;
    FTextDetections := Value;
  end;
end;

function TDetectTextResponse.GetKeepTextDetections: Boolean;
begin
  Result := FKeepTextDetections;
end;

procedure TDetectTextResponse.SetKeepTextDetections(const Value: Boolean);
begin
  FKeepTextDetections := Value;
end;

function TDetectTextResponse.IsSetTextDetections: Boolean;
begin
  Result := (FTextDetections <> nil) and (FTextDetections.Count > 0);
end;

function TDetectTextResponse.GetTextModelVersion: string;
begin
  Result := FTextModelVersion.ValueOrDefault;
end;

procedure TDetectTextResponse.SetTextModelVersion(const Value: string);
begin
  FTextModelVersion := Value;
end;

function TDetectTextResponse.IsSetTextModelVersion: Boolean;
begin
  Result := FTextModelVersion.HasValue;
end;

end.
