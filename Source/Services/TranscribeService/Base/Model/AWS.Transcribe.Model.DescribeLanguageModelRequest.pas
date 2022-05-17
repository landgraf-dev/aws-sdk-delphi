unit AWS.Transcribe.Model.DescribeLanguageModelRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDescribeLanguageModelRequest = class;
  
  IDescribeLanguageModelRequest = interface
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function Obj: TDescribeLanguageModelRequest;
    function IsSetModelName: Boolean;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
  TDescribeLanguageModelRequest = class(TAmazonTranscribeServiceRequest, IDescribeLanguageModelRequest)
  strict private
    FModelName: Nullable<string>;
    function GetModelName: string;
    procedure SetModelName(const Value: string);
  strict protected
    function Obj: TDescribeLanguageModelRequest;
  public
    function IsSetModelName: Boolean;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
implementation

{ TDescribeLanguageModelRequest }

function TDescribeLanguageModelRequest.Obj: TDescribeLanguageModelRequest;
begin
  Result := Self;
end;

function TDescribeLanguageModelRequest.GetModelName: string;
begin
  Result := FModelName.ValueOrDefault;
end;

procedure TDescribeLanguageModelRequest.SetModelName(const Value: string);
begin
  FModelName := Value;
end;

function TDescribeLanguageModelRequest.IsSetModelName: Boolean;
begin
  Result := FModelName.HasValue;
end;

end.
