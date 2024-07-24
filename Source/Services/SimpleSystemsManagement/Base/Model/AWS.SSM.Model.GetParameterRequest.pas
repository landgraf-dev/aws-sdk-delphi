unit AWS.SSM.Model.GetParameterRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetParameterRequest = class;
  
  IGetParameterRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
    function Obj: TGetParameterRequest;
    function IsSetName: Boolean;
    function IsSetWithDecryption: Boolean;
    property Name: string read GetName write SetName;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
  TGetParameterRequest = class(TAmazonSimpleSystemsManagementRequest, IGetParameterRequest)
  strict private
    FName: Nullable<string>;
    FWithDecryption: Nullable<Boolean>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
  strict protected
    function Obj: TGetParameterRequest;
  public
    function IsSetName: Boolean;
    function IsSetWithDecryption: Boolean;
    property Name: string read GetName write SetName;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
implementation

{ TGetParameterRequest }

function TGetParameterRequest.Obj: TGetParameterRequest;
begin
  Result := Self;
end;

function TGetParameterRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetParameterRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetParameterRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetParameterRequest.GetWithDecryption: Boolean;
begin
  Result := FWithDecryption.ValueOrDefault;
end;

procedure TGetParameterRequest.SetWithDecryption(const Value: Boolean);
begin
  FWithDecryption := Value;
end;

function TGetParameterRequest.IsSetWithDecryption: Boolean;
begin
  Result := FWithDecryption.HasValue;
end;

end.
