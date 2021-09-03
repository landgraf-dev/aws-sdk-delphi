unit AWS.Rekognition.Model.DeleteStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDeleteStreamProcessorRequest = class;
  
  IDeleteStreamProcessorRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteStreamProcessorRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteStreamProcessorRequest = class(TAmazonRekognitionRequest, IDeleteStreamProcessorRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteStreamProcessorRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteStreamProcessorRequest }

function TDeleteStreamProcessorRequest.Obj: TDeleteStreamProcessorRequest;
begin
  Result := Self;
end;

function TDeleteStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
