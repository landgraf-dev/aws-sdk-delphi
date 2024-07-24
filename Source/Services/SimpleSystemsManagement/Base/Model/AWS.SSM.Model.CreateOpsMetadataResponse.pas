unit AWS.SSM.Model.CreateOpsMetadataResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateOpsMetadataResponse = class;
  
  ICreateOpsMetadataResponse = interface(IAmazonWebServiceResponse)
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function Obj: TCreateOpsMetadataResponse;
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
  TCreateOpsMetadataResponse = class(TAmazonWebServiceResponse, ICreateOpsMetadataResponse)
  strict private
    FOpsMetadataArn: Nullable<string>;
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
  strict protected
    function Obj: TCreateOpsMetadataResponse;
  public
    function IsSetOpsMetadataArn: Boolean;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
implementation

{ TCreateOpsMetadataResponse }

function TCreateOpsMetadataResponse.Obj: TCreateOpsMetadataResponse;
begin
  Result := Self;
end;

function TCreateOpsMetadataResponse.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TCreateOpsMetadataResponse.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TCreateOpsMetadataResponse.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

end.
