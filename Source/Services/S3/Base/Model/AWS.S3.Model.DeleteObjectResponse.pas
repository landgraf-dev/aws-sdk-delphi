unit AWS.S3.Model.DeleteObjectResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TDeleteObjectResponse = class;
  
  IDeleteObjectResponse = interface(IAmazonWebServiceResponse)
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeleteObjectResponse;
    function IsSetDeleteMarker: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetVersionId: Boolean;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeleteObjectResponse = class(TAmazonWebServiceResponse, IDeleteObjectResponse)
  strict private
    FDeleteMarker: Nullable<Boolean>;
    FRequestCharged: Nullable<TRequestCharged>;
    FVersionId: Nullable<string>;
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeleteObjectResponse;
  public
    function IsSetDeleteMarker: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetVersionId: Boolean;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeleteObjectResponse }

function TDeleteObjectResponse.Obj: TDeleteObjectResponse;
begin
  Result := Self;
end;

function TDeleteObjectResponse.GetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.ValueOrDefault;
end;

procedure TDeleteObjectResponse.SetDeleteMarker(const Value: Boolean);
begin
  FDeleteMarker := Value;
end;

function TDeleteObjectResponse.IsSetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.HasValue;
end;

function TDeleteObjectResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TDeleteObjectResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TDeleteObjectResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TDeleteObjectResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeleteObjectResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeleteObjectResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
