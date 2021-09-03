unit AWS.Rekognition.Model.StopProjectVersionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TStopProjectVersionRequest = class;
  
  IStopProjectVersionRequest = interface
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function Obj: TStopProjectVersionRequest;
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
  TStopProjectVersionRequest = class(TAmazonRekognitionRequest, IStopProjectVersionRequest)
  strict private
    FProjectVersionArn: Nullable<string>;
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
  strict protected
    function Obj: TStopProjectVersionRequest;
  public
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
implementation

{ TStopProjectVersionRequest }

function TStopProjectVersionRequest.Obj: TStopProjectVersionRequest;
begin
  Result := Self;
end;

function TStopProjectVersionRequest.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TStopProjectVersionRequest.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TStopProjectVersionRequest.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

end.
