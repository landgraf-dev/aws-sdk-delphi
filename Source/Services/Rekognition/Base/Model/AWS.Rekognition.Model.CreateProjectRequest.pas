unit AWS.Rekognition.Model.CreateProjectRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TCreateProjectRequest = class;
  
  ICreateProjectRequest = interface
    function GetProjectName: string;
    procedure SetProjectName(const Value: string);
    function Obj: TCreateProjectRequest;
    function IsSetProjectName: Boolean;
    property ProjectName: string read GetProjectName write SetProjectName;
  end;
  
  TCreateProjectRequest = class(TAmazonRekognitionRequest, ICreateProjectRequest)
  strict private
    FProjectName: Nullable<string>;
    function GetProjectName: string;
    procedure SetProjectName(const Value: string);
  strict protected
    function Obj: TCreateProjectRequest;
  public
    function IsSetProjectName: Boolean;
    property ProjectName: string read GetProjectName write SetProjectName;
  end;
  
implementation

{ TCreateProjectRequest }

function TCreateProjectRequest.Obj: TCreateProjectRequest;
begin
  Result := Self;
end;

function TCreateProjectRequest.GetProjectName: string;
begin
  Result := FProjectName.ValueOrDefault;
end;

procedure TCreateProjectRequest.SetProjectName(const Value: string);
begin
  FProjectName := Value;
end;

function TCreateProjectRequest.IsSetProjectName: Boolean;
begin
  Result := FProjectName.HasValue;
end;

end.
