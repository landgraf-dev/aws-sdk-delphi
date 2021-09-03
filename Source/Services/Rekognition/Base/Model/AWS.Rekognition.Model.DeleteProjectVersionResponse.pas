unit AWS.Rekognition.Model.DeleteProjectVersionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums;

type
  TDeleteProjectVersionResponse = class;
  
  IDeleteProjectVersionResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
    function Obj: TDeleteProjectVersionResponse;
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
  TDeleteProjectVersionResponse = class(TAmazonWebServiceResponse, IDeleteProjectVersionResponse)
  strict private
    FStatus: Nullable<TProjectVersionStatus>;
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
  strict protected
    function Obj: TDeleteProjectVersionResponse;
  public
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TDeleteProjectVersionResponse }

function TDeleteProjectVersionResponse.Obj: TDeleteProjectVersionResponse;
begin
  Result := Self;
end;

function TDeleteProjectVersionResponse.GetStatus: TProjectVersionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDeleteProjectVersionResponse.SetStatus(const Value: TProjectVersionStatus);
begin
  FStatus := Value;
end;

function TDeleteProjectVersionResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
