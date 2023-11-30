unit AWS.Translate.Model.StopTextTranslationJobRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable;

type
  TStopTextTranslationJobRequest = class;
  
  IStopTextTranslationJobRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStopTextTranslationJobRequest;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStopTextTranslationJobRequest = class(TAmazonTranslateRequest, IStopTextTranslationJobRequest)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStopTextTranslationJobRequest;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStopTextTranslationJobRequest }

function TStopTextTranslationJobRequest.Obj: TStopTextTranslationJobRequest;
begin
  Result := Self;
end;

function TStopTextTranslationJobRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStopTextTranslationJobRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStopTextTranslationJobRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
