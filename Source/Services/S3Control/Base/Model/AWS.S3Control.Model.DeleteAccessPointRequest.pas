unit AWS.S3Control.Model.DeleteAccessPointRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TDeleteAccessPointRequest = class;
  
  IDeleteAccessPointRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteAccessPointRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteAccessPointRequest = class(TAmazonS3ControlRequest, IDeleteAccessPointRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteAccessPointRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteAccessPointRequest }

function TDeleteAccessPointRequest.Obj: TDeleteAccessPointRequest;
begin
  Result := Self;
end;

function TDeleteAccessPointRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteAccessPointRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteAccessPointRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteAccessPointRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteAccessPointRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteAccessPointRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
