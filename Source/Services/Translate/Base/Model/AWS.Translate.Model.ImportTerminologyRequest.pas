unit AWS.Translate.Model.ImportTerminologyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.EncryptionKey, 
  AWS.Translate.Enums, 
  AWS.Translate.Model.TerminologyData;

type
  TImportTerminologyRequest = class;
  
  IImportTerminologyRequest = interface
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetMergeStrategy: TMergeStrategy;
    procedure SetMergeStrategy(const Value: TMergeStrategy);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerminologyData: TTerminologyData;
    procedure SetTerminologyData(const Value: TTerminologyData);
    function GetKeepTerminologyData: Boolean;
    procedure SetKeepTerminologyData(const Value: Boolean);
    function Obj: TImportTerminologyRequest;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetMergeStrategy: Boolean;
    function IsSetName: Boolean;
    function IsSetTerminologyData: Boolean;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property MergeStrategy: TMergeStrategy read GetMergeStrategy write SetMergeStrategy;
    property Name: string read GetName write SetName;
    property TerminologyData: TTerminologyData read GetTerminologyData write SetTerminologyData;
    property KeepTerminologyData: Boolean read GetKeepTerminologyData write SetKeepTerminologyData;
  end;
  
  TImportTerminologyRequest = class(TAmazonTranslateRequest, IImportTerminologyRequest)
  strict private
    FDescription: Nullable<string>;
    FEncryptionKey: TEncryptionKey;
    FKeepEncryptionKey: Boolean;
    FMergeStrategy: Nullable<TMergeStrategy>;
    FName: Nullable<string>;
    FTerminologyData: TTerminologyData;
    FKeepTerminologyData: Boolean;
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetMergeStrategy: TMergeStrategy;
    procedure SetMergeStrategy(const Value: TMergeStrategy);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerminologyData: TTerminologyData;
    procedure SetTerminologyData(const Value: TTerminologyData);
    function GetKeepTerminologyData: Boolean;
    procedure SetKeepTerminologyData(const Value: Boolean);
  strict protected
    function Obj: TImportTerminologyRequest;
  public
    destructor Destroy; override;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetMergeStrategy: Boolean;
    function IsSetName: Boolean;
    function IsSetTerminologyData: Boolean;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property MergeStrategy: TMergeStrategy read GetMergeStrategy write SetMergeStrategy;
    property Name: string read GetName write SetName;
    property TerminologyData: TTerminologyData read GetTerminologyData write SetTerminologyData;
    property KeepTerminologyData: Boolean read GetKeepTerminologyData write SetKeepTerminologyData;
  end;
  
implementation

{ TImportTerminologyRequest }

destructor TImportTerminologyRequest.Destroy;
begin
  TerminologyData := nil;
  EncryptionKey := nil;
  inherited;
end;

function TImportTerminologyRequest.Obj: TImportTerminologyRequest;
begin
  Result := Self;
end;

function TImportTerminologyRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TImportTerminologyRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TImportTerminologyRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TImportTerminologyRequest.GetEncryptionKey: TEncryptionKey;
begin
  Result := FEncryptionKey;
end;

procedure TImportTerminologyRequest.SetEncryptionKey(const Value: TEncryptionKey);
begin
  if FEncryptionKey <> Value then
  begin
    if not KeepEncryptionKey then
      FEncryptionKey.Free;
    FEncryptionKey := Value;
  end;
end;

function TImportTerminologyRequest.GetKeepEncryptionKey: Boolean;
begin
  Result := FKeepEncryptionKey;
end;

procedure TImportTerminologyRequest.SetKeepEncryptionKey(const Value: Boolean);
begin
  FKeepEncryptionKey := Value;
end;

function TImportTerminologyRequest.IsSetEncryptionKey: Boolean;
begin
  Result := FEncryptionKey <> nil;
end;

function TImportTerminologyRequest.GetMergeStrategy: TMergeStrategy;
begin
  Result := FMergeStrategy.ValueOrDefault;
end;

procedure TImportTerminologyRequest.SetMergeStrategy(const Value: TMergeStrategy);
begin
  FMergeStrategy := Value;
end;

function TImportTerminologyRequest.IsSetMergeStrategy: Boolean;
begin
  Result := FMergeStrategy.HasValue;
end;

function TImportTerminologyRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TImportTerminologyRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TImportTerminologyRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TImportTerminologyRequest.GetTerminologyData: TTerminologyData;
begin
  Result := FTerminologyData;
end;

procedure TImportTerminologyRequest.SetTerminologyData(const Value: TTerminologyData);
begin
  if FTerminologyData <> Value then
  begin
    if not KeepTerminologyData then
      FTerminologyData.Free;
    FTerminologyData := Value;
  end;
end;

function TImportTerminologyRequest.GetKeepTerminologyData: Boolean;
begin
  Result := FKeepTerminologyData;
end;

procedure TImportTerminologyRequest.SetKeepTerminologyData(const Value: Boolean);
begin
  FKeepTerminologyData := Value;
end;

function TImportTerminologyRequest.IsSetTerminologyData: Boolean;
begin
  Result := FTerminologyData <> nil;
end;

end.
