unit AWS.Rekognition.Model.GetCelebrityInfoRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TGetCelebrityInfoRequest = class;
  
  IGetCelebrityInfoRequest = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TGetCelebrityInfoRequest;
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
  TGetCelebrityInfoRequest = class(TAmazonRekognitionRequest, IGetCelebrityInfoRequest)
  strict private
    FId: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TGetCelebrityInfoRequest;
  public
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TGetCelebrityInfoRequest }

function TGetCelebrityInfoRequest.Obj: TGetCelebrityInfoRequest;
begin
  Result := Self;
end;

function TGetCelebrityInfoRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TGetCelebrityInfoRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TGetCelebrityInfoRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
