unit AWS.Rekognition.Model.DeleteProjectResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums;

type
  TDeleteProjectResponse = class;
  
  IDeleteProjectResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
    function Obj: TDeleteProjectResponse;
    function IsSetStatus: Boolean;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
  TDeleteProjectResponse = class(TAmazonWebServiceResponse, IDeleteProjectResponse)
  strict private
    FStatus: Nullable<TProjectStatus>;
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
  strict protected
    function Obj: TDeleteProjectResponse;
  public
    function IsSetStatus: Boolean;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TDeleteProjectResponse }

function TDeleteProjectResponse.Obj: TDeleteProjectResponse;
begin
  Result := Self;
end;

function TDeleteProjectResponse.GetStatus: TProjectStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDeleteProjectResponse.SetStatus(const Value: TProjectStatus);
begin
  FStatus := Value;
end;

function TDeleteProjectResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
