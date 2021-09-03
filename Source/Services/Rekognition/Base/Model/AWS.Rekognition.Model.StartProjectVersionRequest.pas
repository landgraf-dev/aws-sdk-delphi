unit AWS.Rekognition.Model.StartProjectVersionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TStartProjectVersionRequest = class;
  
  IStartProjectVersionRequest = interface
    function GetMinInferenceUnits: Integer;
    procedure SetMinInferenceUnits(const Value: Integer);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function Obj: TStartProjectVersionRequest;
    function IsSetMinInferenceUnits: Boolean;
    function IsSetProjectVersionArn: Boolean;
    property MinInferenceUnits: Integer read GetMinInferenceUnits write SetMinInferenceUnits;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
  TStartProjectVersionRequest = class(TAmazonRekognitionRequest, IStartProjectVersionRequest)
  strict private
    FMinInferenceUnits: Nullable<Integer>;
    FProjectVersionArn: Nullable<string>;
    function GetMinInferenceUnits: Integer;
    procedure SetMinInferenceUnits(const Value: Integer);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
  strict protected
    function Obj: TStartProjectVersionRequest;
  public
    function IsSetMinInferenceUnits: Boolean;
    function IsSetProjectVersionArn: Boolean;
    property MinInferenceUnits: Integer read GetMinInferenceUnits write SetMinInferenceUnits;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
implementation

{ TStartProjectVersionRequest }

function TStartProjectVersionRequest.Obj: TStartProjectVersionRequest;
begin
  Result := Self;
end;

function TStartProjectVersionRequest.GetMinInferenceUnits: Integer;
begin
  Result := FMinInferenceUnits.ValueOrDefault;
end;

procedure TStartProjectVersionRequest.SetMinInferenceUnits(const Value: Integer);
begin
  FMinInferenceUnits := Value;
end;

function TStartProjectVersionRequest.IsSetMinInferenceUnits: Boolean;
begin
  Result := FMinInferenceUnits.HasValue;
end;

function TStartProjectVersionRequest.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TStartProjectVersionRequest.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TStartProjectVersionRequest.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

end.
