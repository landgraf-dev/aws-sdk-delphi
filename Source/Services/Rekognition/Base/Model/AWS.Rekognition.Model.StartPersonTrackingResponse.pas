unit AWS.Rekognition.Model.StartPersonTrackingResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartPersonTrackingResponse = class;
  
  IStartPersonTrackingResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartPersonTrackingResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartPersonTrackingResponse = class(TAmazonWebServiceResponse, IStartPersonTrackingResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartPersonTrackingResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartPersonTrackingResponse }

function TStartPersonTrackingResponse.Obj: TStartPersonTrackingResponse;
begin
  Result := Self;
end;

function TStartPersonTrackingResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartPersonTrackingResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartPersonTrackingResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
