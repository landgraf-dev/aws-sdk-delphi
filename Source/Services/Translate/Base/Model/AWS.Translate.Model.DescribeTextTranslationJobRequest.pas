unit AWS.Translate.Model.DescribeTextTranslationJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Model.Request;

type
  TDescribeTextTranslationJobRequest = class;
  
  IDescribeTextTranslationJobRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TDescribeTextTranslationJobRequest;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TDescribeTextTranslationJobRequest = class(TAmazonTranslateRequest, IDescribeTextTranslationJobRequest)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TDescribeTextTranslationJobRequest;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TDescribeTextTranslationJobRequest }

function TDescribeTextTranslationJobRequest.Obj: TDescribeTextTranslationJobRequest;
begin
  Result := Self;
end;

function TDescribeTextTranslationJobRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TDescribeTextTranslationJobRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TDescribeTextTranslationJobRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
