unit AWS.SES.Model.SendBulkTemplatedEmailResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.BulkEmailDestinationStatus;

type
  TSendBulkTemplatedEmailResponse = class;
  
  ISendBulkTemplatedEmailResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TObjectList<TBulkEmailDestinationStatus>;
    procedure SetStatus(const Value: TObjectList<TBulkEmailDestinationStatus>);
    function GetKeepStatus: Boolean;
    procedure SetKeepStatus(const Value: Boolean);
    function Obj: TSendBulkTemplatedEmailResponse;
    function IsSetStatus: Boolean;
    property Status: TObjectList<TBulkEmailDestinationStatus> read GetStatus write SetStatus;
    property KeepStatus: Boolean read GetKeepStatus write SetKeepStatus;
  end;
  
  TSendBulkTemplatedEmailResponse = class(TAmazonWebServiceResponse, ISendBulkTemplatedEmailResponse)
  strict private
    FStatus: TObjectList<TBulkEmailDestinationStatus>;
    FKeepStatus: Boolean;
    function GetStatus: TObjectList<TBulkEmailDestinationStatus>;
    procedure SetStatus(const Value: TObjectList<TBulkEmailDestinationStatus>);
    function GetKeepStatus: Boolean;
    procedure SetKeepStatus(const Value: Boolean);
  strict protected
    function Obj: TSendBulkTemplatedEmailResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetStatus: Boolean;
    property Status: TObjectList<TBulkEmailDestinationStatus> read GetStatus write SetStatus;
    property KeepStatus: Boolean read GetKeepStatus write SetKeepStatus;
  end;
  
implementation

{ TSendBulkTemplatedEmailResponse }

constructor TSendBulkTemplatedEmailResponse.Create;
begin
  inherited;
  FStatus := TObjectList<TBulkEmailDestinationStatus>.Create;
end;

destructor TSendBulkTemplatedEmailResponse.Destroy;
begin
  Status := nil;
  inherited;
end;

function TSendBulkTemplatedEmailResponse.Obj: TSendBulkTemplatedEmailResponse;
begin
  Result := Self;
end;

function TSendBulkTemplatedEmailResponse.GetStatus: TObjectList<TBulkEmailDestinationStatus>;
begin
  Result := FStatus;
end;

procedure TSendBulkTemplatedEmailResponse.SetStatus(const Value: TObjectList<TBulkEmailDestinationStatus>);
begin
  if FStatus <> Value then
  begin
    if not KeepStatus then
      FStatus.Free;
    FStatus := Value;
  end;
end;

function TSendBulkTemplatedEmailResponse.GetKeepStatus: Boolean;
begin
  Result := FKeepStatus;
end;

procedure TSendBulkTemplatedEmailResponse.SetKeepStatus(const Value: Boolean);
begin
  FKeepStatus := Value;
end;

function TSendBulkTemplatedEmailResponse.IsSetStatus: Boolean;
begin
  Result := (FStatus <> nil) and (FStatus.Count > 0);
end;

end.
