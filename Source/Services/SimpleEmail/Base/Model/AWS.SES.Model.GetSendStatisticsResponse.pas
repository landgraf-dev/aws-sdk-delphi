unit AWS.SES.Model.GetSendStatisticsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendDataPoint;

type
  TGetSendStatisticsResponse = class;
  
  IGetSendStatisticsResponse = interface(IAmazonWebServiceResponse)
    function GetSendDataPoints: TObjectList<TSendDataPoint>;
    procedure SetSendDataPoints(const Value: TObjectList<TSendDataPoint>);
    function GetKeepSendDataPoints: Boolean;
    procedure SetKeepSendDataPoints(const Value: Boolean);
    function Obj: TGetSendStatisticsResponse;
    function IsSetSendDataPoints: Boolean;
    property SendDataPoints: TObjectList<TSendDataPoint> read GetSendDataPoints write SetSendDataPoints;
    property KeepSendDataPoints: Boolean read GetKeepSendDataPoints write SetKeepSendDataPoints;
  end;
  
  TGetSendStatisticsResponse = class(TAmazonWebServiceResponse, IGetSendStatisticsResponse)
  strict private
    FSendDataPoints: TObjectList<TSendDataPoint>;
    FKeepSendDataPoints: Boolean;
    function GetSendDataPoints: TObjectList<TSendDataPoint>;
    procedure SetSendDataPoints(const Value: TObjectList<TSendDataPoint>);
    function GetKeepSendDataPoints: Boolean;
    procedure SetKeepSendDataPoints(const Value: Boolean);
  strict protected
    function Obj: TGetSendStatisticsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSendDataPoints: Boolean;
    property SendDataPoints: TObjectList<TSendDataPoint> read GetSendDataPoints write SetSendDataPoints;
    property KeepSendDataPoints: Boolean read GetKeepSendDataPoints write SetKeepSendDataPoints;
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
  SendDataPoints := nil;
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
    if not KeepSendDataPoints then
      FSendDataPoints.Free;
    FSendDataPoints := Value;
  end;
end;

function TGetSendStatisticsResponse.GetKeepSendDataPoints: Boolean;
begin
  Result := FKeepSendDataPoints;
end;

procedure TGetSendStatisticsResponse.SetKeepSendDataPoints(const Value: Boolean);
begin
  FKeepSendDataPoints := Value;
end;

function TGetSendStatisticsResponse.IsSetSendDataPoints: Boolean;
begin
  Result := (FSendDataPoints <> nil) and (FSendDataPoints.Count > 0);
end;

end.
