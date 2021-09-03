unit AWS.Rekognition.Model.DescribeCollectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDescribeCollectionRequest = class;
  
  IDescribeCollectionRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function Obj: TDescribeCollectionRequest;
    function IsSetCollectionId: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
  end;
  
  TDescribeCollectionRequest = class(TAmazonRekognitionRequest, IDescribeCollectionRequest)
  strict private
    FCollectionId: Nullable<string>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
  strict protected
    function Obj: TDescribeCollectionRequest;
  public
    function IsSetCollectionId: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
  end;
  
implementation

{ TDescribeCollectionRequest }

function TDescribeCollectionRequest.Obj: TDescribeCollectionRequest;
begin
  Result := Self;
end;

function TDescribeCollectionRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TDescribeCollectionRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TDescribeCollectionRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

end.
