unit AWS.Rekognition.Model.StartStreamProcessorResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TStartStreamProcessorResponse = class;
  
  IStartStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TStartStreamProcessorResponse;
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TStartStreamProcessorResponse = class(TAmazonWebServiceResponse, IStartStreamProcessorResponse)
  strict private
    FSessionId: Nullable<string>;
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TStartStreamProcessorResponse;
  public
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TStartStreamProcessorResponse }

function TStartStreamProcessorResponse.Obj: TStartStreamProcessorResponse;
begin
  Result := Self;
end;

function TStartStreamProcessorResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TStartStreamProcessorResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TStartStreamProcessorResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
