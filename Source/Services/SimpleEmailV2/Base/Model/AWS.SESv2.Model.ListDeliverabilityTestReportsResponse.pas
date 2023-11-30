unit AWS.SESv2.Model.ListDeliverabilityTestReportsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeliverabilityTestReport, 
  AWS.Nullable;

type
  TListDeliverabilityTestReportsResponse = class;
  
  IListDeliverabilityTestReportsResponse = interface(IAmazonWebServiceResponse)
    function GetDeliverabilityTestReports: TObjectList<TDeliverabilityTestReport>;
    procedure SetDeliverabilityTestReports(const Value: TObjectList<TDeliverabilityTestReport>);
    function GetKeepDeliverabilityTestReports: Boolean;
    procedure SetKeepDeliverabilityTestReports(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDeliverabilityTestReportsResponse;
    function IsSetDeliverabilityTestReports: Boolean;
    function IsSetNextToken: Boolean;
    property DeliverabilityTestReports: TObjectList<TDeliverabilityTestReport> read GetDeliverabilityTestReports write SetDeliverabilityTestReports;
    property KeepDeliverabilityTestReports: Boolean read GetKeepDeliverabilityTestReports write SetKeepDeliverabilityTestReports;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDeliverabilityTestReportsResponse = class(TAmazonWebServiceResponse, IListDeliverabilityTestReportsResponse)
  strict private
    FDeliverabilityTestReports: TObjectList<TDeliverabilityTestReport>;
    FKeepDeliverabilityTestReports: Boolean;
    FNextToken: Nullable<string>;
    function GetDeliverabilityTestReports: TObjectList<TDeliverabilityTestReport>;
    procedure SetDeliverabilityTestReports(const Value: TObjectList<TDeliverabilityTestReport>);
    function GetKeepDeliverabilityTestReports: Boolean;
    procedure SetKeepDeliverabilityTestReports(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDeliverabilityTestReportsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDeliverabilityTestReports: Boolean;
    function IsSetNextToken: Boolean;
    property DeliverabilityTestReports: TObjectList<TDeliverabilityTestReport> read GetDeliverabilityTestReports write SetDeliverabilityTestReports;
    property KeepDeliverabilityTestReports: Boolean read GetKeepDeliverabilityTestReports write SetKeepDeliverabilityTestReports;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDeliverabilityTestReportsResponse }

constructor TListDeliverabilityTestReportsResponse.Create;
begin
  inherited;
  FDeliverabilityTestReports := TObjectList<TDeliverabilityTestReport>.Create;
end;

destructor TListDeliverabilityTestReportsResponse.Destroy;
begin
  DeliverabilityTestReports := nil;
  inherited;
end;

function TListDeliverabilityTestReportsResponse.Obj: TListDeliverabilityTestReportsResponse;
begin
  Result := Self;
end;

function TListDeliverabilityTestReportsResponse.GetDeliverabilityTestReports: TObjectList<TDeliverabilityTestReport>;
begin
  Result := FDeliverabilityTestReports;
end;

procedure TListDeliverabilityTestReportsResponse.SetDeliverabilityTestReports(const Value: TObjectList<TDeliverabilityTestReport>);
begin
  if FDeliverabilityTestReports <> Value then
  begin
    if not KeepDeliverabilityTestReports then
      FDeliverabilityTestReports.Free;
    FDeliverabilityTestReports := Value;
  end;
end;

function TListDeliverabilityTestReportsResponse.GetKeepDeliverabilityTestReports: Boolean;
begin
  Result := FKeepDeliverabilityTestReports;
end;

procedure TListDeliverabilityTestReportsResponse.SetKeepDeliverabilityTestReports(const Value: Boolean);
begin
  FKeepDeliverabilityTestReports := Value;
end;

function TListDeliverabilityTestReportsResponse.IsSetDeliverabilityTestReports: Boolean;
begin
  Result := (FDeliverabilityTestReports <> nil) and (FDeliverabilityTestReports.Count > 0);
end;

function TListDeliverabilityTestReportsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDeliverabilityTestReportsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDeliverabilityTestReportsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
