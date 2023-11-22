unit AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.StorageLensTag;

type
  TGetStorageLensConfigurationTaggingResponse = class;
  
  IGetStorageLensConfigurationTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TGetStorageLensConfigurationTaggingResponse;
    function IsSetTags: Boolean;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TGetStorageLensConfigurationTaggingResponse = class(TAmazonWebServiceResponse, IGetStorageLensConfigurationTaggingResponse)
  strict private
    FTags: TObjectList<TStorageLensTag>;
    FKeepTags: Boolean;
    function GetTags: TObjectList<TStorageLensTag>;
    procedure SetTags(const Value: TObjectList<TStorageLensTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TGetStorageLensConfigurationTaggingResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTags: Boolean;
    property Tags: TObjectList<TStorageLensTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TGetStorageLensConfigurationTaggingResponse }

constructor TGetStorageLensConfigurationTaggingResponse.Create;
begin
  inherited;
  FTags := TObjectList<TStorageLensTag>.Create;
end;

destructor TGetStorageLensConfigurationTaggingResponse.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TGetStorageLensConfigurationTaggingResponse.Obj: TGetStorageLensConfigurationTaggingResponse;
begin
  Result := Self;
end;

function TGetStorageLensConfigurationTaggingResponse.GetTags: TObjectList<TStorageLensTag>;
begin
  Result := FTags;
end;

procedure TGetStorageLensConfigurationTaggingResponse.SetTags(const Value: TObjectList<TStorageLensTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetStorageLensConfigurationTaggingResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetStorageLensConfigurationTaggingResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetStorageLensConfigurationTaggingResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
