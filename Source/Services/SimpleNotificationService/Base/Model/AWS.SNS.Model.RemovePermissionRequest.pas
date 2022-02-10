unit AWS.SNS.Model.RemovePermissionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TRemovePermissionRequest = class;
  
  IRemovePermissionRequest = interface
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TRemovePermissionRequest;
    function IsSetLabel: Boolean;
    function IsSetTopicArn: Boolean;
    property &Label: string read GetLabel write SetLabel;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TRemovePermissionRequest = class(TAmazonSimpleNotificationServiceRequest, IRemovePermissionRequest)
  strict private
    FLabel: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetLabel: string;
    procedure SetLabel(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TRemovePermissionRequest;
  public
    constructor Create(const ATopicArn: string; const ALabel: string); overload;
    function IsSetLabel: Boolean;
    function IsSetTopicArn: Boolean;
    property &Label: string read GetLabel write SetLabel;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TRemovePermissionRequest }

function TRemovePermissionRequest.Obj: TRemovePermissionRequest;
begin
  Result := Self;
end;

constructor TRemovePermissionRequest.Create(const ATopicArn: string; const ALabel: string);
begin
  Create;
  TopicArn := ATopicArn;
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

function TRemovePermissionRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TRemovePermissionRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TRemovePermissionRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
