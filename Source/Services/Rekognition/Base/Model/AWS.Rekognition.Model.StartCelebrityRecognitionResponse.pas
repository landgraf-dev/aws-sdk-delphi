unit AWS.Rekognition.Model.StartCelebrityRecognitionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartCelebrityRecognitionResponse = class;
  
  IStartCelebrityRecognitionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartCelebrityRecognitionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartCelebrityRecognitionResponse = class(TAmazonWebServiceResponse, IStartCelebrityRecognitionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartCelebrityRecognitionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartCelebrityRecognitionResponse }

function TStartCelebrityRecognitionResponse.Obj: TStartCelebrityRecognitionResponse;
begin
  Result := Self;
end;

function TStartCelebrityRecognitionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartCelebrityRecognitionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartCelebrityRecognitionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
