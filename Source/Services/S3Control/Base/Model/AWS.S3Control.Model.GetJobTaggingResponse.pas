unit AWS.S3Control.Model.GetJobTaggingResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.S3Tag;

type
  TGetJobTaggingResponse = class;
  
  IGetJobTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TGetJobTaggingResponse;
    function IsSetTags: Boolean;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TGetJobTaggingResponse = class(TAmazonWebServiceResponse, IGetJobTaggingResponse)
  strict private
    FTags: TObjectList<TS3Tag>;
    FKeepTags: Boolean;
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TGetJobTaggingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTags: Boolean;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TGetJobTaggingResponse }

constructor TGetJobTaggingResponse.Create;
begin
  inherited;
  FTags := TObjectList<TS3Tag>.Create;
end;

destructor TGetJobTaggingResponse.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TGetJobTaggingResponse.Obj: TGetJobTaggingResponse;
begin
  Result := Self;
end;

function TGetJobTaggingResponse.GetTags: TObjectList<TS3Tag>;
begin
  Result := FTags;
end;

procedure TGetJobTaggingResponse.SetTags(const Value: TObjectList<TS3Tag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetJobTaggingResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetJobTaggingResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetJobTaggingResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
