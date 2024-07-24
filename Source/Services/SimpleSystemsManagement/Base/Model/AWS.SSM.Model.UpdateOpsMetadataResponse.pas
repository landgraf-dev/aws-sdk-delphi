unit AWS.SSM.Model.UpdateOpsMetadataResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TUpdateOpsMetadataResponse = class;
  
  IUpdateOpsMetadataResponse = interface(IAmazonWebServiceResponse)
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function Obj: TUpdateOpsMetadataResponse;
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
  TUpdateOpsMetadataResponse = class(TAmazonWebServiceResponse, IUpdateOpsMetadataResponse)
  strict private
    FOpsMetadataArn: Nullable<string>;
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
  strict protected
    function Obj: TUpdateOpsMetadataResponse;
  public
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
implementation

{ TUpdateOpsMetadataResponse }

function TUpdateOpsMetadataResponse.Obj: TUpdateOpsMetadataResponse;
begin
  Result := Self;
end;

function TUpdateOpsMetadataResponse.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TUpdateOpsMetadataResponse.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TUpdateOpsMetadataResponse.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

end.
