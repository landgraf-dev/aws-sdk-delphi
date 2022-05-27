unit AWS.Translate.Model.TerminologyProperties;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Enums, 
  AWS.Translate.Model.EncryptionKey;

type
  TTerminologyProperties = class;
  
  ITerminologyProperties = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDirectionality: TDirectionality;
    procedure SetDirectionality(const Value: TDirectionality);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetFormat: TTerminologyDataFormat;
    procedure SetFormat(const Value: TTerminologyDataFormat);
    function GetLastUpdatedAt: TDateTime;
    procedure SetLastUpdatedAt(const Value: TDateTime);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSizeBytes: Integer;
    procedure SetSizeBytes(const Value: Integer);
    function GetSkippedTermCount: Integer;
    procedure SetSkippedTermCount(const Value: Integer);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTermCount: Integer;
    procedure SetTermCount(const Value: Integer);
    function Obj: TTerminologyProperties;
    function IsSetArn: Boolean;
    function IsSetCreatedAt: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDirectionality: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetFormat: Boolean;
    function IsSetLastUpdatedAt: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    function IsSetSizeBytes: Boolean;
    function IsSetSkippedTermCount: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTermCount: Boolean;
    property Arn: string read GetArn write SetArn;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Description: string read GetDescription write SetDescription;
    property Directionality: TDirectionality read GetDirectionality write SetDirectionality;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property Format: TTerminologyDataFormat read GetFormat write SetFormat;
    property LastUpdatedAt: TDateTime read GetLastUpdatedAt write SetLastUpdatedAt;
    property Message: string read GetMessage write SetMessage;
    property Name: string read GetName write SetName;
    property SizeBytes: Integer read GetSizeBytes write SetSizeBytes;
    property SkippedTermCount: Integer read GetSkippedTermCount write SetSkippedTermCount;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TermCount: Integer read GetTermCount write SetTermCount;
  end;
  
  TTerminologyProperties = class
  strict private
    FArn: Nullable<string>;
    FCreatedAt: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FDirectionality: Nullable<TDirectionality>;
    FEncryptionKey: TEncryptionKey;
    FKeepEncryptionKey: Boolean;
    FFormat: Nullable<TTerminologyDataFormat>;
    FLastUpdatedAt: Nullable<TDateTime>;
    FMessage: Nullable<string>;
    FName: Nullable<string>;
    FSizeBytes: Nullable<Integer>;
    FSkippedTermCount: Nullable<Integer>;
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCodes: TList<string>;
    FKeepTargetLanguageCodes: Boolean;
    FTermCount: Nullable<Integer>;
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDirectionality: TDirectionality;
    procedure SetDirectionality(const Value: TDirectionality);
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetFormat: TTerminologyDataFormat;
    procedure SetFormat(const Value: TTerminologyDataFormat);
    function GetLastUpdatedAt: TDateTime;
    procedure SetLastUpdatedAt(const Value: TDateTime);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSizeBytes: Integer;
    procedure SetSizeBytes(const Value: Integer);
    function GetSkippedTermCount: Integer;
    procedure SetSkippedTermCount(const Value: Integer);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCodes: TList<string>;
    procedure SetTargetLanguageCodes(const Value: TList<string>);
    function GetKeepTargetLanguageCodes: Boolean;
    procedure SetKeepTargetLanguageCodes(const Value: Boolean);
    function GetTermCount: Integer;
    procedure SetTermCount(const Value: Integer);
  strict protected
    function Obj: TTerminologyProperties;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetArn: Boolean;
    function IsSetCreatedAt: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDirectionality: Boolean;
    function IsSetEncryptionKey: Boolean;
    function IsSetFormat: Boolean;
    function IsSetLastUpdatedAt: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    function IsSetSizeBytes: Boolean;
    function IsSetSkippedTermCount: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCodes: Boolean;
    function IsSetTermCount: Boolean;
    property Arn: string read GetArn write SetArn;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Description: string read GetDescription write SetDescription;
    property Directionality: TDirectionality read GetDirectionality write SetDirectionality;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property Format: TTerminologyDataFormat read GetFormat write SetFormat;
    property LastUpdatedAt: TDateTime read GetLastUpdatedAt write SetLastUpdatedAt;
    property Message: string read GetMessage write SetMessage;
    property Name: string read GetName write SetName;
    property SizeBytes: Integer read GetSizeBytes write SetSizeBytes;
    property SkippedTermCount: Integer read GetSkippedTermCount write SetSkippedTermCount;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCodes: TList<string> read GetTargetLanguageCodes write SetTargetLanguageCodes;
    property KeepTargetLanguageCodes: Boolean read GetKeepTargetLanguageCodes write SetKeepTargetLanguageCodes;
    property TermCount: Integer read GetTermCount write SetTermCount;
  end;
  
implementation

{ TTerminologyProperties }

constructor TTerminologyProperties.Create;
begin
  inherited;
  FTargetLanguageCodes := TList<string>.Create;
end;

destructor TTerminologyProperties.Destroy;
begin
  TargetLanguageCodes := nil;
  EncryptionKey := nil;
  inherited;
end;

function TTerminologyProperties.Obj: TTerminologyProperties;
begin
  Result := Self;
end;

function TTerminologyProperties.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TTerminologyProperties.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TTerminologyProperties.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

function TTerminologyProperties.GetCreatedAt: TDateTime;
begin
  Result := FCreatedAt.ValueOrDefault;
end;

procedure TTerminologyProperties.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
end;

function TTerminologyProperties.IsSetCreatedAt: Boolean;
begin
  Result := FCreatedAt.HasValue;
end;

function TTerminologyProperties.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TTerminologyProperties.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TTerminologyProperties.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TTerminologyProperties.GetDirectionality: TDirectionality;
begin
  Result := FDirectionality.ValueOrDefault;
end;

procedure TTerminologyProperties.SetDirectionality(const Value: TDirectionality);
begin
  FDirectionality := Value;
end;

function TTerminologyProperties.IsSetDirectionality: Boolean;
begin
  Result := FDirectionality.HasValue;
end;

function TTerminologyProperties.GetEncryptionKey: TEncryptionKey;
begin
  Result := FEncryptionKey;
end;

procedure TTerminologyProperties.SetEncryptionKey(const Value: TEncryptionKey);
begin
  if FEncryptionKey <> Value then
  begin
    if not KeepEncryptionKey then
      FEncryptionKey.Free;
    FEncryptionKey := Value;
  end;
end;

function TTerminologyProperties.GetKeepEncryptionKey: Boolean;
begin
  Result := FKeepEncryptionKey;
end;

procedure TTerminologyProperties.SetKeepEncryptionKey(const Value: Boolean);
begin
  FKeepEncryptionKey := Value;
end;

function TTerminologyProperties.IsSetEncryptionKey: Boolean;
begin
  Result := FEncryptionKey <> nil;
end;

function TTerminologyProperties.GetFormat: TTerminologyDataFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TTerminologyProperties.SetFormat(const Value: TTerminologyDataFormat);
begin
  FFormat := Value;
end;

function TTerminologyProperties.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TTerminologyProperties.GetLastUpdatedAt: TDateTime;
begin
  Result := FLastUpdatedAt.ValueOrDefault;
end;

procedure TTerminologyProperties.SetLastUpdatedAt(const Value: TDateTime);
begin
  FLastUpdatedAt := Value;
end;

function TTerminologyProperties.IsSetLastUpdatedAt: Boolean;
begin
  Result := FLastUpdatedAt.HasValue;
end;

function TTerminologyProperties.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TTerminologyProperties.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TTerminologyProperties.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TTerminologyProperties.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TTerminologyProperties.SetName(const Value: string);
begin
  FName := Value;
end;

function TTerminologyProperties.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TTerminologyProperties.GetSizeBytes: Integer;
begin
  Result := FSizeBytes.ValueOrDefault;
end;

procedure TTerminologyProperties.SetSizeBytes(const Value: Integer);
begin
  FSizeBytes := Value;
end;

function TTerminologyProperties.IsSetSizeBytes: Boolean;
begin
  Result := FSizeBytes.HasValue;
end;

function TTerminologyProperties.GetSkippedTermCount: Integer;
begin
  Result := FSkippedTermCount.ValueOrDefault;
end;

procedure TTerminologyProperties.SetSkippedTermCount(const Value: Integer);
begin
  FSkippedTermCount := Value;
end;

function TTerminologyProperties.IsSetSkippedTermCount: Boolean;
begin
  Result := FSkippedTermCount.HasValue;
end;

function TTerminologyProperties.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TTerminologyProperties.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TTerminologyProperties.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TTerminologyProperties.GetTargetLanguageCodes: TList<string>;
begin
  Result := FTargetLanguageCodes;
end;

procedure TTerminologyProperties.SetTargetLanguageCodes(const Value: TList<string>);
begin
  if FTargetLanguageCodes <> Value then
  begin
    if not KeepTargetLanguageCodes then
      FTargetLanguageCodes.Free;
    FTargetLanguageCodes := Value;
  end;
end;

function TTerminologyProperties.GetKeepTargetLanguageCodes: Boolean;
begin
  Result := FKeepTargetLanguageCodes;
end;

procedure TTerminologyProperties.SetKeepTargetLanguageCodes(const Value: Boolean);
begin
  FKeepTargetLanguageCodes := Value;
end;

function TTerminologyProperties.IsSetTargetLanguageCodes: Boolean;
begin
  Result := (FTargetLanguageCodes <> nil) and (FTargetLanguageCodes.Count > 0);
end;

function TTerminologyProperties.GetTermCount: Integer;
begin
  Result := FTermCount.ValueOrDefault;
end;

procedure TTerminologyProperties.SetTermCount(const Value: Integer);
begin
  FTermCount := Value;
end;

function TTerminologyProperties.IsSetTermCount: Boolean;
begin
  Result := FTermCount.HasValue;
end;

end.
