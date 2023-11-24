unit AWS.S3.Model.SelectObjectContentEventStream;

interface

uses
  AWS.S3.Model.ContinuationEvent, 
  AWS.S3.Model.EndEvent, 
  AWS.S3.Model.ProgressEvent, 
  AWS.S3.Model.RecordsEvent, 
  AWS.S3.Model.StatsEvent;

type
  TSelectObjectContentEventStream = class;
  
  ISelectObjectContentEventStream = interface
    function GetCont: TContinuationEvent;
    procedure SetCont(const Value: TContinuationEvent);
    function GetKeepCont: Boolean;
    procedure SetKeepCont(const Value: Boolean);
    function GetEnd: TEndEvent;
    procedure SetEnd(const Value: TEndEvent);
    function GetKeepEnd: Boolean;
    procedure SetKeepEnd(const Value: Boolean);
    function GetProgress: TProgressEvent;
    procedure SetProgress(const Value: TProgressEvent);
    function GetKeepProgress: Boolean;
    procedure SetKeepProgress(const Value: Boolean);
    function GetRecords: TRecordsEvent;
    procedure SetRecords(const Value: TRecordsEvent);
    function GetKeepRecords: Boolean;
    procedure SetKeepRecords(const Value: Boolean);
    function GetStats: TStatsEvent;
    procedure SetStats(const Value: TStatsEvent);
    function GetKeepStats: Boolean;
    procedure SetKeepStats(const Value: Boolean);
    function Obj: TSelectObjectContentEventStream;
    function IsSetCont: Boolean;
    function IsSetEnd: Boolean;
    function IsSetProgress: Boolean;
    function IsSetRecords: Boolean;
    function IsSetStats: Boolean;
    property Cont: TContinuationEvent read GetCont write SetCont;
    property KeepCont: Boolean read GetKeepCont write SetKeepCont;
    property &End: TEndEvent read GetEnd write SetEnd;
    property KeepEnd: Boolean read GetKeepEnd write SetKeepEnd;
    property Progress: TProgressEvent read GetProgress write SetProgress;
    property KeepProgress: Boolean read GetKeepProgress write SetKeepProgress;
    property Records: TRecordsEvent read GetRecords write SetRecords;
    property KeepRecords: Boolean read GetKeepRecords write SetKeepRecords;
    property Stats: TStatsEvent read GetStats write SetStats;
    property KeepStats: Boolean read GetKeepStats write SetKeepStats;
  end;
  
  TSelectObjectContentEventStream = class
  strict private
    FCont: TContinuationEvent;
    FKeepCont: Boolean;
    FEnd: TEndEvent;
    FKeepEnd: Boolean;
    FProgress: TProgressEvent;
    FKeepProgress: Boolean;
    FRecords: TRecordsEvent;
    FKeepRecords: Boolean;
    FStats: TStatsEvent;
    FKeepStats: Boolean;
    function GetCont: TContinuationEvent;
    procedure SetCont(const Value: TContinuationEvent);
    function GetKeepCont: Boolean;
    procedure SetKeepCont(const Value: Boolean);
    function GetEnd: TEndEvent;
    procedure SetEnd(const Value: TEndEvent);
    function GetKeepEnd: Boolean;
    procedure SetKeepEnd(const Value: Boolean);
    function GetProgress: TProgressEvent;
    procedure SetProgress(const Value: TProgressEvent);
    function GetKeepProgress: Boolean;
    procedure SetKeepProgress(const Value: Boolean);
    function GetRecords: TRecordsEvent;
    procedure SetRecords(const Value: TRecordsEvent);
    function GetKeepRecords: Boolean;
    procedure SetKeepRecords(const Value: Boolean);
    function GetStats: TStatsEvent;
    procedure SetStats(const Value: TStatsEvent);
    function GetKeepStats: Boolean;
    procedure SetKeepStats(const Value: Boolean);
  strict protected
    function Obj: TSelectObjectContentEventStream;
  public
    destructor Destroy; override;
    function IsSetCont: Boolean;
    function IsSetEnd: Boolean;
    function IsSetProgress: Boolean;
    function IsSetRecords: Boolean;
    function IsSetStats: Boolean;
    property Cont: TContinuationEvent read GetCont write SetCont;
    property KeepCont: Boolean read GetKeepCont write SetKeepCont;
    property &End: TEndEvent read GetEnd write SetEnd;
    property KeepEnd: Boolean read GetKeepEnd write SetKeepEnd;
    property Progress: TProgressEvent read GetProgress write SetProgress;
    property KeepProgress: Boolean read GetKeepProgress write SetKeepProgress;
    property Records: TRecordsEvent read GetRecords write SetRecords;
    property KeepRecords: Boolean read GetKeepRecords write SetKeepRecords;
    property Stats: TStatsEvent read GetStats write SetStats;
    property KeepStats: Boolean read GetKeepStats write SetKeepStats;
  end;
  
implementation

{ TSelectObjectContentEventStream }

destructor TSelectObjectContentEventStream.Destroy;
begin
  Stats := nil;
  Records := nil;
  Progress := nil;
  &End := nil;
  Cont := nil;
  inherited;
end;

function TSelectObjectContentEventStream.Obj: TSelectObjectContentEventStream;
begin
  Result := Self;
end;

function TSelectObjectContentEventStream.GetCont: TContinuationEvent;
begin
  Result := FCont;
end;

procedure TSelectObjectContentEventStream.SetCont(const Value: TContinuationEvent);
begin
  if FCont <> Value then
  begin
    if not KeepCont then
      FCont.Free;
    FCont := Value;
  end;
end;

function TSelectObjectContentEventStream.GetKeepCont: Boolean;
begin
  Result := FKeepCont;
end;

procedure TSelectObjectContentEventStream.SetKeepCont(const Value: Boolean);
begin
  FKeepCont := Value;
end;

function TSelectObjectContentEventStream.IsSetCont: Boolean;
begin
  Result := FCont <> nil;
end;

function TSelectObjectContentEventStream.GetEnd: TEndEvent;
begin
  Result := FEnd;
end;

procedure TSelectObjectContentEventStream.SetEnd(const Value: TEndEvent);
begin
  if FEnd <> Value then
  begin
    if not KeepEnd then
      FEnd.Free;
    FEnd := Value;
  end;
end;

function TSelectObjectContentEventStream.GetKeepEnd: Boolean;
begin
  Result := FKeepEnd;
end;

procedure TSelectObjectContentEventStream.SetKeepEnd(const Value: Boolean);
begin
  FKeepEnd := Value;
end;

function TSelectObjectContentEventStream.IsSetEnd: Boolean;
begin
  Result := FEnd <> nil;
end;

function TSelectObjectContentEventStream.GetProgress: TProgressEvent;
begin
  Result := FProgress;
end;

procedure TSelectObjectContentEventStream.SetProgress(const Value: TProgressEvent);
begin
  if FProgress <> Value then
  begin
    if not KeepProgress then
      FProgress.Free;
    FProgress := Value;
  end;
end;

function TSelectObjectContentEventStream.GetKeepProgress: Boolean;
begin
  Result := FKeepProgress;
end;

procedure TSelectObjectContentEventStream.SetKeepProgress(const Value: Boolean);
begin
  FKeepProgress := Value;
end;

function TSelectObjectContentEventStream.IsSetProgress: Boolean;
begin
  Result := FProgress <> nil;
end;

function TSelectObjectContentEventStream.GetRecords: TRecordsEvent;
begin
  Result := FRecords;
end;

procedure TSelectObjectContentEventStream.SetRecords(const Value: TRecordsEvent);
begin
  if FRecords <> Value then
  begin
    if not KeepRecords then
      FRecords.Free;
    FRecords := Value;
  end;
end;

function TSelectObjectContentEventStream.GetKeepRecords: Boolean;
begin
  Result := FKeepRecords;
end;

procedure TSelectObjectContentEventStream.SetKeepRecords(const Value: Boolean);
begin
  FKeepRecords := Value;
end;

function TSelectObjectContentEventStream.IsSetRecords: Boolean;
begin
  Result := FRecords <> nil;
end;

function TSelectObjectContentEventStream.GetStats: TStatsEvent;
begin
  Result := FStats;
end;

procedure TSelectObjectContentEventStream.SetStats(const Value: TStatsEvent);
begin
  if FStats <> Value then
  begin
    if not KeepStats then
      FStats.Free;
    FStats := Value;
  end;
end;

function TSelectObjectContentEventStream.GetKeepStats: Boolean;
begin
  Result := FKeepStats;
end;

procedure TSelectObjectContentEventStream.SetKeepStats(const Value: Boolean);
begin
  FKeepStats := Value;
end;

function TSelectObjectContentEventStream.IsSetStats: Boolean;
begin
  Result := FStats <> nil;
end;

end.
