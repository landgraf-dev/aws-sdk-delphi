unit AWS.Rekognition.Model.CreateCollectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateCollectionResponse = class;
  
  ICreateCollectionResponse = interface(IAmazonWebServiceResponse)
    function GetCollectionArn: string;
    procedure SetCollectionArn(const Value: string);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
    function Obj: TCreateCollectionResponse;
    function IsSetCollectionArn: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetStatusCode: Boolean;
    property CollectionArn: string read GetCollectionArn write SetCollectionArn;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
  end;
  
  TCreateCollectionResponse = class(TAmazonWebServiceResponse, ICreateCollectionResponse)
  strict private
    FCollectionArn: Nullable<string>;
    FFaceModelVersion: Nullable<string>;
    FStatusCode: Nullable<Integer>;
    function GetCollectionArn: string;
    procedure SetCollectionArn(const Value: string);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
  strict protected
    function Obj: TCreateCollectionResponse;
  public
    function IsSetCollectionArn: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetStatusCode: Boolean;
    property CollectionArn: string read GetCollectionArn write SetCollectionArn;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
  end;
  
implementation

{ TCreateCollectionResponse }

function TCreateCollectionResponse.Obj: TCreateCollectionResponse;
begin
  Result := Self;
end;

function TCreateCollectionResponse.GetCollectionArn: string;
begin
  Result := FCollectionArn.ValueOrDefault;
end;

procedure TCreateCollectionResponse.SetCollectionArn(const Value: string);
begin
  FCollectionArn := Value;
end;

function TCreateCollectionResponse.IsSetCollectionArn: Boolean;
begin
  Result := FCollectionArn.HasValue;
end;

function TCreateCollectionResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TCreateCollectionResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TCreateCollectionResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

function TCreateCollectionResponse.GetStatusCode: Integer;
begin
  Result := FStatusCode.ValueOrDefault;
end;

procedure TCreateCollectionResponse.SetStatusCode(const Value: Integer);
begin
  FStatusCode := Value;
end;

function TCreateCollectionResponse.IsSetStatusCode: Boolean;
begin
  Result := FStatusCode.HasValue;
end;

end.
