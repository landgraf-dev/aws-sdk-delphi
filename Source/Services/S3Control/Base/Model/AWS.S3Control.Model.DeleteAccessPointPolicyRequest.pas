unit AWS.S3Control.Model.DeleteAccessPointPolicyRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteAccessPointPolicyRequest = class;
  
  IDeleteAccessPointPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteAccessPointPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteAccessPointPolicyRequest = class(TAmazonS3ControlRequest, IDeleteAccessPointPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteAccessPointPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteAccessPointPolicyRequest }

function TDeleteAccessPointPolicyRequest.Obj: TDeleteAccessPointPolicyRequest;
begin
  Result := Self;
end;

function TDeleteAccessPointPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteAccessPointPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteAccessPointPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteAccessPointPolicyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteAccessPointPolicyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteAccessPointPolicyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
