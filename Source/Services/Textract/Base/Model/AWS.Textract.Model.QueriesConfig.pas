unit AWS.Textract.Model.QueriesConfig;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.Query;

type
  TQueriesConfig = class;
  
  IQueriesConfig = interface
    function GetQueries: TObjectList<TQuery>;
    procedure SetQueries(const Value: TObjectList<TQuery>);
    function GetKeepQueries: Boolean;
    procedure SetKeepQueries(const Value: Boolean);
    function Obj: TQueriesConfig;
    function IsSetQueries: Boolean;
    property Queries: TObjectList<TQuery> read GetQueries write SetQueries;
    property KeepQueries: Boolean read GetKeepQueries write SetKeepQueries;
  end;
  
  TQueriesConfig = class
  strict private
    FQueries: TObjectList<TQuery>;
    FKeepQueries: Boolean;
    function GetQueries: TObjectList<TQuery>;
    procedure SetQueries(const Value: TObjectList<TQuery>);
    function GetKeepQueries: Boolean;
    procedure SetKeepQueries(const Value: Boolean);
  strict protected
    function Obj: TQueriesConfig;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetQueries: Boolean;
    property Queries: TObjectList<TQuery> read GetQueries write SetQueries;
    property KeepQueries: Boolean read GetKeepQueries write SetKeepQueries;
  end;
  
implementation

{ TQueriesConfig }

constructor TQueriesConfig.Create;
begin
  inherited;
  FQueries := TObjectList<TQuery>.Create;
end;

destructor TQueriesConfig.Destroy;
begin
  Queries := nil;
  inherited;
end;

function TQueriesConfig.Obj: TQueriesConfig;
begin
  Result := Self;
end;

function TQueriesConfig.GetQueries: TObjectList<TQuery>;
begin
  Result := FQueries;
end;

procedure TQueriesConfig.SetQueries(const Value: TObjectList<TQuery>);
begin
  if FQueries <> Value then
  begin
    if not KeepQueries then
      FQueries.Free;
    FQueries := Value;
  end;
end;

function TQueriesConfig.GetKeepQueries: Boolean;
begin
  Result := FKeepQueries;
end;

procedure TQueriesConfig.SetKeepQueries(const Value: Boolean);
begin
  FKeepQueries := Value;
end;

function TQueriesConfig.IsSetQueries: Boolean;
begin
  Result := (FQueries <> nil) and (FQueries.Count > 0);
end;

end.
