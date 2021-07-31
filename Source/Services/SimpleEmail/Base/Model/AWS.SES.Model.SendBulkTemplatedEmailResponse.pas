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
    function Obj: TSendBulkTemplatedEmailResponse;
    function IsSetStatus: Boolean;
    property Status: TObjectList<TBulkEmailDestinationStatus> read GetStatus write SetStatus;
  end;
  
  TSendBulkTemplatedEmailResponse = class(TAmazonWebServiceResponse, ISendBulkTemplatedEmailResponse)
  strict private
    FStatus: TObjectList<TBulkEmailDestinationStatus>;
    function GetStatus: TObjectList<TBulkEmailDestinationStatus>;
    procedure SetStatus(const Value: TObjectList<TBulkEmailDestinationStatus>);
  strict protected
    function Obj: TSendBulkTemplatedEmailResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetStatus: Boolean;
    property Status: TObjectList<TBulkEmailDestinationStatus> read GetStatus write SetStatus;
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
  FStatus.Free;
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
    FStatus.Free;
    FStatus := Value;
  end;
end;

function TSendBulkTemplatedEmailResponse.IsSetStatus: Boolean;
begin
  Result := (FStatus <> nil) and (FStatus.Count > 0);
end;

end.
