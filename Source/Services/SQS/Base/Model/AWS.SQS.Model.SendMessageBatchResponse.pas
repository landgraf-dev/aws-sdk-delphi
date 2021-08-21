unit AWS.SQS.Model.SendMessageBatchResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.BatchResultErrorEntry, 
  AWS.SQS.Model.SendMessageBatchResultEntry;

type
  TSendMessageBatchResponse = class;
  
  ISendMessageBatchResponse = interface(IAmazonWebServiceResponse)
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TSendMessageBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TSendMessageBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
    function Obj: TSendMessageBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TSendMessageBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
  TSendMessageBatchResponse = class(TAmazonWebServiceResponse, ISendMessageBatchResponse)
  strict private
    FFailed: TObjectList<TBatchResultErrorEntry>;
    FKeepFailed: Boolean;
    FSuccessful: TObjectList<TSendMessageBatchResultEntry>;
    FKeepSuccessful: Boolean;
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TSendMessageBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TSendMessageBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
  strict protected
    function Obj: TSendMessageBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TSendMessageBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
implementation

{ TSendMessageBatchResponse }

constructor TSendMessageBatchResponse.Create;
begin
  inherited;
  FFailed := TObjectList<TBatchResultErrorEntry>.Create;
  FSuccessful := TObjectList<TSendMessageBatchResultEntry>.Create;
end;

destructor TSendMessageBatchResponse.Destroy;
begin
  Successful := nil;
  Failed := nil;
  inherited;
end;

function TSendMessageBatchResponse.Obj: TSendMessageBatchResponse;
begin
  Result := Self;
end;

function TSendMessageBatchResponse.GetFailed: TObjectList<TBatchResultErrorEntry>;
begin
  Result := FFailed;
end;

procedure TSendMessageBatchResponse.SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
begin
  if FFailed <> Value then
  begin
    if not KeepFailed then
      FFailed.Free;
    FFailed := Value;
  end;
end;

function TSendMessageBatchResponse.GetKeepFailed: Boolean;
begin
  Result := FKeepFailed;
end;

procedure TSendMessageBatchResponse.SetKeepFailed(const Value: Boolean);
begin
  FKeepFailed := Value;
end;

function TSendMessageBatchResponse.IsSetFailed: Boolean;
begin
  Result := (FFailed <> nil) and (FFailed.Count > 0);
end;

function TSendMessageBatchResponse.GetSuccessful: TObjectList<TSendMessageBatchResultEntry>;
begin
  Result := FSuccessful;
end;

procedure TSendMessageBatchResponse.SetSuccessful(const Value: TObjectList<TSendMessageBatchResultEntry>);
begin
  if FSuccessful <> Value then
  begin
    if not KeepSuccessful then
      FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TSendMessageBatchResponse.GetKeepSuccessful: Boolean;
begin
  Result := FKeepSuccessful;
end;

procedure TSendMessageBatchResponse.SetKeepSuccessful(const Value: Boolean);
begin
  FKeepSuccessful := Value;
end;

function TSendMessageBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
