unit AWS.SESv2.Model.GetImportJobRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetImportJobRequest = class;
  
  IGetImportJobRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TGetImportJobRequest;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TGetImportJobRequest = class(TAmazonSimpleEmailServiceV2Request, IGetImportJobRequest)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TGetImportJobRequest;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TGetImportJobRequest }

function TGetImportJobRequest.Obj: TGetImportJobRequest;
begin
  Result := Self;
end;

function TGetImportJobRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetImportJobRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetImportJobRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
