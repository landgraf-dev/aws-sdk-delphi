unit AWS.Rekognition.Model.DeleteProjectRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TDeleteProjectRequest = class;
  
  IDeleteProjectRequest = interface
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function Obj: TDeleteProjectRequest;
    function IsSetProjectArn: Boolean;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
  TDeleteProjectRequest = class(TAmazonRekognitionRequest, IDeleteProjectRequest)
  strict private
    FProjectArn: Nullable<string>;
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
  strict protected
    function Obj: TDeleteProjectRequest;
  public
    function IsSetProjectArn: Boolean;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
  end;
  
implementation

{ TDeleteProjectRequest }

function TDeleteProjectRequest.Obj: TDeleteProjectRequest;
begin
  Result := Self;
end;

function TDeleteProjectRequest.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TDeleteProjectRequest.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TDeleteProjectRequest.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

end.
