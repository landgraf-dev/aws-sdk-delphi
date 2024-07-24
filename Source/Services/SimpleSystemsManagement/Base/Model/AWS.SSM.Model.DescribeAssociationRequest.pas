unit AWS.SSM.Model.DescribeAssociationRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeAssociationRequest = class;
  
  IDescribeAssociationRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDescribeAssociationRequest;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
  TDescribeAssociationRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeAssociationRequest)
  strict private
    FAssociationId: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FInstanceId: Nullable<string>;
    FName: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDescribeAssociationRequest;
  public
    constructor Create(const AInstanceId: string; const AName: string); overload;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDescribeAssociationRequest }

function TDescribeAssociationRequest.Obj: TDescribeAssociationRequest;
begin
  Result := Self;
end;

constructor TDescribeAssociationRequest.Create(const AInstanceId: string; const AName: string);
begin
  Create;
  InstanceId := AInstanceId;
  Name := AName;
end;

function TDescribeAssociationRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TDescribeAssociationRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TDescribeAssociationRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TDescribeAssociationRequest.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TDescribeAssociationRequest.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TDescribeAssociationRequest.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TDescribeAssociationRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDescribeAssociationRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDescribeAssociationRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TDescribeAssociationRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDescribeAssociationRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDescribeAssociationRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
