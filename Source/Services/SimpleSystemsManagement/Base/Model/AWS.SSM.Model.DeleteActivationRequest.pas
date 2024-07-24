unit AWS.SSM.Model.DeleteActivationRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteActivationRequest = class;
  
  IDeleteActivationRequest = interface
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function Obj: TDeleteActivationRequest;
    function IsSetActivationId: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
  end;
  
  TDeleteActivationRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteActivationRequest)
  strict private
    FActivationId: Nullable<string>;
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
  strict protected
    function Obj: TDeleteActivationRequest;
  public
    function IsSetActivationId: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
  end;
  
implementation

{ TDeleteActivationRequest }

function TDeleteActivationRequest.Obj: TDeleteActivationRequest;
begin
  Result := Self;
end;

function TDeleteActivationRequest.GetActivationId: string;
begin
  Result := FActivationId.ValueOrDefault;
end;

procedure TDeleteActivationRequest.SetActivationId(const Value: string);
begin
  FActivationId := Value;
end;

function TDeleteActivationRequest.IsSetActivationId: Boolean;
begin
  Result := FActivationId.HasValue;
end;

end.
