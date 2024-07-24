unit AWS.SSM.Model.GetParameterResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.Parameter;

type
  TGetParameterResponse = class;
  
  IGetParameterResponse = interface(IAmazonWebServiceResponse)
    function GetParameter: TParameter;
    procedure SetParameter(const Value: TParameter);
    function GetKeepParameter: Boolean;
    procedure SetKeepParameter(const Value: Boolean);
    function Obj: TGetParameterResponse;
    function IsSetParameter: Boolean;
    property Parameter: TParameter read GetParameter write SetParameter;
    property KeepParameter: Boolean read GetKeepParameter write SetKeepParameter;
  end;
  
  TGetParameterResponse = class(TAmazonWebServiceResponse, IGetParameterResponse)
  strict private
    FParameter: TParameter;
    FKeepParameter: Boolean;
    function GetParameter: TParameter;
    procedure SetParameter(const Value: TParameter);
    function GetKeepParameter: Boolean;
    procedure SetKeepParameter(const Value: Boolean);
  strict protected
    function Obj: TGetParameterResponse;
  public
    destructor Destroy; override;
    function IsSetParameter: Boolean;
    property Parameter: TParameter read GetParameter write SetParameter;
    property KeepParameter: Boolean read GetKeepParameter write SetKeepParameter;
  end;
  
implementation

{ TGetParameterResponse }

destructor TGetParameterResponse.Destroy;
begin
  Parameter := nil;
  inherited;
end;

function TGetParameterResponse.Obj: TGetParameterResponse;
begin
  Result := Self;
end;

function TGetParameterResponse.GetParameter: TParameter;
begin
  Result := FParameter;
end;

procedure TGetParameterResponse.SetParameter(const Value: TParameter);
begin
  if FParameter <> Value then
  begin
    if not KeepParameter then
      FParameter.Free;
    FParameter := Value;
  end;
end;

function TGetParameterResponse.GetKeepParameter: Boolean;
begin
  Result := FKeepParameter;
end;

procedure TGetParameterResponse.SetKeepParameter(const Value: Boolean);
begin
  FKeepParameter := Value;
end;

function TGetParameterResponse.IsSetParameter: Boolean;
begin
  Result := FParameter <> nil;
end;

end.
