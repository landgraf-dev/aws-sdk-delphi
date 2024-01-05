unit AWS.S3.Model.Bucket;

interface

uses
  AWS.Nullable;

type
  TBucket = class;
  
  IBucket = interface
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TBucket;
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property BucketName: string read GetName write SetName;
    property IsSetBucketName: Boolean read IsSetName;
  end;
  
  TBucket = class
  strict private
    FCreationDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TBucket;
  public
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property BucketName: string read GetName write SetName;
    property IsSetBucketName: Boolean read IsSetName;
  end;
  
implementation

{ TBucket }

function TBucket.Obj: TBucket;
begin
  Result := Self;
end;

function TBucket.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TBucket.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TBucket.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TBucket.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TBucket.SetName(const Value: string);
begin
  FName := Value;
end;

function TBucket.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
