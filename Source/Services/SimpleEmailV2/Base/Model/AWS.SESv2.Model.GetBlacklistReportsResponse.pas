unit AWS.SESv2.Model.GetBlacklistReportsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.BlacklistEntry;

type
  TGetBlacklistReportsResponse = class;
  
  IGetBlacklistReportsResponse = interface(IAmazonWebServiceResponse)
    function GetBlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>>;
    procedure SetBlacklistReport(const Value: TObjectDictionary<string, TObjectList<TBlacklistEntry>>);
    function GetKeepBlacklistReport: Boolean;
    procedure SetKeepBlacklistReport(const Value: Boolean);
    function Obj: TGetBlacklistReportsResponse;
    function IsSetBlacklistReport: Boolean;
    property BlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>> read GetBlacklistReport write SetBlacklistReport;
    property KeepBlacklistReport: Boolean read GetKeepBlacklistReport write SetKeepBlacklistReport;
  end;
  
  TGetBlacklistReportsResponse = class(TAmazonWebServiceResponse, IGetBlacklistReportsResponse)
  strict private
    FBlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>>;
    FKeepBlacklistReport: Boolean;
    function GetBlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>>;
    procedure SetBlacklistReport(const Value: TObjectDictionary<string, TObjectList<TBlacklistEntry>>);
    function GetKeepBlacklistReport: Boolean;
    procedure SetKeepBlacklistReport(const Value: Boolean);
  strict protected
    function Obj: TGetBlacklistReportsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBlacklistReport: Boolean;
    property BlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>> read GetBlacklistReport write SetBlacklistReport;
    property KeepBlacklistReport: Boolean read GetKeepBlacklistReport write SetKeepBlacklistReport;
  end;
  
implementation

{ TGetBlacklistReportsResponse }

constructor TGetBlacklistReportsResponse.Create;
begin
  inherited;
  FBlacklistReport := TObjectDictionary<string, TObjectList<TBlacklistEntry>>.Create([doOwnsValues]);
end;

destructor TGetBlacklistReportsResponse.Destroy;
begin
  BlacklistReport := nil;
  inherited;
end;

function TGetBlacklistReportsResponse.Obj: TGetBlacklistReportsResponse;
begin
  Result := Self;
end;

function TGetBlacklistReportsResponse.GetBlacklistReport: TObjectDictionary<string, TObjectList<TBlacklistEntry>>;
begin
  Result := FBlacklistReport;
end;

procedure TGetBlacklistReportsResponse.SetBlacklistReport(const Value: TObjectDictionary<string, TObjectList<TBlacklistEntry>>);
begin
  if FBlacklistReport <> Value then
  begin
    if not KeepBlacklistReport then
      FBlacklistReport.Free;
    FBlacklistReport := Value;
  end;
end;

function TGetBlacklistReportsResponse.GetKeepBlacklistReport: Boolean;
begin
  Result := FKeepBlacklistReport;
end;

procedure TGetBlacklistReportsResponse.SetKeepBlacklistReport(const Value: Boolean);
begin
  FKeepBlacklistReport := Value;
end;

function TGetBlacklistReportsResponse.IsSetBlacklistReport: Boolean;
begin
  Result := (FBlacklistReport <> nil) and (FBlacklistReport.Count > 0);
end;

end.
