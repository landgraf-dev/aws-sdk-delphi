unit AWS.S3Control.Model.CreateJobResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateJobResponse = class;
  
  ICreateJobResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TCreateJobResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TCreateJobResponse = class(TAmazonWebServiceResponse, ICreateJobResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TCreateJobResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TCreateJobResponse }

function TCreateJobResponse.Obj: TCreateJobResponse;
begin
  Result := Self;
end;

function TCreateJobResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TCreateJobResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TCreateJobResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
