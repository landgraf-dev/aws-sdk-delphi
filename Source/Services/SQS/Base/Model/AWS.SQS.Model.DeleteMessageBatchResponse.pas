unit AWS.SQS.Model.DeleteMessageBatchResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.BatchResultErrorEntry, 
  AWS.SQS.Model.DeleteMessageBatchResultEntry;

type
  TDeleteMessageBatchResponse = class;
  
  IDeleteMessageBatchResponse = interface(IAmazonWebServiceResponse)
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetSuccessful: TObjectList<TDeleteMessageBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TDeleteMessageBatchResultEntry>);
    function Obj: TDeleteMessageBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property Successful: TObjectList<TDeleteMessageBatchResultEntry> read GetSuccessful write SetSuccessful;
  end;
  
  TDeleteMessageBatchResponse = class(TAmazonWebServiceResponse, IDeleteMessageBatchResponse)
  strict private
    FFailed: TObjectList<TBatchResultErrorEntry>;
    FSuccessful: TObjectList<TDeleteMessageBatchResultEntry>;
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetSuccessful: TObjectList<TDeleteMessageBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TDeleteMessageBatchResultEntry>);
  strict protected
    function Obj: TDeleteMessageBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property Successful: TObjectList<TDeleteMessageBatchResultEntry> read GetSuccessful write SetSuccessful;
  end;
  
implementation

{ TDeleteMessageBatchResponse }

constructor TDeleteMessageBatchResponse.Create;
begin
  inherited;
  FFailed := TObjectList<TBatchResultErrorEntry>.Create;
  FSuccessful := TObjectList<TDeleteMessageBatchResultEntry>.Create;
end;

destructor TDeleteMessageBatchResponse.Destroy;
begin
  FSuccessful.Free;
  FFailed.Free;
  inherited;
end;

function TDeleteMessageBatchResponse.Obj: TDeleteMessageBatchResponse;
begin
  Result := Self;
end;

function TDeleteMessageBatchResponse.GetFailed: TObjectList<TBatchResultErrorEntry>;
begin
  Result := FFailed;
end;

procedure TDeleteMessageBatchResponse.SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
begin
  if FFailed <> Value then
  begin
    FFailed.Free;
    FFailed := Value;
  end;
end;

function TDeleteMessageBatchResponse.IsSetFailed: Boolean;
begin
  Result := (FFailed <> nil) and (FFailed.Count > 0);
end;

function TDeleteMessageBatchResponse.GetSuccessful: TObjectList<TDeleteMessageBatchResultEntry>;
begin
  Result := FSuccessful;
end;

procedure TDeleteMessageBatchResponse.SetSuccessful(const Value: TObjectList<TDeleteMessageBatchResultEntry>);
begin
  if FSuccessful <> Value then
  begin
    FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TDeleteMessageBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
