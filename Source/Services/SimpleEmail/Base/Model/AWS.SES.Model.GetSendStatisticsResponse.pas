unit AWS.SES.Model.GetSendStatisticsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendDataPoint;

type
  TGetSendStatisticsResponse = class;
  
  IGetSendStatisticsResponse = interface
    function GetSendDataPoints: TObjectList<TSendDataPoint>;
    procedure SetSendDataPoints(const Value: TObjectList<TSendDataPoint>);
    function Obj: TGetSendStatisticsResponse;
    function IsSetSendDataPoints: Boolean;
    property SendDataPoints: TObjectList<TSendDataPoint> read GetSendDataPoints write SetSendDataPoints;
  end;
  
  TGetSendStatisticsResponse = class(TAmazonWebServiceResponse, IGetSendStatisticsResponse)
  strict private
    FSendDataPoints: TObjectList<TSendDataPoint>;
    function GetSendDataPoints: TObjectList<TSendDataPoint>;
    procedure SetSendDataPoints(const Value: TObjectList<TSendDataPoint>);
  strict protected
    function Obj: TGetSendStatisticsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSendDataPoints: Boolean;
    property SendDataPoints: TObjectList<TSendDataPoint> read GetSendDataPoints write SetSendDataPoints;
  end;
  
implementation

{ TGetSendStatisticsResponse }

constructor TGetSendStatisticsResponse.Create;
begin
  inherited;
  FSendDataPoints := TObjectList<TSendDataPoint>.Create;
end;

destructor TGetSendStatisticsResponse.Destroy;
begin
  FSendDataPoints.Free;
  inherited;
end;

function TGetSendStatisticsResponse.Obj: TGetSendStatisticsResponse;
begin
  Result := Self;
end;

function TGetSendStatisticsResponse.GetSendDataPoints: TObjectList<TSendDataPoint>;
begin
  Result := FSendDataPoints;
end;

procedure TGetSendStatisticsResponse.SetSendDataPoints(const Value: TObjectList<TSendDataPoint>);
begin
  if FSendDataPoints <> Value then
  begin
    FSendDataPoints.Free;
    FSendDataPoints := Value;
  end;
end;

function TGetSendStatisticsResponse.IsSetSendDataPoints: Boolean;
begin
  Result := (FSendDataPoints <> nil) and (FSendDataPoints.Count > 0);
end;

end.
