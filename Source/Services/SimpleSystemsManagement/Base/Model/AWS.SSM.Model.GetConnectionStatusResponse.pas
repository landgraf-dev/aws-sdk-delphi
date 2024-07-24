unit AWS.SSM.Model.GetConnectionStatusResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetConnectionStatusResponse = class;
  
  IGetConnectionStatusResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TConnectionStatus;
    procedure SetStatus(const Value: TConnectionStatus);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function Obj: TGetConnectionStatusResponse;
    function IsSetStatus: Boolean;
    function IsSetTarget: Boolean;
    property Status: TConnectionStatus read GetStatus write SetStatus;
    property Target: string read GetTarget write SetTarget;
  end;
  
  TGetConnectionStatusResponse = class(TAmazonWebServiceResponse, IGetConnectionStatusResponse)
  strict private
    FStatus: Nullable<TConnectionStatus>;
    FTarget: Nullable<string>;
    function GetStatus: TConnectionStatus;
    procedure SetStatus(const Value: TConnectionStatus);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
  strict protected
    function Obj: TGetConnectionStatusResponse;
  public
    function IsSetStatus: Boolean;
    function IsSetTarget: Boolean;
    property Status: TConnectionStatus read GetStatus write SetStatus;
    property Target: string read GetTarget write SetTarget;
  end;
  
implementation

{ TGetConnectionStatusResponse }

function TGetConnectionStatusResponse.Obj: TGetConnectionStatusResponse;
begin
  Result := Self;
end;

function TGetConnectionStatusResponse.GetStatus: TConnectionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetConnectionStatusResponse.SetStatus(const Value: TConnectionStatus);
begin
  FStatus := Value;
end;

function TGetConnectionStatusResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetConnectionStatusResponse.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TGetConnectionStatusResponse.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TGetConnectionStatusResponse.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

end.
