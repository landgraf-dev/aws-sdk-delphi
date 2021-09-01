unit AWS.Translate.Model.ParallelDataProperties;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Model.EncryptionKey, 
  AWS.Translate.Enums, 
  AWS.Translate.Model.ParallelDataConfig;

type
  TParallelDataProperties = class;
  
  IParallelDataProperties = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetFailedRecordCount: Int64;
    procedure SetFailedRecordCount(const Value: Int64);
    function GetImportedDataSize: Int64;
    procedure SetImportedDataSize(const Value: Int64);
    function GetImportedRecordCount: Int64;
    procedure SetImportedRecordCount(const Value: Int64);
    function GetLastUpdatedAt: TDateTime;
    procedure SetLastUpdatedAt(const Value: TDateTime);
    function GetLatestUpdateAttemptAt: TDateTime;
    procedure SetLatestUpdateAttemptAt(const Value: TDateTime);
    function GetLatestUpdateAttemptStatus: TParallelDataStatus;
    procedure SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
    function GetSkippedRecordCount: Int64;
    procedure SetSkippedRecordCount(const Value: Int64);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function Obj: TParallelDataProperties;
    function IsSetArn: Boolean;
    function IsSetCreatedAt: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetFailedRecordCount: Boolean;
    function IsSetImportedDataSize: Boolean;
    function IsSetImportedRecordCount: Boolean;
    function IsSetLastUpdatedAt: Boolean;
    function IsSetLatestUpdateAttemptAt: Boolean;
    function IsSetLatestUpdateAttemptStatus: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    function IsSetSkippedRecordCount: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    property Arn: string read GetArn write SetArn;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property FailedRecordCount: Int64 read GetFailedRecordCount write SetFailedRecordCount;
    property ImportedDataSize: Int64 read GetImportedDataSize write SetImportedDataSize;
    property ImportedRecordCount: Int64 read GetImportedRecordCount write SetImportedRecordCount;
    property LastUpdatedAt: TDateTime read GetLastUpdatedAt write SetLastUpdatedAt;
    property LatestUpdateAttemptAt: TDateTime read GetLatestUpdateAttemptAt write SetLatestUpdateAttemptAt;
    property LatestUpdateAttemptStatus: TParallelDataStatus read GetLatestUpdateAttemptStatus write SetLatestUpdateAttemptStatus;
    property Message: string read GetMessage write SetMessage;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
    property SkippedRecordCount: Int64 read GetSkippedRecordCount write SetSkippedRecordCount;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
  end;
  
  TParallelDataProperties = class
  strict private
    FArn: Nullable<string>;
    FCreatedAt: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FEncryptionKey: TEncryptionKey;
    FKeepEncryptionKey: Boolean;
    FFailedRecordCount: Nullable<Int64>;
    FImportedDataSize: Nullable<Int64>;
    FImportedRecordCount: Nullable<Int64>;
    FLastUpdatedAt: Nullable<TDateTime>;
    FLatestUpdateAttemptAt: Nullable<TDateTime>;
    FLatestUpdateAttemptStatus: Nullable<TParallelDataStatus>;
    FMessage: Nullable<string>;
    FName: Nullable<string>;
    FParallelDataConfig: TParallelDataConfig;
    FKeepParallelDataConfig: Boolean;
    FSkippedRecordCount: Nullable<Int64>;
    FSourceLanguageCode: Nullable<string>;
    FStatus: Nullable<TParallelDataStatus>;
    FTargetLanguageCodes: TList<string>;
    FKeepTargetLanguageCodes: Boolean;
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetFailedRecordCount: Int64;
    procedure SetFailedRecordCount(const Value: Int64);
    function GetImportedDataSize: Int64;
    procedure SetImportedDataSize(const Value: Int64);
    function GetImportedRecordCount: Int64;
    procedure SetImportedRecordCount(const Value: Int64);
    function GetLastUpdatedAt: TDateTime;
    procedure SetLastUpdatedAt(const Value: TDateTime);
    function GetLatestUpdateAttemptAt: TDateTime;
    procedure SetLatestUpdateAttemptAt(const Value: TDateTime);
    function GetLatestUpdateAttemptStatus: TParallelDataStatus;
    procedure SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParallelDataConfig: TParallelDataConfig;
    procedure SetParallelDataConfig(const Value: TParallelDataConfig);
    function GetKeepParallelDataConfig: Boolean;
    procedure SetKeepParallelDataConfig(const Value: Boolean);
    function GetSkippedRecordCount: Int64;
    procedure SetSkippedRecordCount(const Value: Int64);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
  strict protected
    function Obj: TParallelDataProperties;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetArn: Boolean;
    function IsSetCreatedAt: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetFailedRecordCount: Boolean;
    function IsSetImportedDataSize: Boolean;
    function IsSetImportedRecordCount: Boolean;
    function IsSetLastUpdatedAt: Boolean;
    function IsSetLatestUpdateAttemptAt: Boolean;
    function IsSetLatestUpdateAttemptStatus: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    function IsSetParallelDataConfig: Boolean;
    function IsSetSkippedRecordCount: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    property Arn: string read GetArn write SetArn;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Description: string read GetDescription write SetDescription;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property FailedRecordCount: Int64 read GetFailedRecordCount write SetFailedRecordCount;
    property ImportedDataSize: Int64 read GetImportedDataSize write SetImportedDataSize;
    property ImportedRecordCount: Int64 read GetImportedRecordCount write SetImportedRecordCount;
    property LastUpdatedAt: TDateTime read GetLastUpdatedAt write SetLastUpdatedAt;
    property LatestUpdateAttemptAt: TDateTime read GetLatestUpdateAttemptAt write SetLatestUpdateAttemptAt;
    property LatestUpdateAttemptStatus: TParallelDataStatus read GetLatestUpdateAttemptStatus write SetLatestUpdateAttemptStatus;
    property Message: string read GetMessage write SetMessage;
    property Name: string read GetName write SetName;
    property ParallelDataConfig: TParallelDataConfig read GetParallelDataConfig write SetParallelDataConfig;
    property KeepParallelDataConfig: Boolean read GetKeepParallelDataConfig write SetKeepParallelDataConfig;
    property SkippedRecordCount: Int64 read GetSkippedRecordCount write SetSkippedRecordCount;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
  end;
  
implementation

{ TParallelDataProperties }

constructor TParallelDataProperties.Create;
begin
  inherited;
  FTargetLanguageCodes := TList<string>.Create;
end;

destructor TParallelDataProperties.Destroy;
begin
  TargetLanguageCodes := nil;
  ParallelDataConfig := nil;
  EncryptionKey := nil;
  inherited;
end;

function TParallelDataProperties.Obj: TParallelDataProperties;
begin
  Result := Self;
end;

function TParallelDataProperties.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TParallelDataProperties.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TParallelDataProperties.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

function TParallelDataProperties.GetCreatedAt: TDateTime;
begin
  Result := FCreatedAt.ValueOrDefault;
end;

procedure TParallelDataProperties.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
end;

function TParallelDataProperties.IsSetCreatedAt: Boolean;
begin
  Result := FCreatedAt.HasValue;
end;

function TParallelDataProperties.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TParallelDataProperties.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TParallelDataProperties.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TParallelDataProperties.GetEncryptionKey: TEncryptionKey;
begin
  Result := FEncryptionKey;
end;

procedure TParallelDataProperties.SetEncryptionKey(const Value: TEncryptionKey);
begin
  if FEncryptionKey <> Value then
  begin
    if not KeepEncryptionKey then
      FEncryptionKey.Free;
    FEncryptionKey := Value;
  end;
end;

function TParallelDataProperties.GetKeepEncryptionKey: Boolean;
begin
  Result := FKeepEncryptionKey;
end;

procedure TParallelDataProperties.SetKeepEncryptionKey(const Value: Boolean);
begin
  FKeepEncryptionKey := Value;
end;

function TParallelDataProperties.IsSetEncryptionKey: Boolean;
begin
  Result := FEncryptionKey <> nil;
end;

function TParallelDataProperties.GetFailedRecordCount: Int64;
begin
  Result := FFailedRecordCount.ValueOrDefault;
end;

procedure TParallelDataProperties.SetFailedRecordCount(const Value: Int64);
begin
  FFailedRecordCount := Value;
end;

function TParallelDataProperties.IsSetFailedRecordCount: Boolean;
begin
  Result := FFailedRecordCount.HasValue;
end;

function TParallelDataProperties.GetImportedDataSize: Int64;
begin
  Result := FImportedDataSize.ValueOrDefault;
end;

procedure TParallelDataProperties.SetImportedDataSize(const Value: Int64);
begin
  FImportedDataSize := Value;
end;

function TParallelDataProperties.IsSetImportedDataSize: Boolean;
begin
  Result := FImportedDataSize.HasValue;
end;

function TParallelDataProperties.GetImportedRecordCount: Int64;
begin
  Result := FImportedRecordCount.ValueOrDefault;
end;

procedure TParallelDataProperties.SetImportedRecordCount(const Value: Int64);
begin
  FImportedRecordCount := Value;
end;

function TParallelDataProperties.IsSetImportedRecordCount: Boolean;
begin
  Result := FImportedRecordCount.HasValue;
end;

function TParallelDataProperties.GetLastUpdatedAt: TDateTime;
begin
  Result := FLastUpdatedAt.ValueOrDefault;
end;

procedure TParallelDataProperties.SetLastUpdatedAt(const Value: TDateTime);
begin
  FLastUpdatedAt := Value;
end;

function TParallelDataProperties.IsSetLastUpdatedAt: Boolean;
begin
  Result := FLastUpdatedAt.HasValue;
end;

function TParallelDataProperties.GetLatestUpdateAttemptAt: TDateTime;
begin
  Result := FLatestUpdateAttemptAt.ValueOrDefault;
end;

procedure TParallelDataProperties.SetLatestUpdateAttemptAt(const Value: TDateTime);
begin
  FLatestUpdateAttemptAt := Value;
end;

function TParallelDataProperties.IsSetLatestUpdateAttemptAt: Boolean;
begin
  Result := FLatestUpdateAttemptAt.HasValue;
end;

function TParallelDataProperties.GetLatestUpdateAttemptStatus: TParallelDataStatus;
begin
  Result := FLatestUpdateAttemptStatus.ValueOrDefault;
end;

procedure TParallelDataProperties.SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
begin
  FLatestUpdateAttemptStatus := Value;
end;

function TParallelDataProperties.IsSetLatestUpdateAttemptStatus: Boolean;
begin
  Result := FLatestUpdateAttemptStatus.HasValue;
end;

function TParallelDataProperties.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TParallelDataProperties.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TParallelDataProperties.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TParallelDataProperties.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TParallelDataProperties.SetName(const Value: string);
begin
  FName := Value;
end;

function TParallelDataProperties.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TParallelDataProperties.GetParallelDataConfig: TParallelDataConfig;
begin
  Result := FParallelDataConfig;
end;

procedure TParallelDataProperties.SetParallelDataConfig(const Value: TParallelDataConfig);
begin
  if FParallelDataConfig <> Value then
  begin
    if not KeepParallelDataConfig then
      FParallelDataConfig.Free;
    FParallelDataConfig := Value;
  end;
end;

function TParallelDataProperties.GetKeepParallelDataConfig: Boolean;
begin
  Result := FKeepParallelDataConfig;
end;

procedure TParallelDataProperties.SetKeepParallelDataConfig(const Value: Boolean);
begin
  FKeepParallelDataConfig := Value;
end;

function TParallelDataProperties.IsSetParallelDataConfig: Boolean;
begin
  Result := FParallelDataConfig <> nil;
end;

function TParallelDataProperties.GetSkippedRecordCount: Int64;
begin
  Result := FSkippedRecordCount.ValueOrDefault;
end;

procedure TParallelDataProperties.SetSkippedRecordCount(const Value: Int64);
begin
  FSkippedRecordCount := Value;
end;

function TParallelDataProperties.IsSetSkippedRecordCount: Boolean;
begin
  Result := FSkippedRecordCount.HasValue;
end;

function TParallelDataProperties.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TParallelDataProperties.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TParallelDataProperties.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TParallelDataProperties.GetStatus: TParallelDataStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TParallelDataProperties.SetStatus(const Value: TParallelDataStatus);
begin
  FStatus := Value;
end;

function TParallelDataProperties.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TParallelDataProperties.GetTargetLanguageCodes: TList<string>;
begin
  Result := FTargetLanguageCodes;
end;

procedure TParallelDataProperties.SetTargetLanguageCodes(const Value: TList<string>);
begin
  if FTargetLanguageCodes <> Value then
  begin
    if not KeepTargetLanguageCodes then
      FTargetLanguageCodes.Free;
    FTargetLanguageCodes := Value;
  end;
end;

function TParallelDataProperties.GetKeepTargetLanguageCodes: Boolean;
begin
  Result := FKeepTargetLanguageCodes;
end;

procedure TParallelDataProperties.SetKeepTargetLanguageCodes(const Value: Boolean);
begin
  FKeepTargetLanguageCodes := Value;
end;

function TParallelDataProperties.IsSetTargetLanguageCodes: Boolean;
begin
  Result := (FTargetLanguageCodes <> nil) and (FTargetLanguageCodes.Count > 0);
end;

end.
