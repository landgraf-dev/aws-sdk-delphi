unit AWS.SQS.Model.RemovePermissionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TRemovePermissionRequest = class;
  
  IRemovePermissionRequest = interface
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TRemovePermissionRequest;
    function IsSetLabel: Boolean;
    function IsSetQueueUrl: Boolean;
    property &Label: string read GetLabel write SetLabel;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TRemovePermissionRequest = class(TAmazonSQSRequest, IRemovePermissionRequest)
  strict private
    FLabel: Nullable<string>;
    FQueueUrl: Nullable<string>;
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TRemovePermissionRequest;
  public
    constructor Create(const AQueueUrl: string; const ALabel: string); overload;
    function IsSetLabel: Boolean;
    function IsSetQueueUrl: Boolean;
    property &Label: string read GetLabel write SetLabel;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TRemovePermissionRequest }

function TRemovePermissionRequest.Obj: TRemovePermissionRequest;
begin
  Result := Self;
end;

constructor TRemovePermissionRequest.Create(const AQueueUrl: string; const ALabel: string);
begin
  Create;
  QueueUrl := AQueueUrl;
  &Label := ALabel;
end;

function TRemovePermissionRequest.GetLabel: string;
begin
  Result := FLabel.ValueOrDefault;
end;

procedure TRemovePermissionRequest.SetLabel(const Value: string);
begin
  FLabel := Value;
end;

function TRemovePermissionRequest.IsSetLabel: Boolean;
begin
  Result := FLabel.HasValue;
end;

function TRemovePermissionRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TRemovePermissionRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TRemovePermissionRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
