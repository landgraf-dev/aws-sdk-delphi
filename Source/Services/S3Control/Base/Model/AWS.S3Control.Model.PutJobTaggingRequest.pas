unit AWS.S3Control.Model.PutJobTaggingRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Model.S3Tag;

type
  TPutJobTaggingRequest = class;
  
  IPutJobTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TPutJobTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TPutJobTaggingRequest = class(TAmazonS3ControlRequest, IPutJobTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    FTags: TObjectList<TS3Tag>;
    FKeepTags: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TPutJobTaggingRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TPutJobTaggingRequest }

constructor TPutJobTaggingRequest.Create;
begin
  inherited;
  FTags := TObjectList<TS3Tag>.Create;
end;

destructor TPutJobTaggingRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TPutJobTaggingRequest.Obj: TPutJobTaggingRequest;
begin
  Result := Self;
end;

function TPutJobTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutJobTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutJobTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutJobTaggingRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TPutJobTaggingRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TPutJobTaggingRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TPutJobTaggingRequest.GetTags: TObjectList<TS3Tag>;
begin
  Result := FTags;
end;

procedure TPutJobTaggingRequest.SetTags(const Value: TObjectList<TS3Tag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TPutJobTaggingRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TPutJobTaggingRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TPutJobTaggingRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
