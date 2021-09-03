unit AWS.Rekognition.Model.StartContentModerationResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TStartContentModerationResponse = class;
  
  IStartContentModerationResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartContentModerationResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartContentModerationResponse = class(TAmazonWebServiceResponse, IStartContentModerationResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartContentModerationResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartContentModerationResponse }

function TStartContentModerationResponse.Obj: TStartContentModerationResponse;
begin
  Result := Self;
end;

function TStartContentModerationResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartContentModerationResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartContentModerationResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
