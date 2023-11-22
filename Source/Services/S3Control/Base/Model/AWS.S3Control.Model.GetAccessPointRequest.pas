unit AWS.S3Control.Model.GetAccessPointRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TGetAccessPointRequest = class;
  
  IGetAccessPointRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetAccessPointRequest;
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
  TGetAccessPointRequest = class(TAmazonS3ControlRequest, IGetAccessPointRequest)
  strict private
    FAccountId: Nullable<string>;
    FName: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetAccessPointRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetName: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetAccessPointRequest }

function TGetAccessPointRequest.Obj: TGetAccessPointRequest;
begin
  Result := Self;
end;

function TGetAccessPointRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetAccessPointRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetAccessPointRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetAccessPointRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
