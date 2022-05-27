unit AWS.Translate.Enums;

interface

type
  TDirectionality = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MULTI: TDirectionality; static;
    class function UNI: TDirectionality; static;
    class operator Equal(a: TDirectionality; b: TDirectionality): Boolean;
    class operator NotEqual(a: TDirectionality; b: TDirectionality): Boolean;
    class operator Implicit(a: string): TDirectionality;
    property Value: string read FValue;
  end;
  
  TEncryptionKeyType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function KMS: TEncryptionKeyType; static;
    class operator Equal(a: TEncryptionKeyType; b: TEncryptionKeyType): Boolean;
    class operator NotEqual(a: TEncryptionKeyType; b: TEncryptionKeyType): Boolean;
    class operator Implicit(a: string): TEncryptionKeyType;
    property Value: string read FValue;
  end;
  
  TFormality = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FORMAL: TFormality; static;
    class function INFORMAL: TFormality; static;
    class operator Equal(a: TFormality; b: TFormality): Boolean;
    class operator NotEqual(a: TFormality; b: TFormality): Boolean;
    class operator Implicit(a: string): TFormality;
    property Value: string read FValue;
  end;
  
  TJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TJobStatus; static;
    class function COMPLETED_WITH_ERROR: TJobStatus; static;
    class function FAILED: TJobStatus; static;
    class function IN_PROGRESS: TJobStatus; static;
    class function STOPPED: TJobStatus; static;
    class function STOP_REQUESTED: TJobStatus; static;
    class function SUBMITTED: TJobStatus; static;
    class operator Equal(a: TJobStatus; b: TJobStatus): Boolean;
    class operator NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
    class operator Implicit(a: string): TJobStatus;
    property Value: string read FValue;
  end;
  
  TMergeStrategy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OVERWRITE: TMergeStrategy; static;
    class operator Equal(a: TMergeStrategy; b: TMergeStrategy): Boolean;
    class operator NotEqual(a: TMergeStrategy; b: TMergeStrategy): Boolean;
    class operator Implicit(a: string): TMergeStrategy;
    property Value: string read FValue;
  end;
  
  TParallelDataFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TParallelDataFormat; static;
    class function TMX: TParallelDataFormat; static;
    class function TSV: TParallelDataFormat; static;
    class operator Equal(a: TParallelDataFormat; b: TParallelDataFormat): Boolean;
    class operator NotEqual(a: TParallelDataFormat; b: TParallelDataFormat): Boolean;
    class operator Implicit(a: string): TParallelDataFormat;
    property Value: string read FValue;
  end;
  
  TParallelDataStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ACTIVE: TParallelDataStatus; static;
    class function CREATING: TParallelDataStatus; static;
    class function DELETING: TParallelDataStatus; static;
    class function FAILED: TParallelDataStatus; static;
    class function UPDATING: TParallelDataStatus; static;
    class operator Equal(a: TParallelDataStatus; b: TParallelDataStatus): Boolean;
    class operator NotEqual(a: TParallelDataStatus; b: TParallelDataStatus): Boolean;
    class operator Implicit(a: string): TParallelDataStatus;
    property Value: string read FValue;
  end;
  
  TProfanity = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MASK: TProfanity; static;
    class operator Equal(a: TProfanity; b: TProfanity): Boolean;
    class operator NotEqual(a: TProfanity; b: TProfanity): Boolean;
    class operator Implicit(a: string): TProfanity;
    property Value: string read FValue;
  end;
  
  TTerminologyDataFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TTerminologyDataFormat; static;
    class function TMX: TTerminologyDataFormat; static;
    class function TSV: TTerminologyDataFormat; static;
    class operator Equal(a: TTerminologyDataFormat; b: TTerminologyDataFormat): Boolean;
    class operator NotEqual(a: TTerminologyDataFormat; b: TTerminologyDataFormat): Boolean;
    class operator Implicit(a: string): TTerminologyDataFormat;
    property Value: string read FValue;
  end;
  
implementation

{ TDirectionality }

constructor TDirectionality.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDirectionality.MULTI: TDirectionality;
begin
  Result := TDirectionality.Create('MULTI');
end;

class function TDirectionality.UNI: TDirectionality;
begin
  Result := TDirectionality.Create('UNI');
end;

class operator TDirectionality.Equal(a: TDirectionality; b: TDirectionality): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDirectionality.NotEqual(a: TDirectionality; b: TDirectionality): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDirectionality.Implicit(a: string): TDirectionality;
begin
  Result.FValue := a;;
end;

{ TEncryptionKeyType }

constructor TEncryptionKeyType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEncryptionKeyType.KMS: TEncryptionKeyType;
begin
  Result := TEncryptionKeyType.Create('KMS');
end;

class operator TEncryptionKeyType.Equal(a: TEncryptionKeyType; b: TEncryptionKeyType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEncryptionKeyType.NotEqual(a: TEncryptionKeyType; b: TEncryptionKeyType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEncryptionKeyType.Implicit(a: string): TEncryptionKeyType;
begin
  Result.FValue := a;;
end;

{ TFormality }

constructor TFormality.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFormality.FORMAL: TFormality;
begin
  Result := TFormality.Create('FORMAL');
end;

class function TFormality.INFORMAL: TFormality;
begin
  Result := TFormality.Create('INFORMAL');
end;

class operator TFormality.Equal(a: TFormality; b: TFormality): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFormality.NotEqual(a: TFormality; b: TFormality): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFormality.Implicit(a: string): TFormality;
begin
  Result.FValue := a;;
end;

{ TJobStatus }

constructor TJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobStatus.COMPLETED: TJobStatus;
begin
  Result := TJobStatus.Create('COMPLETED');
end;

class function TJobStatus.COMPLETED_WITH_ERROR: TJobStatus;
begin
  Result := TJobStatus.Create('COMPLETED_WITH_ERROR');
end;

class function TJobStatus.FAILED: TJobStatus;
begin
  Result := TJobStatus.Create('FAILED');
end;

class function TJobStatus.IN_PROGRESS: TJobStatus;
begin
  Result := TJobStatus.Create('IN_PROGRESS');
end;

class function TJobStatus.STOPPED: TJobStatus;
begin
  Result := TJobStatus.Create('STOPPED');
end;

class function TJobStatus.STOP_REQUESTED: TJobStatus;
begin
  Result := TJobStatus.Create('STOP_REQUESTED');
end;

class function TJobStatus.SUBMITTED: TJobStatus;
begin
  Result := TJobStatus.Create('SUBMITTED');
end;

class operator TJobStatus.Equal(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobStatus.NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobStatus.Implicit(a: string): TJobStatus;
begin
  Result.FValue := a;;
end;

{ TMergeStrategy }

constructor TMergeStrategy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMergeStrategy.OVERWRITE: TMergeStrategy;
begin
  Result := TMergeStrategy.Create('OVERWRITE');
end;

class operator TMergeStrategy.Equal(a: TMergeStrategy; b: TMergeStrategy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMergeStrategy.NotEqual(a: TMergeStrategy; b: TMergeStrategy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMergeStrategy.Implicit(a: string): TMergeStrategy;
begin
  Result.FValue := a;;
end;

{ TParallelDataFormat }

constructor TParallelDataFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParallelDataFormat.CSV: TParallelDataFormat;
begin
  Result := TParallelDataFormat.Create('CSV');
end;

class function TParallelDataFormat.TMX: TParallelDataFormat;
begin
  Result := TParallelDataFormat.Create('TMX');
end;

class function TParallelDataFormat.TSV: TParallelDataFormat;
begin
  Result := TParallelDataFormat.Create('TSV');
end;

class operator TParallelDataFormat.Equal(a: TParallelDataFormat; b: TParallelDataFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParallelDataFormat.NotEqual(a: TParallelDataFormat; b: TParallelDataFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParallelDataFormat.Implicit(a: string): TParallelDataFormat;
begin
  Result.FValue := a;;
end;

{ TParallelDataStatus }

constructor TParallelDataStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParallelDataStatus.ACTIVE: TParallelDataStatus;
begin
  Result := TParallelDataStatus.Create('ACTIVE');
end;

class function TParallelDataStatus.CREATING: TParallelDataStatus;
begin
  Result := TParallelDataStatus.Create('CREATING');
end;

class function TParallelDataStatus.DELETING: TParallelDataStatus;
begin
  Result := TParallelDataStatus.Create('DELETING');
end;

class function TParallelDataStatus.FAILED: TParallelDataStatus;
begin
  Result := TParallelDataStatus.Create('FAILED');
end;

class function TParallelDataStatus.UPDATING: TParallelDataStatus;
begin
  Result := TParallelDataStatus.Create('UPDATING');
end;

class operator TParallelDataStatus.Equal(a: TParallelDataStatus; b: TParallelDataStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParallelDataStatus.NotEqual(a: TParallelDataStatus; b: TParallelDataStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParallelDataStatus.Implicit(a: string): TParallelDataStatus;
begin
  Result.FValue := a;;
end;

{ TProfanity }

constructor TProfanity.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TProfanity.MASK: TProfanity;
begin
  Result := TProfanity.Create('MASK');
end;

class operator TProfanity.Equal(a: TProfanity; b: TProfanity): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TProfanity.NotEqual(a: TProfanity; b: TProfanity): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TProfanity.Implicit(a: string): TProfanity;
begin
  Result.FValue := a;;
end;

{ TTerminologyDataFormat }

constructor TTerminologyDataFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTerminologyDataFormat.CSV: TTerminologyDataFormat;
begin
  Result := TTerminologyDataFormat.Create('CSV');
end;

class function TTerminologyDataFormat.TMX: TTerminologyDataFormat;
begin
  Result := TTerminologyDataFormat.Create('TMX');
end;

class function TTerminologyDataFormat.TSV: TTerminologyDataFormat;
begin
  Result := TTerminologyDataFormat.Create('TSV');
end;

class operator TTerminologyDataFormat.Equal(a: TTerminologyDataFormat; b: TTerminologyDataFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTerminologyDataFormat.NotEqual(a: TTerminologyDataFormat; b: TTerminologyDataFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTerminologyDataFormat.Implicit(a: string): TTerminologyDataFormat;
begin
  Result.FValue := a;;
end;

end.
