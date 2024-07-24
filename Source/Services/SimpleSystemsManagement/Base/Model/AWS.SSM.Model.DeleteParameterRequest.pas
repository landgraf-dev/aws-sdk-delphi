unit AWS.SSM.Model.DeleteParameterRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteParameterRequest = class;
  
  IDeleteParameterRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteParameterRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteParameterRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteParameterRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteParameterRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteParameterRequest }

function TDeleteParameterRequest.Obj: TDeleteParameterRequest;
begin
  Result := Self;
end;

function TDeleteParameterRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteParameterRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteParameterRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
