unit AWS.Rekognition.Model.DescribeCollectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TDescribeCollectionResponse = class;
  
  IDescribeCollectionResponse = interface(IAmazonWebServiceResponse)
    function GetCollectionARN: string;
    procedure SetCollectionARN(const Value: string);
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetFaceCount: Int64;
    procedure SetFaceCount(const Value: Int64);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function Obj: TDescribeCollectionResponse;
    function IsSetCollectionARN: Boolean;
    function IsSetCreationTimestamp: Boolean;
    function IsSetFaceCount: Boolean;
    function IsSetFaceModelVersion: Boolean;
    property CollectionARN: string read GetCollectionARN write SetCollectionARN;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property FaceCount: Int64 read GetFaceCount write SetFaceCount;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
  end;
  
  TDescribeCollectionResponse = class(TAmazonWebServiceResponse, IDescribeCollectionResponse)
  strict private
    FCollectionARN: Nullable<string>;
    FCreationTimestamp: Nullable<TDateTime>;
    FFaceCount: Nullable<Int64>;
    FFaceModelVersion: Nullable<string>;
    function GetCollectionARN: string;
    procedure SetCollectionARN(const Value: string);
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetFaceCount: Int64;
    procedure SetFaceCount(const Value: Int64);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
  strict protected
    function Obj: TDescribeCollectionResponse;
  public
    function IsSetCollectionARN: Boolean;
    function IsSetCreationTimestamp: Boolean;
    function IsSetFaceCount: Boolean;
    function IsSetFaceModelVersion: Boolean;
    property CollectionARN: string read GetCollectionARN write SetCollectionARN;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property FaceCount: Int64 read GetFaceCount write SetFaceCount;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
  end;
  
implementation

{ TDescribeCollectionResponse }

function TDescribeCollectionResponse.Obj: TDescribeCollectionResponse;
begin
  Result := Self;
end;

function TDescribeCollectionResponse.GetCollectionARN: string;
begin
  Result := FCollectionARN.ValueOrDefault;
end;

procedure TDescribeCollectionResponse.SetCollectionARN(const Value: string);
begin
  FCollectionARN := Value;
end;

function TDescribeCollectionResponse.IsSetCollectionARN: Boolean;
begin
  Result := FCollectionARN.HasValue;
end;

function TDescribeCollectionResponse.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TDescribeCollectionResponse.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TDescribeCollectionResponse.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TDescribeCollectionResponse.GetFaceCount: Int64;
begin
  Result := FFaceCount.ValueOrDefault;
end;

procedure TDescribeCollectionResponse.SetFaceCount(const Value: Int64);
begin
  FFaceCount := Value;
end;

function TDescribeCollectionResponse.IsSetFaceCount: Boolean;
begin
  Result := FFaceCount.HasValue;
end;

function TDescribeCollectionResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TDescribeCollectionResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TDescribeCollectionResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

end.
