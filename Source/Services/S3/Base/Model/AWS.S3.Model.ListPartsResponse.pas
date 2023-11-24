unit AWS.S3.Model.ListPartsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.Initiator, 
  AWS.S3.Model.Owner, 
  AWS.S3.Model.Part, 
  AWS.S3.Enums;

type
  TListPartsResponse = class;
  
  IListPartsResponse = interface(IAmazonWebServiceResponse)
    function GetAbortDate: TDateTime;
    procedure SetAbortDate(const Value: TDateTime);
    function GetAbortRuleId: string;
    procedure SetAbortRuleId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetInitiator: TInitiator;
    procedure SetInitiator(const Value: TInitiator);
    function GetKeepInitiator: Boolean;
    procedure SetKeepInitiator(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMaxParts: Integer;
    procedure SetMaxParts(const Value: Integer);
    function GetNextPartNumberMarker: Integer;
    procedure SetNextPartNumberMarker(const Value: Integer);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetPartNumberMarker: Integer;
    procedure SetPartNumberMarker(const Value: Integer);
    function GetParts: TObjectList<TPart>;
    procedure SetParts(const Value: TObjectList<TPart>);
    function GetKeepParts: Boolean;
    procedure SetKeepParts(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TListPartsResponse;
    function IsSetAbortDate: Boolean;
    function IsSetAbortRuleId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetInitiator: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKey: Boolean;
    function IsSetMaxParts: Boolean;
    function IsSetNextPartNumberMarker: Boolean;
    function IsSetOwner: Boolean;
    function IsSetPartNumberMarker: Boolean;
    function IsSetParts: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetUploadId: Boolean;
    property AbortDate: TDateTime read GetAbortDate write SetAbortDate;
    property AbortRuleId: string read GetAbortRuleId write SetAbortRuleId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Initiator: TInitiator read GetInitiator write SetInitiator;
    property KeepInitiator: Boolean read GetKeepInitiator write SetKeepInitiator;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property Key: string read GetKey write SetKey;
    property MaxParts: Integer read GetMaxParts write SetMaxParts;
    property NextPartNumberMarker: Integer read GetNextPartNumberMarker write SetNextPartNumberMarker;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property PartNumberMarker: Integer read GetPartNumberMarker write SetPartNumberMarker;
    property Parts: TObjectList<TPart> read GetParts write SetParts;
    property KeepParts: Boolean read GetKeepParts write SetKeepParts;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TListPartsResponse = class(TAmazonWebServiceResponse, IListPartsResponse)
  strict private
    FAbortDate: Nullable<TDateTime>;
    FAbortRuleId: Nullable<string>;
    FBucketName: Nullable<string>;
    FInitiator: TInitiator;
    FKeepInitiator: Boolean;
    FIsTruncated: Nullable<Boolean>;
    FKey: Nullable<string>;
    FMaxParts: Nullable<Integer>;
    FNextPartNumberMarker: Nullable<Integer>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FPartNumberMarker: Nullable<Integer>;
    FParts: TObjectList<TPart>;
    FKeepParts: Boolean;
    FRequestCharged: Nullable<TRequestCharged>;
    FStorageClass: Nullable<TStorageClass>;
    FUploadId: Nullable<string>;
    function GetAbortDate: TDateTime;
    procedure SetAbortDate(const Value: TDateTime);
    function GetAbortRuleId: string;
    procedure SetAbortRuleId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetInitiator: TInitiator;
    procedure SetInitiator(const Value: TInitiator);
    function GetKeepInitiator: Boolean;
    procedure SetKeepInitiator(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMaxParts: Integer;
    procedure SetMaxParts(const Value: Integer);
    function GetNextPartNumberMarker: Integer;
    procedure SetNextPartNumberMarker(const Value: Integer);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetPartNumberMarker: Integer;
    procedure SetPartNumberMarker(const Value: Integer);
    function GetParts: TObjectList<TPart>;
    procedure SetParts(const Value: TObjectList<TPart>);
    function GetKeepParts: Boolean;
    procedure SetKeepParts(const Value: Boolean);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TListPartsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAbortDate: Boolean;
    function IsSetAbortRuleId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetInitiator: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKey: Boolean;
    function IsSetMaxParts: Boolean;
    function IsSetNextPartNumberMarker: Boolean;
    function IsSetOwner: Boolean;
    function IsSetPartNumberMarker: Boolean;
    function IsSetParts: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetUploadId: Boolean;
    property AbortDate: TDateTime read GetAbortDate write SetAbortDate;
    property AbortRuleId: string read GetAbortRuleId write SetAbortRuleId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Initiator: TInitiator read GetInitiator write SetInitiator;
    property KeepInitiator: Boolean read GetKeepInitiator write SetKeepInitiator;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property Key: string read GetKey write SetKey;
    property MaxParts: Integer read GetMaxParts write SetMaxParts;
    property NextPartNumberMarker: Integer read GetNextPartNumberMarker write SetNextPartNumberMarker;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property PartNumberMarker: Integer read GetPartNumberMarker write SetPartNumberMarker;
    property Parts: TObjectList<TPart> read GetParts write SetParts;
    property KeepParts: Boolean read GetKeepParts write SetKeepParts;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TListPartsResponse }

constructor TListPartsResponse.Create;
begin
  inherited;
  FParts := TObjectList<TPart>.Create;
end;

destructor TListPartsResponse.Destroy;
begin
  Parts := nil;
  Owner := nil;
  Initiator := nil;
  inherited;
end;

function TListPartsResponse.Obj: TListPartsResponse;
begin
  Result := Self;
end;

function TListPartsResponse.GetAbortDate: TDateTime;
begin
  Result := FAbortDate.ValueOrDefault;
end;

procedure TListPartsResponse.SetAbortDate(const Value: TDateTime);
begin
  FAbortDate := Value;
end;

function TListPartsResponse.IsSetAbortDate: Boolean;
begin
  Result := FAbortDate.HasValue;
end;

function TListPartsResponse.GetAbortRuleId: string;
begin
  Result := FAbortRuleId.ValueOrDefault;
end;

procedure TListPartsResponse.SetAbortRuleId(const Value: string);
begin
  FAbortRuleId := Value;
end;

function TListPartsResponse.IsSetAbortRuleId: Boolean;
begin
  Result := FAbortRuleId.HasValue;
end;

function TListPartsResponse.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListPartsResponse.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListPartsResponse.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListPartsResponse.GetInitiator: TInitiator;
begin
  Result := FInitiator;
end;

procedure TListPartsResponse.SetInitiator(const Value: TInitiator);
begin
  if FInitiator <> Value then
  begin
    if not KeepInitiator then
      FInitiator.Free;
    FInitiator := Value;
  end;
end;

function TListPartsResponse.GetKeepInitiator: Boolean;
begin
  Result := FKeepInitiator;
end;

procedure TListPartsResponse.SetKeepInitiator(const Value: Boolean);
begin
  FKeepInitiator := Value;
end;

function TListPartsResponse.IsSetInitiator: Boolean;
begin
  Result := FInitiator <> nil;
end;

function TListPartsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListPartsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListPartsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListPartsResponse.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TListPartsResponse.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TListPartsResponse.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TListPartsResponse.GetMaxParts: Integer;
begin
  Result := FMaxParts.ValueOrDefault;
end;

procedure TListPartsResponse.SetMaxParts(const Value: Integer);
begin
  FMaxParts := Value;
end;

function TListPartsResponse.IsSetMaxParts: Boolean;
begin
  Result := FMaxParts.HasValue;
end;

function TListPartsResponse.GetNextPartNumberMarker: Integer;
begin
  Result := FNextPartNumberMarker.ValueOrDefault;
end;

procedure TListPartsResponse.SetNextPartNumberMarker(const Value: Integer);
begin
  FNextPartNumberMarker := Value;
end;

function TListPartsResponse.IsSetNextPartNumberMarker: Boolean;
begin
  Result := FNextPartNumberMarker.HasValue;
end;

function TListPartsResponse.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TListPartsResponse.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TListPartsResponse.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TListPartsResponse.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TListPartsResponse.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TListPartsResponse.GetPartNumberMarker: Integer;
begin
  Result := FPartNumberMarker.ValueOrDefault;
end;

procedure TListPartsResponse.SetPartNumberMarker(const Value: Integer);
begin
  FPartNumberMarker := Value;
end;

function TListPartsResponse.IsSetPartNumberMarker: Boolean;
begin
  Result := FPartNumberMarker.HasValue;
end;

function TListPartsResponse.GetParts: TObjectList<TPart>;
begin
  Result := FParts;
end;

procedure TListPartsResponse.SetParts(const Value: TObjectList<TPart>);
begin
  if FParts <> Value then
  begin
    if not KeepParts then
      FParts.Free;
    FParts := Value;
  end;
end;

function TListPartsResponse.GetKeepParts: Boolean;
begin
  Result := FKeepParts;
end;

procedure TListPartsResponse.SetKeepParts(const Value: Boolean);
begin
  FKeepParts := Value;
end;

function TListPartsResponse.IsSetParts: Boolean;
begin
  Result := (FParts <> nil) and (FParts.Count > 0);
end;

function TListPartsResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TListPartsResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TListPartsResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TListPartsResponse.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TListPartsResponse.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TListPartsResponse.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TListPartsResponse.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TListPartsResponse.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TListPartsResponse.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
