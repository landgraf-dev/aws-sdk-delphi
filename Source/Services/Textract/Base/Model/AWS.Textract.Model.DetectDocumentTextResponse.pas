unit AWS.Textract.Model.DetectDocumentTextResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.Block, 
  AWS.Nullable, 
  AWS.Textract.Model.DocumentMetadata;

type
  TDetectDocumentTextResponse = class;
  
  IDetectDocumentTextResponse = interface(IAmazonWebServiceResponse)
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDetectDocumentTextModelVersion: string;
    procedure SetDetectDocumentTextModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function Obj: TDetectDocumentTextResponse;
    function IsSetBlocks: Boolean;
    function IsSetDetectDocumentTextModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DetectDocumentTextModelVersion: string read GetDetectDocumentTextModelVersion write SetDetectDocumentTextModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
  end;
  
  TDetectDocumentTextResponse = class(TAmazonWebServiceResponse, IDetectDocumentTextResponse)
  strict private
    FBlocks: TObjectList<TBlock>;
    FKeepBlocks: Boolean;
    FDetectDocumentTextModelVersion: Nullable<string>;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDetectDocumentTextModelVersion: string;
    procedure SetDetectDocumentTextModelVersion(const Value: string);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
  strict protected
    function Obj: TDetectDocumentTextResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBlocks: Boolean;
    function IsSetDetectDocumentTextModelVersion: Boolean;
    function IsSetDocumentMetadata: Boolean;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DetectDocumentTextModelVersion: string read GetDetectDocumentTextModelVersion write SetDetectDocumentTextModelVersion;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
  end;
  
implementation

{ TDetectDocumentTextResponse }

constructor TDetectDocumentTextResponse.Create;
begin
  inherited;
  FBlocks := TObjectList<TBlock>.Create;
end;

destructor TDetectDocumentTextResponse.Destroy;
begin
  DocumentMetadata := nil;
  Blocks := nil;
  inherited;
end;

function TDetectDocumentTextResponse.Obj: TDetectDocumentTextResponse;
begin
  Result := Self;
end;

function TDetectDocumentTextResponse.GetBlocks: TObjectList<TBlock>;
begin
  Result := FBlocks;
end;

procedure TDetectDocumentTextResponse.SetBlocks(const Value: TObjectList<TBlock>);
begin
  if FBlocks <> Value then
  begin
    if not KeepBlocks then
      FBlocks.Free;
    FBlocks := Value;
  end;
end;

function TDetectDocumentTextResponse.GetKeepBlocks: Boolean;
begin
  Result := FKeepBlocks;
end;

procedure TDetectDocumentTextResponse.SetKeepBlocks(const Value: Boolean);
begin
  FKeepBlocks := Value;
end;

function TDetectDocumentTextResponse.IsSetBlocks: Boolean;
begin
  Result := (FBlocks <> nil) and (FBlocks.Count > 0);
end;

function TDetectDocumentTextResponse.GetDetectDocumentTextModelVersion: string;
begin
  Result := FDetectDocumentTextModelVersion.ValueOrDefault;
end;

procedure TDetectDocumentTextResponse.SetDetectDocumentTextModelVersion(const Value: string);
begin
  FDetectDocumentTextModelVersion := Value;
end;

function TDetectDocumentTextResponse.IsSetDetectDocumentTextModelVersion: Boolean;
begin
  Result := FDetectDocumentTextModelVersion.HasValue;
end;

function TDetectDocumentTextResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TDetectDocumentTextResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TDetectDocumentTextResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TDetectDocumentTextResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TDetectDocumentTextResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

end.
