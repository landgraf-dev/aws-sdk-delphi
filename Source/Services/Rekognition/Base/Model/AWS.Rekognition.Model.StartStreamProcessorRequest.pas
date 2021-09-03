unit AWS.Rekognition.Model.StartStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TStartStreamProcessorRequest = class;
  
  IStartStreamProcessorRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TStartStreamProcessorRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TStartStreamProcessorRequest = class(TAmazonRekognitionRequest, IStartStreamProcessorRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TStartStreamProcessorRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TStartStreamProcessorRequest }

function TStartStreamProcessorRequest.Obj: TStartStreamProcessorRequest;
begin
  Result := Self;
end;

function TStartStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TStartStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TStartStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
