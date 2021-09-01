unit AWS.Translate.Model.DeleteParallelDataRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Model.Request;

type
  TDeleteParallelDataRequest = class;
  
  IDeleteParallelDataRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteParallelDataRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteParallelDataRequest = class(TAmazonTranslateRequest, IDeleteParallelDataRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteParallelDataRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteParallelDataRequest }

function TDeleteParallelDataRequest.Obj: TDeleteParallelDataRequest;
begin
  Result := Self;
end;

function TDeleteParallelDataRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteParallelDataRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteParallelDataRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
