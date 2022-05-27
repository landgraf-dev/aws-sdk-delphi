unit AWS.SNS.Model.PublishBatchResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.BatchResultErrorEntry, 
  AWS.SNS.Model.PublishBatchResultEntry;

type
  TPublishBatchResponse = class;
  
  IPublishBatchResponse = interface(IAmazonWebServiceResponse)
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TPublishBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TPublishBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
    function Obj: TPublishBatchResponse;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TPublishBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
  TPublishBatchResponse = class(TAmazonWebServiceResponse, IPublishBatchResponse)
  strict private
    FFailed: TObjectList<TBatchResultErrorEntry>;
    FKeepFailed: Boolean;
    FSuccessful: TObjectList<TPublishBatchResultEntry>;
    FKeepSuccessful: Boolean;
    function GetFailed: TObjectList<TBatchResultErrorEntry>;
    procedure SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
    function GetKeepFailed: Boolean;
    procedure SetKeepFailed(const Value: Boolean);
    function GetSuccessful: TObjectList<TPublishBatchResultEntry>;
    procedure SetSuccessful(const Value: TObjectList<TPublishBatchResultEntry>);
    function GetKeepSuccessful: Boolean;
    procedure SetKeepSuccessful(const Value: Boolean);
  strict protected
    function Obj: TPublishBatchResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFailed: Boolean;
    function IsSetSuccessful: Boolean;
    property Failed: TObjectList<TBatchResultErrorEntry> read GetFailed write SetFailed;
    property KeepFailed: Boolean read GetKeepFailed write SetKeepFailed;
    property Successful: TObjectList<TPublishBatchResultEntry> read GetSuccessful write SetSuccessful;
    property KeepSuccessful: Boolean read GetKeepSuccessful write SetKeepSuccessful;
  end;
  
implementation

{ TPublishBatchResponse }

constructor TPublishBatchResponse.Create;
begin
  inherited;
  FFailed := TObjectList<TBatchResultErrorEntry>.Create;
  FSuccessful := TObjectList<TPublishBatchResultEntry>.Create;
end;

destructor TPublishBatchResponse.Destroy;
begin
  Successful := nil;
  Failed := nil;
  inherited;
end;

function TPublishBatchResponse.Obj: TPublishBatchResponse;
begin
  Result := Self;
end;

function TPublishBatchResponse.GetFailed: TObjectList<TBatchResultErrorEntry>;
begin
  Result := FFailed;
end;

procedure TPublishBatchResponse.SetFailed(const Value: TObjectList<TBatchResultErrorEntry>);
begin
  if FFailed <> Value then
  begin
    if not KeepFailed then
      FFailed.Free;
    FFailed := Value;
  end;
end;

function TPublishBatchResponse.GetKeepFailed: Boolean;
begin
  Result := FKeepFailed;
end;

procedure TPublishBatchResponse.SetKeepFailed(const Value: Boolean);
begin
  FKeepFailed := Value;
end;

function TPublishBatchResponse.IsSetFailed: Boolean;
begin
  Result := (FFailed <> nil) and (FFailed.Count > 0);
end;

function TPublishBatchResponse.GetSuccessful: TObjectList<TPublishBatchResultEntry>;
begin
  Result := FSuccessful;
end;

procedure TPublishBatchResponse.SetSuccessful(const Value: TObjectList<TPublishBatchResultEntry>);
begin
  if FSuccessful <> Value then
  begin
    if not KeepSuccessful then
      FSuccessful.Free;
    FSuccessful := Value;
  end;
end;

function TPublishBatchResponse.GetKeepSuccessful: Boolean;
begin
  Result := FKeepSuccessful;
end;

procedure TPublishBatchResponse.SetKeepSuccessful(const Value: Boolean);
begin
  FKeepSuccessful := Value;
end;

function TPublishBatchResponse.IsSetSuccessful: Boolean;
begin
  Result := (FSuccessful <> nil) and (FSuccessful.Count > 0);
end;

end.
