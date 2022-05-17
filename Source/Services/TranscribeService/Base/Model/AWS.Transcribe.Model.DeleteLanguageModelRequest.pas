unit AWS.Transcribe.Model.DeleteLanguageModelRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteLanguageModelRequest = class;
  
  IDeleteLanguageModelRequest = interface
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function Obj: TDeleteLanguageModelRequest;
    function IsSetModelName: Boolean;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
  TDeleteLanguageModelRequest = class(TAmazonTranscribeServiceRequest, IDeleteLanguageModelRequest)
  strict private
    FModelName: Nullable<string>;
    function GetModelName: string;
    procedure SetModelName(const Value: string);
  strict protected
    function Obj: TDeleteLanguageModelRequest;
  public
    function IsSetModelName: Boolean;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
implementation

{ TDeleteLanguageModelRequest }

function TDeleteLanguageModelRequest.Obj: TDeleteLanguageModelRequest;
begin
  Result := Self;
end;

function TDeleteLanguageModelRequest.GetModelName: string;
begin
  Result := FModelName.ValueOrDefault;
end;

procedure TDeleteLanguageModelRequest.SetModelName(const Value: string);
begin
  FModelName := Value;
end;

function TDeleteLanguageModelRequest.IsSetModelName: Boolean;
begin
  Result := FModelName.HasValue;
end;

end.
