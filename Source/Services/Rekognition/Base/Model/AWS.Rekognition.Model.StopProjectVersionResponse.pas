unit AWS.Rekognition.Model.StopProjectVersionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Rekognition.Enums;

type
  TStopProjectVersionResponse = class;
  
  IStopProjectVersionResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
    function Obj: TStopProjectVersionResponse;
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
  TStopProjectVersionResponse = class(TAmazonWebServiceResponse, IStopProjectVersionResponse)
  strict private
    FStatus: Nullable<TProjectVersionStatus>;
    function GetStatus: TProjectVersionStatus;
    procedure SetStatus(const Value: TProjectVersionStatus);
  strict protected
    function Obj: TStopProjectVersionResponse;
  public
    function IsSetStatus: Boolean;
    property Status: TProjectVersionStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TStopProjectVersionResponse }

function TStopProjectVersionResponse.Obj: TStopProjectVersionResponse;
begin
  Result := Self;
end;

function TStopProjectVersionResponse.GetStatus: TProjectVersionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TStopProjectVersionResponse.SetStatus(const Value: TProjectVersionStatus);
begin
  FStatus := Value;
end;

function TStopProjectVersionResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
