unit AWS.Textract.Enums;

interface

type
  TBlockType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CELL: TBlockType; static;
    class function KEY_VALUE_SET: TBlockType; static;
    class function LINE: TBlockType; static;
    class function MERGED_CELL: TBlockType; static;
    class function PAGE: TBlockType; static;
    class function QUERY: TBlockType; static;
    class function QUERY_RESULT: TBlockType; static;
    class function SELECTION_ELEMENT: TBlockType; static;
    class function TABLE: TBlockType; static;
    class function TITLE: TBlockType; static;
    class function WORD: TBlockType; static;
    class operator Equal(a: TBlockType; b: TBlockType): Boolean;
    class operator NotEqual(a: TBlockType; b: TBlockType): Boolean;
    class operator Implicit(a: string): TBlockType;
    property Value: string read FValue;
  end;
  
  TContentClassifier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FreeOfAdultContent: TContentClassifier; static;
    class function FreeOfPersonallyIdentifiableInformation: TContentClassifier; static;
    class operator Equal(a: TContentClassifier; b: TContentClassifier): Boolean;
    class operator NotEqual(a: TContentClassifier; b: TContentClassifier): Boolean;
    class operator Implicit(a: string): TContentClassifier;
    property Value: string read FValue;
  end;
  
  TEntityType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COLUMN_HEADER: TEntityType; static;
    class function KEY: TEntityType; static;
    class function _VALUE: TEntityType; static;
    class operator Equal(a: TEntityType; b: TEntityType): Boolean;
    class operator NotEqual(a: TEntityType; b: TEntityType): Boolean;
    class operator Implicit(a: string): TEntityType;
    property Value: string read FValue;
  end;
  
  TFeatureType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FORMS: TFeatureType; static;
    class function QUERIES: TFeatureType; static;
    class function TABLES: TFeatureType; static;
    class operator Equal(a: TFeatureType; b: TFeatureType): Boolean;
    class operator NotEqual(a: TFeatureType; b: TFeatureType): Boolean;
    class operator Implicit(a: string): TFeatureType;
    property Value: string read FValue;
  end;
  
  TJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TJobStatus; static;
    class function IN_PROGRESS: TJobStatus; static;
    class function PARTIAL_SUCCESS: TJobStatus; static;
    class function SUCCEEDED: TJobStatus; static;
    class operator Equal(a: TJobStatus; b: TJobStatus): Boolean;
    class operator NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
    class operator Implicit(a: string): TJobStatus;
    property Value: string read FValue;
  end;
  
  TRelationshipType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ANSWER: TRelationshipType; static;
    class function CHILD: TRelationshipType; static;
    class function COMPLEX_FEATURES: TRelationshipType; static;
    class function MERGED_CELL: TRelationshipType; static;
    class function TITLE: TRelationshipType; static;
    class function _VALUE: TRelationshipType; static;
    class operator Equal(a: TRelationshipType; b: TRelationshipType): Boolean;
    class operator NotEqual(a: TRelationshipType; b: TRelationshipType): Boolean;
    class operator Implicit(a: string): TRelationshipType;
    property Value: string read FValue;
  end;
  
  TSelectionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function NOT_SELECTED: TSelectionStatus; static;
    class function SELECTED: TSelectionStatus; static;
    class operator Equal(a: TSelectionStatus; b: TSelectionStatus): Boolean;
    class operator NotEqual(a: TSelectionStatus; b: TSelectionStatus): Boolean;
    class operator Implicit(a: string): TSelectionStatus;
    property Value: string read FValue;
  end;
  
  TTextType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function HANDWRITING: TTextType; static;
    class function PRINTED: TTextType; static;
    class operator Equal(a: TTextType; b: TTextType): Boolean;
    class operator NotEqual(a: TTextType; b: TTextType): Boolean;
    class operator Implicit(a: string): TTextType;
    property Value: string read FValue;
  end;
  
  TValueType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DATE: TValueType; static;
    class operator Equal(a: TValueType; b: TValueType): Boolean;
    class operator NotEqual(a: TValueType; b: TValueType): Boolean;
    class operator Implicit(a: string): TValueType;
    property Value: string read FValue;
  end;
  
implementation

{ TBlockType }

constructor TBlockType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBlockType.CELL: TBlockType;
begin
  Result := TBlockType.Create('CELL');
end;

class function TBlockType.KEY_VALUE_SET: TBlockType;
begin
  Result := TBlockType.Create('KEY_VALUE_SET');
end;

class function TBlockType.LINE: TBlockType;
begin
  Result := TBlockType.Create('LINE');
end;

class function TBlockType.MERGED_CELL: TBlockType;
begin
  Result := TBlockType.Create('MERGED_CELL');
end;

class function TBlockType.PAGE: TBlockType;
begin
  Result := TBlockType.Create('PAGE');
end;

class function TBlockType.QUERY: TBlockType;
begin
  Result := TBlockType.Create('QUERY');
end;

class function TBlockType.QUERY_RESULT: TBlockType;
begin
  Result := TBlockType.Create('QUERY_RESULT');
end;

class function TBlockType.SELECTION_ELEMENT: TBlockType;
begin
  Result := TBlockType.Create('SELECTION_ELEMENT');
end;

class function TBlockType.TABLE: TBlockType;
begin
  Result := TBlockType.Create('TABLE');
end;

class function TBlockType.TITLE: TBlockType;
begin
  Result := TBlockType.Create('TITLE');
end;

class function TBlockType.WORD: TBlockType;
begin
  Result := TBlockType.Create('WORD');
end;

class operator TBlockType.Equal(a: TBlockType; b: TBlockType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBlockType.NotEqual(a: TBlockType; b: TBlockType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBlockType.Implicit(a: string): TBlockType;
begin
  Result.FValue := a;;
end;

{ TContentClassifier }

constructor TContentClassifier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TContentClassifier.FreeOfAdultContent: TContentClassifier;
begin
  Result := TContentClassifier.Create('FreeOfAdultContent');
end;

class function TContentClassifier.FreeOfPersonallyIdentifiableInformation: TContentClassifier;
begin
  Result := TContentClassifier.Create('FreeOfPersonallyIdentifiableInformation');
end;

class operator TContentClassifier.Equal(a: TContentClassifier; b: TContentClassifier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TContentClassifier.NotEqual(a: TContentClassifier; b: TContentClassifier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TContentClassifier.Implicit(a: string): TContentClassifier;
begin
  Result.FValue := a;;
end;

{ TEntityType }

constructor TEntityType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEntityType.COLUMN_HEADER: TEntityType;
begin
  Result := TEntityType.Create('COLUMN_HEADER');
end;

class function TEntityType.KEY: TEntityType;
begin
  Result := TEntityType.Create('KEY');
end;

class function TEntityType._VALUE: TEntityType;
begin
  Result := TEntityType.Create('VALUE');
end;

class operator TEntityType.Equal(a: TEntityType; b: TEntityType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEntityType.NotEqual(a: TEntityType; b: TEntityType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEntityType.Implicit(a: string): TEntityType;
begin
  Result.FValue := a;;
end;

{ TFeatureType }

constructor TFeatureType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFeatureType.FORMS: TFeatureType;
begin
  Result := TFeatureType.Create('FORMS');
end;

class function TFeatureType.QUERIES: TFeatureType;
begin
  Result := TFeatureType.Create('QUERIES');
end;

class function TFeatureType.TABLES: TFeatureType;
begin
  Result := TFeatureType.Create('TABLES');
end;

class operator TFeatureType.Equal(a: TFeatureType; b: TFeatureType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFeatureType.NotEqual(a: TFeatureType; b: TFeatureType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFeatureType.Implicit(a: string): TFeatureType;
begin
  Result.FValue := a;;
end;

{ TJobStatus }

constructor TJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobStatus.FAILED: TJobStatus;
begin
  Result := TJobStatus.Create('FAILED');
end;

class function TJobStatus.IN_PROGRESS: TJobStatus;
begin
  Result := TJobStatus.Create('IN_PROGRESS');
end;

class function TJobStatus.PARTIAL_SUCCESS: TJobStatus;
begin
  Result := TJobStatus.Create('PARTIAL_SUCCESS');
end;

class function TJobStatus.SUCCEEDED: TJobStatus;
begin
  Result := TJobStatus.Create('SUCCEEDED');
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

{ TRelationshipType }

constructor TRelationshipType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRelationshipType.ANSWER: TRelationshipType;
begin
  Result := TRelationshipType.Create('ANSWER');
end;

class function TRelationshipType.CHILD: TRelationshipType;
begin
  Result := TRelationshipType.Create('CHILD');
end;

class function TRelationshipType.COMPLEX_FEATURES: TRelationshipType;
begin
  Result := TRelationshipType.Create('COMPLEX_FEATURES');
end;

class function TRelationshipType.MERGED_CELL: TRelationshipType;
begin
  Result := TRelationshipType.Create('MERGED_CELL');
end;

class function TRelationshipType.TITLE: TRelationshipType;
begin
  Result := TRelationshipType.Create('TITLE');
end;

class function TRelationshipType._VALUE: TRelationshipType;
begin
  Result := TRelationshipType.Create('VALUE');
end;

class operator TRelationshipType.Equal(a: TRelationshipType; b: TRelationshipType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRelationshipType.NotEqual(a: TRelationshipType; b: TRelationshipType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRelationshipType.Implicit(a: string): TRelationshipType;
begin
  Result.FValue := a;;
end;

{ TSelectionStatus }

constructor TSelectionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSelectionStatus.NOT_SELECTED: TSelectionStatus;
begin
  Result := TSelectionStatus.Create('NOT_SELECTED');
end;

class function TSelectionStatus.SELECTED: TSelectionStatus;
begin
  Result := TSelectionStatus.Create('SELECTED');
end;

class operator TSelectionStatus.Equal(a: TSelectionStatus; b: TSelectionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSelectionStatus.NotEqual(a: TSelectionStatus; b: TSelectionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSelectionStatus.Implicit(a: string): TSelectionStatus;
begin
  Result.FValue := a;;
end;

{ TTextType }

constructor TTextType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTextType.HANDWRITING: TTextType;
begin
  Result := TTextType.Create('HANDWRITING');
end;

class function TTextType.PRINTED: TTextType;
begin
  Result := TTextType.Create('PRINTED');
end;

class operator TTextType.Equal(a: TTextType; b: TTextType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTextType.NotEqual(a: TTextType; b: TTextType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTextType.Implicit(a: string): TTextType;
begin
  Result.FValue := a;;
end;

{ TValueType }

constructor TValueType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TValueType.DATE: TValueType;
begin
  Result := TValueType.Create('DATE');
end;

class operator TValueType.Equal(a: TValueType; b: TValueType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TValueType.NotEqual(a: TValueType; b: TValueType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TValueType.Implicit(a: string): TValueType;
begin
  Result.FValue := a;;
end;

end.
