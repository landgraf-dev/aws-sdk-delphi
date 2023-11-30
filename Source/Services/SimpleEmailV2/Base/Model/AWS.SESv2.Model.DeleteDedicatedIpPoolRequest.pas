unit AWS.SESv2.Model.DeleteDedicatedIpPoolRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteDedicatedIpPoolRequest = class;
  
  IDeleteDedicatedIpPoolRequest = interface
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function Obj: TDeleteDedicatedIpPoolRequest;
    function IsSetPoolName: Boolean;
    property PoolName: string read GetPoolName write SetPoolName;
  end;
  
  TDeleteDedicatedIpPoolRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteDedicatedIpPoolRequest)
  strict private
    FPoolName: Nullable<string>;
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
  strict protected
    function Obj: TDeleteDedicatedIpPoolRequest;
  public
    function IsSetPoolName: Boolean;
    property PoolName: string read GetPoolName write SetPoolName;
  end;
  
implementation

{ TDeleteDedicatedIpPoolRequest }

function TDeleteDedicatedIpPoolRequest.Obj: TDeleteDedicatedIpPoolRequest;
begin
  Result := Self;
end;

function TDeleteDedicatedIpPoolRequest.GetPoolName: string;
begin
  Result := FPoolName.ValueOrDefault;
end;

procedure TDeleteDedicatedIpPoolRequest.SetPoolName(const Value: string);
begin
  FPoolName := Value;
end;

function TDeleteDedicatedIpPoolRequest.IsSetPoolName: Boolean;
begin
  Result := FPoolName.HasValue;
end;

end.
