unit AWS.Rekognition.Model.CreateStreamProcessorResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateStreamProcessorResponse = class;
  
  ICreateStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function GetStreamProcessorArn: string;
    procedure SetStreamProcessorArn(const Value: string);
    function Obj: TCreateStreamProcessorResponse;
    function IsSetStreamProcessorArn: Boolean;
    property StreamProcessorArn: string read GetStreamProcessorArn write SetStreamProcessorArn;
  end;
  
  TCreateStreamProcessorResponse = class(TAmazonWebServiceResponse, ICreateStreamProcessorResponse)
  strict private
    FStreamProcessorArn: Nullable<string>;
    function GetStreamProcessorArn: string;
    procedure SetStreamProcessorArn(const Value: string);
  strict protected
    function Obj: TCreateStreamProcessorResponse;
  public
    function IsSetStreamProcessorArn: Boolean;
    property StreamProcessorArn: string read GetStreamProcessorArn write SetStreamProcessorArn;
  end;
  
implementation

{ TCreateStreamProcessorResponse }

function TCreateStreamProcessorResponse.Obj: TCreateStreamProcessorResponse;
begin
  Result := Self;
end;

function TCreateStreamProcessorResponse.GetStreamProcessorArn: string;
begin
  Result := FStreamProcessorArn.ValueOrDefault;
end;

procedure TCreateStreamProcessorResponse.SetStreamProcessorArn(const Value: string);
begin
  FStreamProcessorArn := Value;
end;

function TCreateStreamProcessorResponse.IsSetStreamProcessorArn: Boolean;
begin
  Result := FStreamProcessorArn.HasValue;
end;

end.
