unit AWS.SSM.Model.DeleteAssociationRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteAssociationRequest = class;
  
  IDeleteAssociationRequest = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteAssociationRequest;
    function IsSetAssociationId: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteAssociationRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteAssociationRequest)
  strict private
    FAssociationId: Nullable<string>;
    FInstanceId: Nullable<string>;
    FName: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteAssociationRequest;
  public
    constructor Create(const AInstanceId: string; const AName: string); overload;
    function IsSetAssociationId: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteAssociationRequest }

function TDeleteAssociationRequest.Obj: TDeleteAssociationRequest;
begin
  Result := Self;
end;

constructor TDeleteAssociationRequest.Create(const AInstanceId: string; const AName: string);
begin
  Create;
  InstanceId := AInstanceId;
  Name := AName;
end;

function TDeleteAssociationRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TDeleteAssociationRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TDeleteAssociationRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TDeleteAssociationRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDeleteAssociationRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDeleteAssociationRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TDeleteAssociationRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteAssociationRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteAssociationRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
