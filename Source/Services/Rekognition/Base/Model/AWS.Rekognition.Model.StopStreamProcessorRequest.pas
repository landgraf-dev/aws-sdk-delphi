unit AWS.Rekognition.Model.StopStreamProcessorRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TStopStreamProcessorRequest = class;
  
  IStopStreamProcessorRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TStopStreamProcessorRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TStopStreamProcessorRequest = class(TAmazonRekognitionRequest, IStopStreamProcessorRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TStopStreamProcessorRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TStopStreamProcessorRequest }

function TStopStreamProcessorRequest.Obj: TStopStreamProcessorRequest;
begin
  Result := Self;
end;

function TStopStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TStopStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TStopStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
