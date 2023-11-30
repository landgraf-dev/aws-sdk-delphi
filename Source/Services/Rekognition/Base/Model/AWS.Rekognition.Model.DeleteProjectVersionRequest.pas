unit AWS.Rekognition.Model.DeleteProjectVersionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TDeleteProjectVersionRequest = class;
  
  IDeleteProjectVersionRequest = interface
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function Obj: TDeleteProjectVersionRequest;
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
  TDeleteProjectVersionRequest = class(TAmazonRekognitionRequest, IDeleteProjectVersionRequest)
  strict private
    FProjectVersionArn: Nullable<string>;
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
  strict protected
    function Obj: TDeleteProjectVersionRequest;
  public
    function IsSetProjectVersionArn: Boolean;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
implementation

{ TDeleteProjectVersionRequest }

function TDeleteProjectVersionRequest.Obj: TDeleteProjectVersionRequest;
begin
  Result := Self;
end;

function TDeleteProjectVersionRequest.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TDeleteProjectVersionRequest.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TDeleteProjectVersionRequest.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

end.
