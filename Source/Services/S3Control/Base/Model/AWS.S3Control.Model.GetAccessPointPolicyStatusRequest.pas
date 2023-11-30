unit AWS.S3Control.Model.GetAccessPointPolicyStatusRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetAccessPointPolicyStatusRequest = class;
  
  IGetAccessPointPolicyStatusRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointPolicyStatusRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointPolicyStatusRequest = class(TAmazonS3ControlRequest, IGetAccessPointPolicyStatusRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointPolicyStatusRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointPolicyStatusRequest }

function TGetAccessPointPolicyStatusRequest.Obj: TGetAccessPointPolicyStatusRequest;
begin
  Result := Self;
end;

function TGetAccessPointPolicyStatusRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointPolicyStatusRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointPolicyStatusRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointPolicyStatusRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointPolicyStatusRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointPolicyStatusRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
