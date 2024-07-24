unit AWS.SSM.Model.CreateActivationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateActivationResponse = class;
  
  ICreateActivationResponse = interface(IAmazonWebServiceResponse)
    function GetActivationCode: string;
    procedure SetActivationCode(const Value: string);
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function Obj: TCreateActivationResponse;
    function IsSetActivationCode: Boolean;
    function IsSetActivationId: Boolean;
    property ActivationCode: string read GetActivationCode write SetActivationCode;
    property ActivationId: string read GetActivationId write SetActivationId;
  end;
  
  TCreateActivationResponse = class(TAmazonWebServiceResponse, ICreateActivationResponse)
  strict private
    FActivationCode: Nullable<string>;
    FActivationId: Nullable<string>;
    function GetActivationCode: string;
    procedure SetActivationCode(const Value: string);
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
  strict protected
    function Obj: TCreateActivationResponse;
  public
    function IsSetActivationCode: Boolean;
    function IsSetActivationId: Boolean;
    property ActivationCode: string read GetActivationCode write SetActivationCode;
    property ActivationId: string read GetActivationId write SetActivationId;
  end;
  
implementation

{ TCreateActivationResponse }

function TCreateActivationResponse.Obj: TCreateActivationResponse;
begin
  Result := Self;
end;

function TCreateActivationResponse.GetActivationCode: string;
begin
  Result := FActivationCode.ValueOrDefault;
end;

procedure TCreateActivationResponse.SetActivationCode(const Value: string);
begin
  FActivationCode := Value;
end;

function TCreateActivationResponse.IsSetActivationCode: Boolean;
begin
  Result := FActivationCode.HasValue;
end;

function TCreateActivationResponse.GetActivationId: string;
begin
  Result := FActivationId.ValueOrDefault;
end;

procedure TCreateActivationResponse.SetActivationId(const Value: string);
begin
  FActivationId := Value;
end;

function TCreateActivationResponse.IsSetActivationId: Boolean;
begin
  Result := FActivationId.HasValue;
end;

end.
