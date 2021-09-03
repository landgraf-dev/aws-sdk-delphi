unit AWS.Rekognition.Model.DescribeStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDescribeStreamProcessorRequest = class;
  
  IDescribeStreamProcessorRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDescribeStreamProcessorRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDescribeStreamProcessorRequest = class(TAmazonRekognitionRequest, IDescribeStreamProcessorRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDescribeStreamProcessorRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDescribeStreamProcessorRequest }

function TDescribeStreamProcessorRequest.Obj: TDescribeStreamProcessorRequest;
begin
  Result := Self;
end;

function TDescribeStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDescribeStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDescribeStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
