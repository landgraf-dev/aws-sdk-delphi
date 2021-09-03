unit AWS.Rekognition.Model.StartProjectVersionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Enums;

type
  TStartProjectVersionResponse = class;
  
  IStartProjectVersionResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
    function Obj: TStartProjectVersionResponse;
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
  TStartProjectVersionResponse = class(TAmazonWebServiceResponse, IStartProjectVersionResponse)
  strict private
    FStatus: Nullable<TProjectVersionStatus>;
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
  strict protected
    function Obj: TStartProjectVersionResponse;
  public
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TStartProjectVersionResponse }

function TStartProjectVersionResponse.Obj: TStartProjectVersionResponse;
begin
  Result := Self;
end;

function TStartProjectVersionResponse.GetStatus: TProjectVersionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TStartProjectVersionResponse.SetStatus(const Value: TProjectVersionStatus);
begin
  FStatus := Value;
end;

function TStartProjectVersionResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
