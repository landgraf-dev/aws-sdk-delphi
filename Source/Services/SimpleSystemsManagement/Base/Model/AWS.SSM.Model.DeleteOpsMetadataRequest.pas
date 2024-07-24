unit AWS.SSM.Model.DeleteOpsMetadataRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteOpsMetadataRequest = class;
  
  IDeleteOpsMetadataRequest = interface
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function Obj: TDeleteOpsMetadataRequest;
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
  TDeleteOpsMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteOpsMetadataRequest)
  strict private
    FOpsMetadataArn: Nullable<string>;
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
  strict protected
    function Obj: TDeleteOpsMetadataRequest;
  public
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
implementation

{ TDeleteOpsMetadataRequest }

function TDeleteOpsMetadataRequest.Obj: TDeleteOpsMetadataRequest;
begin
  Result := Self;
end;

function TDeleteOpsMetadataRequest.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TDeleteOpsMetadataRequest.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TDeleteOpsMetadataRequest.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

end.
