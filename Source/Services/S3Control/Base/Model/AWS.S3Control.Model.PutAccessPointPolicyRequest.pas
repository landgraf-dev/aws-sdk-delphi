unit AWS.S3Control.Model.PutAccessPointPolicyRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TPutAccessPointPolicyRequest = class;
  
  IPutAccessPointPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TPutAccessPointPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TPutAccessPointPolicyRequest = class(TAmazonS3ControlRequest, IPutAccessPointPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    FPolicy: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TPutAccessPointPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TPutAccessPointPolicyRequest }

function TPutAccessPointPolicyRequest.Obj: TPutAccessPointPolicyRequest;
begin
  Result := Self;
end;

function TPutAccessPointPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutAccessPointPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutAccessPointPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutAccessPointPolicyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPutAccessPointPolicyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TPutAccessPointPolicyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TPutAccessPointPolicyRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TPutAccessPointPolicyRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TPutAccessPointPolicyRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
