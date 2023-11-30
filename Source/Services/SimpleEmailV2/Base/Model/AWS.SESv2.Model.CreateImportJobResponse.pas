unit AWS.SESv2.Model.CreateImportJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateImportJobResponse = class;
  
  ICreateImportJobResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TCreateImportJobResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TCreateImportJobResponse = class(TAmazonWebServiceResponse, ICreateImportJobResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TCreateImportJobResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TCreateImportJobResponse }

function TCreateImportJobResponse.Obj: TCreateImportJobResponse;
begin
  Result := Self;
end;

function TCreateImportJobResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TCreateImportJobResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TCreateImportJobResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
