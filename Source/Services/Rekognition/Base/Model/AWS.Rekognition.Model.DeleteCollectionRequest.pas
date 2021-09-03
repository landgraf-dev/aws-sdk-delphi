unit AWS.Rekognition.Model.DeleteCollectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDeleteCollectionRequest = class;
  
  IDeleteCollectionRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function Obj: TDeleteCollectionRequest;
    function IsSetCollectionId: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
  end;
  
  TDeleteCollectionRequest = class(TAmazonRekognitionRequest, IDeleteCollectionRequest)
  strict private
    FCollectionId: Nullable<string>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
  strict protected
    function Obj: TDeleteCollectionRequest;
  public
    function IsSetCollectionId: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
  end;
  
implementation

{ TDeleteCollectionRequest }

function TDeleteCollectionRequest.Obj: TDeleteCollectionRequest;
begin
  Result := Self;
end;

function TDeleteCollectionRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TDeleteCollectionRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TDeleteCollectionRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

end.
