unit AWS.Textract.Model.StartDocumentTextDetectionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartDocumentTextDetectionResponse = class;
  
  IStartDocumentTextDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartDocumentTextDetectionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartDocumentTextDetectionResponse = class(TAmazonWebServiceResponse, IStartDocumentTextDetectionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartDocumentTextDetectionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartDocumentTextDetectionResponse }

function TStartDocumentTextDetectionResponse.Obj: TStartDocumentTextDetectionResponse;
begin
  Result := Self;
end;

function TStartDocumentTextDetectionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartDocumentTextDetectionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartDocumentTextDetectionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
