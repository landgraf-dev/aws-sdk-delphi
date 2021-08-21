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
    function GetSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TChangeMessageVisibilityBatchResultEntry>);
    function Obj: TChangeMessageVisibilityBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property Successful: TObjectList<TChangeMessageVisibilityBatchResultEntry> read GetSuccessful write SetSuccessful;
  end;
  
  TChangeMessageVisibilityBatchResponse = class(TAmazonWebServiceResponse, IChangeMessageVisibilityBatchResponse)
  strict private
    FFailed: TObjectList<TBatchResultErrorEntry>;
    FSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetSuccessful: TObjectList<TChangeMessageVisibilityBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TChangeMessageVisibilityBatchResultEntry>);
  strict protected
    function Obj: TChangeMessageVisibilityBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property Successful: TObjectList<TChangeMessageVisibilityBatchResultEntry> read GetSuccessful write SetSuccessful;
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
    FFailed.Free;
    FFailed := Value;
  end;
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
    FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TChangeMessageVisibilityBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
