unit AWS.SQS.Model.ChangeMessageVisibilityBatchResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.BatchResultErrorEntry, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry;

type
  TChangeMessageVisibilityBatchResponse = class;
  
  IChangeMessageVisibilityBatchResponse = interface(IAmazonWebServiceResponse)
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TChangeMessageVisibilityBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
    function Obj: TChangeMessageVisibilityBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TChangeMessageVisibilityBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
  TChangeMessageVisibilityBatchResponse = class(TAmazonWebServiceResponse, IChangeMessageVisibilityBatchResponse)
  strict private
    FFailed: TObjectList<TBatchResultErrorEntry>;
    FKeepFailed: Boolean;
    FSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    FKeepSuccessful: Boolean;
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TChangeMessageVisibilityBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
  strict protected
    function Obj: TChangeMessageVisibilityBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TChangeMessageVisibilityBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
implementation

{ TChangeMessageVisibilityBatchResponse }

constructor TChangeMessageVisibilityBatchResponse.Create;
begin
  inherited;
  FFailed := TObjectList<TBatchResultErrorEntry>.Create;
  FSuccessful := TObjectList<TChangeMessageVisibilityBatchResultEntry>.Create;
end;

destructor TChangeMessageVisibilityBatchResponse.Destroy;
begin
  Successful := nil;
  Failed := nil;
  inherited;
end;

function TChangeMessageVisibilityBatchResponse.Obj: TChangeMessageVisibilityBatchResponse;
begin
  Result := Self;
end;

function TChangeMessageVisibilityBatchResponse.GetFailed: TObjectList<TBatchResultErrorEntry>;
begin
  Result := FFailed;
end;

procedure TChangeMessageVisibilityBatchResponse.SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
begin
  if FFailed <> Value then
  begin
    if not KeepFailed then
      FFailed.Free;
    FFailed := Value;
  end;
end;

function TChangeMessageVisibilityBatchResponse.GetKeepFailed: Boolean;
begin
  Result := FKeepFailed;
end;

procedure TChangeMessageVisibilityBatchResponse.SetKeepFailed(const Value: Boolean);
begin
  FKeepFailed := Value;
end;

function TChangeMessageVisibilityBatchResponse.IsSetFailed: Boolean;
begin
  Result := (FFailed <> nil) and (FFailed.Count > 0);
end;

function TChangeMessageVisibilityBatchResponse.GetSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
begin
  Result := FSuccessful;
end;

procedure TChangeMessageVisibilityBatchResponse.SetSuccessful(const Value: TObjectList<TChangeMessageVisibilityBatchResultEntry>);
begin
  if FSuccessful <> Value then
  begin
    if not KeepSuccessful then
      FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TChangeMessageVisibilityBatchResponse.GetKeepSuccessful: Boolean;
begin
  Result := FKeepSuccessful;
end;

procedure TChangeMessageVisibilityBatchResponse.SetKeepSuccessful(const Value: Boolean);
begin
  FKeepSuccessful := Value;
end;

function TChangeMessageVisibilityBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
