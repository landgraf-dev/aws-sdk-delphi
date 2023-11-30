unit AWS.Translate.Model.GetParallelDataRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable;

type
  TGetParallelDataRequest = class;
  
  IGetParallelDataRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetParallelDataRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TGetParallelDataRequest = class(TAmazonTranslateRequest, IGetParallelDataRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetParallelDataRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetParallelDataRequest }

function TGetParallelDataRequest.Obj: TGetParallelDataRequest;
begin
  Result := Self;
end;

function TGetParallelDataRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetParallelDataRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetParallelDataRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
