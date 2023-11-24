unit AWS.S3.Model.RestoreObjectResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TRestoreObjectResponse = class;
  
  IRestoreObjectResponse = interface(IAmazonWebServiceResponse)
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetRestoreOutputPath: string;
    procedure SetRestoreOutputPath(const Value: string);
    function Obj: TRestoreObjectResponse;
    function IsSetRequestCharged: Boolean;
    function IsSetRestoreOutputPath: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property RestoreOutputPath: string read GetRestoreOutputPath write SetRestoreOutputPath;
  end;
  
  TRestoreObjectResponse = class(TAmazonWebServiceResponse, IRestoreObjectResponse)
  strict private
    FRequestCharged: Nullable<TRequestCharged>;
    FRestoreOutputPath: Nullable<string>;
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetRestoreOutputPath: string;
    procedure SetRestoreOutputPath(const Value: string);
  strict protected
    function Obj: TRestoreObjectResponse;
  public
    function IsSetRequestCharged: Boolean;
    function IsSetRestoreOutputPath: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property RestoreOutputPath: string read GetRestoreOutputPath write SetRestoreOutputPath;
  end;
  
implementation

{ TRestoreObjectResponse }

function TRestoreObjectResponse.Obj: TRestoreObjectResponse;
begin
  Result := Self;
end;

function TRestoreObjectResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TRestoreObjectResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TRestoreObjectResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TRestoreObjectResponse.GetRestoreOutputPath: string;
begin
  Result := FRestoreOutputPath.ValueOrDefault;
end;

procedure TRestoreObjectResponse.SetRestoreOutputPath(const Value: string);
begin
  FRestoreOutputPath := Value;
end;

function TRestoreObjectResponse.IsSetRestoreOutputPath: Boolean;
begin
  Result := FRestoreOutputPath.HasValue;
end;

end.
