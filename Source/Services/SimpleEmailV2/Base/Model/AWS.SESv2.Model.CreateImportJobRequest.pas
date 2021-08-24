unit AWS.SESv2.Model.CreateImportJobRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.ImportDataSource, 
  AWS.SESv2.Model.ImportDestination;

type
  TCreateImportJobRequest = class;
  
  ICreateImportJobRequest = interface
    function GetImportDataSource: TImportDataSource;
    procedure SetImportDataSource(const Value: TImportDataSource);
    function GetKeepImportDataSource: Boolean;
    procedure SetKeepImportDataSource(const Value: Boolean);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
    function Obj: TCreateImportJobRequest;
    function IsSetImportDataSource: Boolean;
    function IsSetImportDestination: Boolean;
    property ImportDataSource: TImportDataSource read GetImportDataSource write SetImportDataSource;
    property KeepImportDataSource: Boolean read GetKeepImportDataSource write SetKeepImportDataSource;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
  end;
  
  TCreateImportJobRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateImportJobRequest)
  strict private
    FImportDataSource: TImportDataSource;
    FKeepImportDataSource: Boolean;
    FImportDestination: TImportDestination;
    FKeepImportDestination: Boolean;
    function GetImportDataSource: TImportDataSource;
    procedure SetImportDataSource(const Value: TImportDataSource);
    function GetKeepImportDataSource: Boolean;
    procedure SetKeepImportDataSource(const Value: Boolean);
    function GetImportDestination: TImportDestination;
    procedure SetImportDestination(const Value: TImportDestination);
    function GetKeepImportDestination: Boolean;
    procedure SetKeepImportDestination(const Value: Boolean);
  strict protected
    function Obj: TCreateImportJobRequest;
  public
    destructor Destroy; override;
    function IsSetImportDataSource: Boolean;
    function IsSetImportDestination: Boolean;
    property ImportDataSource: TImportDataSource read GetImportDataSource write SetImportDataSource;
    property KeepImportDataSource: Boolean read GetKeepImportDataSource write SetKeepImportDataSource;
    property ImportDestination: TImportDestination read GetImportDestination write SetImportDestination;
    property KeepImportDestination: Boolean read GetKeepImportDestination write SetKeepImportDestination;
  end;
  
implementation

{ TCreateImportJobRequest }

destructor TCreateImportJobRequest.Destroy;
begin
  ImportDestination := nil;
  ImportDataSource := nil;
  inherited;
end;

function TCreateImportJobRequest.Obj: TCreateImportJobRequest;
begin
  Result := Self;
end;

function TCreateImportJobRequest.GetImportDataSource: TImportDataSource;
begin
  Result := FImportDataSource;
end;

procedure TCreateImportJobRequest.SetImportDataSource(const Value: TImportDataSource);
begin
  if FImportDataSource <> Value then
  begin
    if not KeepImportDataSource then
      FImportDataSource.Free;
    FImportDataSource := Value;
  end;
end;

function TCreateImportJobRequest.GetKeepImportDataSource: Boolean;
begin
  Result := FKeepImportDataSource;
end;

procedure TCreateImportJobRequest.SetKeepImportDataSource(const Value: Boolean);
begin
  FKeepImportDataSource := Value;
end;

function TCreateImportJobRequest.IsSetImportDataSource: Boolean;
begin
  Result := FImportDataSource <> nil;
end;

function TCreateImportJobRequest.GetImportDestination: TImportDestination;
begin
  Result := FImportDestination;
end;

procedure TCreateImportJobRequest.SetImportDestination(const Value: TImportDestination);
begin
  if FImportDestination <> Value then
  begin
    if not KeepImportDestination then
      FImportDestination.Free;
    FImportDestination := Value;
  end;
end;

function TCreateImportJobRequest.GetKeepImportDestination: Boolean;
begin
  Result := FKeepImportDestination;
end;

procedure TCreateImportJobRequest.SetKeepImportDestination(const Value: Boolean);
begin
  FKeepImportDestination := Value;
end;

function TCreateImportJobRequest.IsSetImportDestination: Boolean;
begin
  Result := FImportDestination <> nil;
end;

end.
