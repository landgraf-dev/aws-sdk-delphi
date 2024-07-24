unit AWS.SSM.Model.GetConnectionStatusRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetConnectionStatusRequest = class;
  
  IGetConnectionStatusRequest = interface
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function Obj: TGetConnectionStatusRequest;
    function IsSetTarget: Boolean;
    property Target: string read GetTarget write SetTarget;
  end;
  
  TGetConnectionStatusRequest = class(TAmazonSimpleSystemsManagementRequest, IGetConnectionStatusRequest)
  strict private
    FTarget: Nullable<string>;
    function GetTarget: string;
    procedure SetTarget(const Value: string);
  strict protected
    function Obj: TGetConnectionStatusRequest;
  public
    function IsSetTarget: Boolean;
    property Target: string read GetTarget write SetTarget;
  end;
  
implementation

{ TGetConnectionStatusRequest }

function TGetConnectionStatusRequest.Obj: TGetConnectionStatusRequest;
begin
  Result := Self;
end;

function TGetConnectionStatusRequest.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TGetConnectionStatusRequest.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TGetConnectionStatusRequest.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

end.
