unit AWS.Translate.Model.DeleteTerminologyRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable;

type
  TDeleteTerminologyRequest = class;
  
  IDeleteTerminologyRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteTerminologyRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteTerminologyRequest = class(TAmazonTranslateRequest, IDeleteTerminologyRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteTerminologyRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteTerminologyRequest }

function TDeleteTerminologyRequest.Obj: TDeleteTerminologyRequest;
begin
  Result := Self;
end;

function TDeleteTerminologyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteTerminologyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteTerminologyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
