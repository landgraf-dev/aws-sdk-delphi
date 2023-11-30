unit AWS.Textract.Model.AnalyzeDocumentResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.HumanLoopActivationOutput;

type
  TAnalyzeDocumentResponse = class;
  
  IAnalyzeDocumentResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyzeDocumentModelVersion: string;
    procedure SetAnalyzeDocumentModelVersion(const Value: string);
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetHumanLoopActivationOutput: THumanLoopActivationOutput;
    procedure SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
    function GetKeepHumanLoopActivationOutput: Boolean;
    procedure SetKeepHumanLoopActivationOutput(const Value: Boolean);
    function Obj: TAnalyzeDocumentResponse;
    function IsSetAnalyzeDocumentModelVersion: Boolean;
    function IsSetBlocks: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetHumanLoopActivationOutput: Boolean;
    property AnalyzeDocumentModelVersion: string read GetAnalyzeDocumentModelVersion write SetAnalyzeDocumentModelVersion;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property HumanLoopActivationOutput: THumanLoopActivationOutput read GetHumanLoopActivationOutput write SetHumanLoopActivationOutput;
    property KeepHumanLoopActivationOutput: Boolean read GetKeepHumanLoopActivationOutput write SetKeepHumanLoopActivationOutput;
  end;
  
  TAnalyzeDocumentResponse = class(TAmazonWebServiceResponse, IAnalyzeDocumentResponse)
  strict private
    FAnalyzeDocumentModelVersion: Nullable<string>;
    FBlocks: TObjectList<TBlock>;
    FKeepBlocks: Boolean;
    FDocumentMetadata: TDocumentMetadata;
    FKeepDocumentMetadata: Boolean;
    FHumanLoopActivationOutput: THumanLoopActivationOutput;
    FKeepHumanLoopActivationOutput: Boolean;
    function GetAnalyzeDocumentModelVersion: string;
    procedure SetAnalyzeDocumentModelVersion(const Value: string);
    function GetBlocks: TObjectList<TBlock>;
    procedure SetBlocks(const Value: TObjectList<TBlock>);
    function GetKeepBlocks: Boolean;
    procedure SetKeepBlocks(const Value: Boolean);
    function GetDocumentMetadata: TDocumentMetadata;
    procedure SetDocumentMetadata(const Value: TDocumentMetadata);
    function GetKeepDocumentMetadata: Boolean;
    procedure SetKeepDocumentMetadata(const Value: Boolean);
    function GetHumanLoopActivationOutput: THumanLoopActivationOutput;
    procedure SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
    function GetKeepHumanLoopActivationOutput: Boolean;
    procedure SetKeepHumanLoopActivationOutput(const Value: Boolean);
  strict protected
    function Obj: TAnalyzeDocumentResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAnalyzeDocumentModelVersion: Boolean;
    function IsSetBlocks: Boolean;
    function IsSetDocumentMetadata: Boolean;
    function IsSetHumanLoopActivationOutput: Boolean;
    property AnalyzeDocumentModelVersion: string read GetAnalyzeDocumentModelVersion write SetAnalyzeDocumentModelVersion;
    property Blocks: TObjectList<TBlock> read GetBlocks write SetBlocks;
    property KeepBlocks: Boolean read GetKeepBlocks write SetKeepBlocks;
    property DocumentMetadata: TDocumentMetadata read GetDocumentMetadata write SetDocumentMetadata;
    property KeepDocumentMetadata: Boolean read GetKeepDocumentMetadata write SetKeepDocumentMetadata;
    property HumanLoopActivationOutput: THumanLoopActivationOutput read GetHumanLoopActivationOutput write SetHumanLoopActivationOutput;
    property KeepHumanLoopActivationOutput: Boolean read GetKeepHumanLoopActivationOutput write SetKeepHumanLoopActivationOutput;
  end;
  
implementation

{ TAnalyzeDocumentResponse }

constructor TAnalyzeDocumentResponse.Create;
begin
  inherited;
  FBlocks := TObjectList<TBlock>.Create;
end;

destructor TAnalyzeDocumentResponse.Destroy;
begin
  HumanLoopActivationOutput := nil;
  DocumentMetadata := nil;
  Blocks := nil;
  inherited;
end;

function TAnalyzeDocumentResponse.Obj: TAnalyzeDocumentResponse;
begin
  Result := Self;
end;

function TAnalyzeDocumentResponse.GetAnalyzeDocumentModelVersion: string;
begin
  Result := FAnalyzeDocumentModelVersion.ValueOrDefault;
end;

procedure TAnalyzeDocumentResponse.SetAnalyzeDocumentModelVersion(const Value: string);
begin
  FAnalyzeDocumentModelVersion := Value;
end;

function TAnalyzeDocumentResponse.IsSetAnalyzeDocumentModelVersion: Boolean;
begin
  Result := FAnalyzeDocumentModelVersion.HasValue;
end;

function TAnalyzeDocumentResponse.GetBlocks: TObjectList<TBlock>;
begin
  Result := FBlocks;
end;

procedure TAnalyzeDocumentResponse.SetBlocks(const Value: TObjectList<TBlock>);
begin
  if FBlocks <> Value then
  begin
    if not KeepBlocks then
      FBlocks.Free;
    FBlocks := Value;
  end;
end;

function TAnalyzeDocumentResponse.GetKeepBlocks: Boolean;
begin
  Result := FKeepBlocks;
end;

procedure TAnalyzeDocumentResponse.SetKeepBlocks(const Value: Boolean);
begin
  FKeepBlocks := Value;
end;

function TAnalyzeDocumentResponse.IsSetBlocks: Boolean;
begin
  Result := (FBlocks <> nil) and (FBlocks.Count > 0);
end;

function TAnalyzeDocumentResponse.GetDocumentMetadata: TDocumentMetadata;
begin
  Result := FDocumentMetadata;
end;

procedure TAnalyzeDocumentResponse.SetDocumentMetadata(const Value: TDocumentMetadata);
begin
  if FDocumentMetadata <> Value then
  begin
    if not KeepDocumentMetadata then
      FDocumentMetadata.Free;
    FDocumentMetadata := Value;
  end;
end;

function TAnalyzeDocumentResponse.GetKeepDocumentMetadata: Boolean;
begin
  Result := FKeepDocumentMetadata;
end;

procedure TAnalyzeDocumentResponse.SetKeepDocumentMetadata(const Value: Boolean);
begin
  FKeepDocumentMetadata := Value;
end;

function TAnalyzeDocumentResponse.IsSetDocumentMetadata: Boolean;
begin
  Result := FDocumentMetadata <> nil;
end;

function TAnalyzeDocumentResponse.GetHumanLoopActivationOutput: THumanLoopActivationOutput;
begin
  Result := FHumanLoopActivationOutput;
end;

procedure TAnalyzeDocumentResponse.SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
begin
  if FHumanLoopActivationOutput <> Value then
  begin
    if not KeepHumanLoopActivationOutput then
      FHumanLoopActivationOutput.Free;
    FHumanLoopActivationOutput := Value;
  end;
end;

function TAnalyzeDocumentResponse.GetKeepHumanLoopActivationOutput: Boolean;
begin
  Result := FKeepHumanLoopActivationOutput;
end;

procedure TAnalyzeDocumentResponse.SetKeepHumanLoopActivationOutput(const Value: Boolean);
begin
  FKeepHumanLoopActivationOutput := Value;
end;

function TAnalyzeDocumentResponse.IsSetHumanLoopActivationOutput: Boolean;
begin
  Result := FHumanLoopActivationOutput <> nil;
end;

end.
