unit AWS.Rekognition.Model.DeleteCollectionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeleteCollectionResponse = class;
  
  IDeleteCollectionResponse = interface(IAmazonWebServiceResponse)
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
    function Obj: TDeleteCollectionResponse;
    function IsSetStatusCode: Boolean;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
  end;
  
  TDeleteCollectionResponse = class(TAmazonWebServiceResponse, IDeleteCollectionResponse)
  strict private
    FStatusCode: Nullable<Integer>;
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
  strict protected
    function Obj: TDeleteCollectionResponse;
  public
    function IsSetStatusCode: Boolean;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
  end;
  
implementation

{ TDeleteCollectionResponse }

function TDeleteCollectionResponse.Obj: TDeleteCollectionResponse;
begin
  Result := Self;
end;

function TDeleteCollectionResponse.GetStatusCode: Integer;
begin
  Result := FStatusCode.ValueOrDefault;
end;

procedure TDeleteCollectionResponse.SetStatusCode(const Value: Integer);
begin
  FStatusCode := Value;
end;

function TDeleteCollectionResponse.IsSetStatusCode: Boolean;
begin
  Result := FStatusCode.HasValue;
end;

end.
