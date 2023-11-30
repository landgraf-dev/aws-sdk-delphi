unit AWS.Rekognition.Model.ListFacesRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TListFacesRequest = class;
  
  IListFacesRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListFacesRequest;
    function IsSetCollectionId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListFacesRequest = class(TAmazonRekognitionRequest, IListFacesRequest)
  strict private
    FCollectionId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListFacesRequest;
  public
    function IsSetCollectionId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListFacesRequest }

function TListFacesRequest.Obj: TListFacesRequest;
begin
  Result := Self;
end;

function TListFacesRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TListFacesRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TListFacesRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TListFacesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListFacesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListFacesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListFacesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListFacesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListFacesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
