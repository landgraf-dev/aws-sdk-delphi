unit AWS.Rekognition.Enums;

interface

type
  TAttribute = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ALL: TAttribute; static;
    class function DEFAULT: TAttribute; static;
    class operator Equal(a: TAttribute; b: TAttribute): Boolean;
    class operator NotEqual(a: TAttribute; b: TAttribute): Boolean;
    class operator Implicit(a: string): TAttribute;
    property Value: string read FValue;
  end;
  
  TBodyPart = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FACE: TBodyPart; static;
    class function HEAD: TBodyPart; static;
    class function LEFT_HAND: TBodyPart; static;
    class function RIGHT_HAND: TBodyPart; static;
    class operator Equal(a: TBodyPart; b: TBodyPart): Boolean;
    class operator NotEqual(a: TBodyPart; b: TBodyPart): Boolean;
    class operator Implicit(a: string): TBodyPart;
    property Value: string read FValue;
  end;
  
  TCelebrityRecognitionSortBy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ID: TCelebrityRecognitionSortBy; static;
    class function TIMESTAMP: TCelebrityRecognitionSortBy; static;
    class operator Equal(a: TCelebrityRecognitionSortBy; b: TCelebrityRecognitionSortBy): Boolean;
    class operator NotEqual(a: TCelebrityRecognitionSortBy; b: TCelebrityRecognitionSortBy): Boolean;
    class operator Implicit(a: string): TCelebrityRecognitionSortBy;
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
  
  TContentModerationSortBy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function NAME: TContentModerationSortBy; static;
    class function TIMESTAMP: TContentModerationSortBy; static;
    class operator Equal(a: TContentModerationSortBy; b: TContentModerationSortBy): Boolean;
    class operator NotEqual(a: TContentModerationSortBy; b: TContentModerationSortBy): Boolean;
    class operator Implicit(a: string): TContentModerationSortBy;
    property Value: string read FValue;
  end;
  
  TEmotionName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ANGRY: TEmotionName; static;
    class function CALM: TEmotionName; static;
    class function CONFUSED: TEmotionName; static;
    class function DISGUSTED: TEmotionName; static;
    class function FEAR: TEmotionName; static;
    class function HAPPY: TEmotionName; static;
    class function SAD: TEmotionName; static;
    class function SURPRISED: TEmotionName; static;
    class function UNKNOWN: TEmotionName; static;
    class operator Equal(a: TEmotionName; b: TEmotionName): Boolean;
    class operator NotEqual(a: TEmotionName; b: TEmotionName): Boolean;
    class operator Implicit(a: string): TEmotionName;
    property Value: string read FValue;
  end;
  
  TFaceAttributes = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ALL: TFaceAttributes; static;
    class function DEFAULT: TFaceAttributes; static;
    class operator Equal(a: TFaceAttributes; b: TFaceAttributes): Boolean;
    class operator NotEqual(a: TFaceAttributes; b: TFaceAttributes): Boolean;
    class operator Implicit(a: string): TFaceAttributes;
    property Value: string read FValue;
  end;
  
  TFaceSearchSortBy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function INDEX: TFaceSearchSortBy; static;
    class function TIMESTAMP: TFaceSearchSortBy; static;
    class operator Equal(a: TFaceSearchSortBy; b: TFaceSearchSortBy): Boolean;
    class operator NotEqual(a: TFaceSearchSortBy; b: TFaceSearchSortBy): Boolean;
    class operator Implicit(a: string): TFaceSearchSortBy;
    property Value: string read FValue;
  end;
  
  TGenderType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Female: TGenderType; static;
    class function Male: TGenderType; static;
    class operator Equal(a: TGenderType; b: TGenderType): Boolean;
    class operator NotEqual(a: TGenderType; b: TGenderType): Boolean;
    class operator Implicit(a: string): TGenderType;
    property Value: string read FValue;
  end;
  
  TLabelDetectionSortBy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function NAME: TLabelDetectionSortBy; static;
    class function TIMESTAMP: TLabelDetectionSortBy; static;
    class operator Equal(a: TLabelDetectionSortBy; b: TLabelDetectionSortBy): Boolean;
    class operator NotEqual(a: TLabelDetectionSortBy; b: TLabelDetectionSortBy): Boolean;
    class operator Implicit(a: string): TLabelDetectionSortBy;
    property Value: string read FValue;
  end;
  
  TLandmarkType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ChinBottom: TLandmarkType; static;
    class function EyeLeft: TLandmarkType; static;
    class function EyeRight: TLandmarkType; static;
    class function LeftEyeBrowLeft: TLandmarkType; static;
    class function LeftEyeBrowRight: TLandmarkType; static;
    class function LeftEyeBrowUp: TLandmarkType; static;
    class function LeftEyeDown: TLandmarkType; static;
    class function LeftEyeLeft: TLandmarkType; static;
    class function LeftEyeRight: TLandmarkType; static;
    class function LeftEyeUp: TLandmarkType; static;
    class function LeftPupil: TLandmarkType; static;
    class function MidJawlineLeft: TLandmarkType; static;
    class function MidJawlineRight: TLandmarkType; static;
    class function MouthDown: TLandmarkType; static;
    class function MouthLeft: TLandmarkType; static;
    class function MouthRight: TLandmarkType; static;
    class function MouthUp: TLandmarkType; static;
    class function Nose: TLandmarkType; static;
    class function NoseLeft: TLandmarkType; static;
    class function NoseRight: TLandmarkType; static;
    class function RightEyeBrowLeft: TLandmarkType; static;
    class function RightEyeBrowRight: TLandmarkType; static;
    class function RightEyeBrowUp: TLandmarkType; static;
    class function RightEyeDown: TLandmarkType; static;
    class function RightEyeLeft: TLandmarkType; static;
    class function RightEyeRight: TLandmarkType; static;
    class function RightEyeUp: TLandmarkType; static;
    class function RightPupil: TLandmarkType; static;
    class function UpperJawlineLeft: TLandmarkType; static;
    class function UpperJawlineRight: TLandmarkType; static;
    class operator Equal(a: TLandmarkType; b: TLandmarkType): Boolean;
    class operator NotEqual(a: TLandmarkType; b: TLandmarkType): Boolean;
    class operator Implicit(a: string): TLandmarkType;
    property Value: string read FValue;
  end;
  
  TOrientationCorrection = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ROTATE_0: TOrientationCorrection; static;
    class function ROTATE_180: TOrientationCorrection; static;
    class function ROTATE_270: TOrientationCorrection; static;
    class function ROTATE_90: TOrientationCorrection; static;
    class operator Equal(a: TOrientationCorrection; b: TOrientationCorrection): Boolean;
    class operator NotEqual(a: TOrientationCorrection; b: TOrientationCorrection): Boolean;
    class operator Implicit(a: string): TOrientationCorrection;
    property Value: string read FValue;
  end;
  
  TPersonTrackingSortBy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function INDEX: TPersonTrackingSortBy; static;
    class function TIMESTAMP: TPersonTrackingSortBy; static;
    class operator Equal(a: TPersonTrackingSortBy; b: TPersonTrackingSortBy): Boolean;
    class operator NotEqual(a: TPersonTrackingSortBy; b: TPersonTrackingSortBy): Boolean;
    class operator Implicit(a: string): TPersonTrackingSortBy;
    property Value: string read FValue;
  end;
  
  TProjectStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CREATED: TProjectStatus; static;
    class function CREATING: TProjectStatus; static;
    class function DELETING: TProjectStatus; static;
    class operator Equal(a: TProjectStatus; b: TProjectStatus): Boolean;
    class operator NotEqual(a: TProjectStatus; b: TProjectStatus): Boolean;
    class operator Implicit(a: string): TProjectStatus;
    property Value: string read FValue;
  end;
  
  TProjectVersionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DELETING: TProjectVersionStatus; static;
    class function FAILED: TProjectVersionStatus; static;
    class function RUNNING: TProjectVersionStatus; static;
    class function STARTING: TProjectVersionStatus; static;
    class function STOPPED: TProjectVersionStatus; static;
    class function STOPPING: TProjectVersionStatus; static;
    class function TRAINING_COMPLETED: TProjectVersionStatus; static;
    class function TRAINING_FAILED: TProjectVersionStatus; static;
    class function TRAINING_IN_PROGRESS: TProjectVersionStatus; static;
    class operator Equal(a: TProjectVersionStatus; b: TProjectVersionStatus): Boolean;
    class operator NotEqual(a: TProjectVersionStatus; b: TProjectVersionStatus): Boolean;
    class operator Implicit(a: string): TProjectVersionStatus;
    property Value: string read FValue;
  end;
  
  TProtectiveEquipmentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FACE_COVER: TProtectiveEquipmentType; static;
    class function HAND_COVER: TProtectiveEquipmentType; static;
    class function HEAD_COVER: TProtectiveEquipmentType; static;
    class operator Equal(a: TProtectiveEquipmentType; b: TProtectiveEquipmentType): Boolean;
    class operator NotEqual(a: TProtectiveEquipmentType; b: TProtectiveEquipmentType): Boolean;
    class operator Implicit(a: string): TProtectiveEquipmentType;
    property Value: string read FValue;
  end;
  
  TQualityFilter = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AUTO: TQualityFilter; static;
    class function HIGH: TQualityFilter; static;
    class function LOW: TQualityFilter; static;
    class function MEDIUM: TQualityFilter; static;
    class function NONE: TQualityFilter; static;
    class operator Equal(a: TQualityFilter; b: TQualityFilter): Boolean;
    class operator NotEqual(a: TQualityFilter; b: TQualityFilter): Boolean;
    class operator Implicit(a: string): TQualityFilter;
    property Value: string read FValue;
  end;
  
  TReason = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EXCEEDS_MAX_FACES: TReason; static;
    class function EXTREME_POSE: TReason; static;
    class function LOW_BRIGHTNESS: TReason; static;
    class function LOW_CONFIDENCE: TReason; static;
    class function LOW_FACE_QUALITY: TReason; static;
    class function LOW_SHARPNESS: TReason; static;
    class function SMALL_BOUNDING_BOX: TReason; static;
    class operator Equal(a: TReason; b: TReason): Boolean;
    class operator NotEqual(a: TReason; b: TReason): Boolean;
    class operator Implicit(a: string): TReason;
    property Value: string read FValue;
  end;
  
  TSegmentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function SHOT: TSegmentType; static;
    class function TECHNICAL_CUE: TSegmentType; static;
    class operator Equal(a: TSegmentType; b: TSegmentType): Boolean;
    class operator NotEqual(a: TSegmentType; b: TSegmentType): Boolean;
    class operator Implicit(a: string): TSegmentType;
    property Value: string read FValue;
  end;
  
  TStreamProcessorStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TStreamProcessorStatus; static;
    class function RUNNING: TStreamProcessorStatus; static;
    class function STARTING: TStreamProcessorStatus; static;
    class function STOPPED: TStreamProcessorStatus; static;
    class function STOPPING: TStreamProcessorStatus; static;
    class operator Equal(a: TStreamProcessorStatus; b: TStreamProcessorStatus): Boolean;
    class operator NotEqual(a: TStreamProcessorStatus; b: TStreamProcessorStatus): Boolean;
    class operator Implicit(a: string): TStreamProcessorStatus;
    property Value: string read FValue;
  end;
  
  TTechnicalCueType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BlackFrames: TTechnicalCueType; static;
    class function ColorBars: TTechnicalCueType; static;
    class function EndCredits: TTechnicalCueType; static;
    class operator Equal(a: TTechnicalCueType; b: TTechnicalCueType): Boolean;
    class operator NotEqual(a: TTechnicalCueType; b: TTechnicalCueType): Boolean;
    class operator Implicit(a: string): TTechnicalCueType;
    property Value: string read FValue;
  end;
  
  TTextTypes = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function LINE: TTextTypes; static;
    class function WORD: TTextTypes; static;
    class operator Equal(a: TTextTypes; b: TTextTypes): Boolean;
    class operator NotEqual(a: TTextTypes; b: TTextTypes): Boolean;
    class operator Implicit(a: string): TTextTypes;
    property Value: string read FValue;
  end;
  
  TVideoJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TVideoJobStatus; static;
    class function IN_PROGRESS: TVideoJobStatus; static;
    class function SUCCEEDED: TVideoJobStatus; static;
    class operator Equal(a: TVideoJobStatus; b: TVideoJobStatus): Boolean;
    class operator NotEqual(a: TVideoJobStatus; b: TVideoJobStatus): Boolean;
    class operator Implicit(a: string): TVideoJobStatus;
    property Value: string read FValue;
  end;
  
implementation

{ TAttribute }

constructor TAttribute.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAttribute.ALL: TAttribute;
begin
  Result := TAttribute.Create('ALL');
end;

class function TAttribute.DEFAULT: TAttribute;
begin
  Result := TAttribute.Create('DEFAULT');
end;

class operator TAttribute.Equal(a: TAttribute; b: TAttribute): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAttribute.NotEqual(a: TAttribute; b: TAttribute): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAttribute.Implicit(a: string): TAttribute;
begin
  Result.FValue := a;;
end;

{ TBodyPart }

constructor TBodyPart.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBodyPart.FACE: TBodyPart;
begin
  Result := TBodyPart.Create('FACE');
end;

class function TBodyPart.HEAD: TBodyPart;
begin
  Result := TBodyPart.Create('HEAD');
end;

class function TBodyPart.LEFT_HAND: TBodyPart;
begin
  Result := TBodyPart.Create('LEFT_HAND');
end;

class function TBodyPart.RIGHT_HAND: TBodyPart;
begin
  Result := TBodyPart.Create('RIGHT_HAND');
end;

class operator TBodyPart.Equal(a: TBodyPart; b: TBodyPart): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBodyPart.NotEqual(a: TBodyPart; b: TBodyPart): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBodyPart.Implicit(a: string): TBodyPart;
begin
  Result.FValue := a;;
end;

{ TCelebrityRecognitionSortBy }

constructor TCelebrityRecognitionSortBy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCelebrityRecognitionSortBy.ID: TCelebrityRecognitionSortBy;
begin
  Result := TCelebrityRecognitionSortBy.Create('ID');
end;

class function TCelebrityRecognitionSortBy.TIMESTAMP: TCelebrityRecognitionSortBy;
begin
  Result := TCelebrityRecognitionSortBy.Create('TIMESTAMP');
end;

class operator TCelebrityRecognitionSortBy.Equal(a: TCelebrityRecognitionSortBy; b: TCelebrityRecognitionSortBy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCelebrityRecognitionSortBy.NotEqual(a: TCelebrityRecognitionSortBy; b: TCelebrityRecognitionSortBy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCelebrityRecognitionSortBy.Implicit(a: string): TCelebrityRecognitionSortBy;
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

{ TContentModerationSortBy }

constructor TContentModerationSortBy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TContentModerationSortBy.NAME: TContentModerationSortBy;
begin
  Result := TContentModerationSortBy.Create('NAME');
end;

class function TContentModerationSortBy.TIMESTAMP: TContentModerationSortBy;
begin
  Result := TContentModerationSortBy.Create('TIMESTAMP');
end;

class operator TContentModerationSortBy.Equal(a: TContentModerationSortBy; b: TContentModerationSortBy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TContentModerationSortBy.NotEqual(a: TContentModerationSortBy; b: TContentModerationSortBy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TContentModerationSortBy.Implicit(a: string): TContentModerationSortBy;
begin
  Result.FValue := a;;
end;

{ TEmotionName }

constructor TEmotionName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEmotionName.ANGRY: TEmotionName;
begin
  Result := TEmotionName.Create('ANGRY');
end;

class function TEmotionName.CALM: TEmotionName;
begin
  Result := TEmotionName.Create('CALM');
end;

class function TEmotionName.CONFUSED: TEmotionName;
begin
  Result := TEmotionName.Create('CONFUSED');
end;

class function TEmotionName.DISGUSTED: TEmotionName;
begin
  Result := TEmotionName.Create('DISGUSTED');
end;

class function TEmotionName.FEAR: TEmotionName;
begin
  Result := TEmotionName.Create('FEAR');
end;

class function TEmotionName.HAPPY: TEmotionName;
begin
  Result := TEmotionName.Create('HAPPY');
end;

class function TEmotionName.SAD: TEmotionName;
begin
  Result := TEmotionName.Create('SAD');
end;

class function TEmotionName.SURPRISED: TEmotionName;
begin
  Result := TEmotionName.Create('SURPRISED');
end;

class function TEmotionName.UNKNOWN: TEmotionName;
begin
  Result := TEmotionName.Create('UNKNOWN');
end;

class operator TEmotionName.Equal(a: TEmotionName; b: TEmotionName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEmotionName.NotEqual(a: TEmotionName; b: TEmotionName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEmotionName.Implicit(a: string): TEmotionName;
begin
  Result.FValue := a;;
end;

{ TFaceAttributes }

constructor TFaceAttributes.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFaceAttributes.ALL: TFaceAttributes;
begin
  Result := TFaceAttributes.Create('ALL');
end;

class function TFaceAttributes.DEFAULT: TFaceAttributes;
begin
  Result := TFaceAttributes.Create('DEFAULT');
end;

class operator TFaceAttributes.Equal(a: TFaceAttributes; b: TFaceAttributes): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFaceAttributes.NotEqual(a: TFaceAttributes; b: TFaceAttributes): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFaceAttributes.Implicit(a: string): TFaceAttributes;
begin
  Result.FValue := a;;
end;

{ TFaceSearchSortBy }

constructor TFaceSearchSortBy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFaceSearchSortBy.INDEX: TFaceSearchSortBy;
begin
  Result := TFaceSearchSortBy.Create('INDEX');
end;

class function TFaceSearchSortBy.TIMESTAMP: TFaceSearchSortBy;
begin
  Result := TFaceSearchSortBy.Create('TIMESTAMP');
end;

class operator TFaceSearchSortBy.Equal(a: TFaceSearchSortBy; b: TFaceSearchSortBy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFaceSearchSortBy.NotEqual(a: TFaceSearchSortBy; b: TFaceSearchSortBy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFaceSearchSortBy.Implicit(a: string): TFaceSearchSortBy;
begin
  Result.FValue := a;;
end;

{ TGenderType }

constructor TGenderType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TGenderType.Female: TGenderType;
begin
  Result := TGenderType.Create('Female');
end;

class function TGenderType.Male: TGenderType;
begin
  Result := TGenderType.Create('Male');
end;

class operator TGenderType.Equal(a: TGenderType; b: TGenderType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TGenderType.NotEqual(a: TGenderType; b: TGenderType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TGenderType.Implicit(a: string): TGenderType;
begin
  Result.FValue := a;;
end;

{ TLabelDetectionSortBy }

constructor TLabelDetectionSortBy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLabelDetectionSortBy.NAME: TLabelDetectionSortBy;
begin
  Result := TLabelDetectionSortBy.Create('NAME');
end;

class function TLabelDetectionSortBy.TIMESTAMP: TLabelDetectionSortBy;
begin
  Result := TLabelDetectionSortBy.Create('TIMESTAMP');
end;

class operator TLabelDetectionSortBy.Equal(a: TLabelDetectionSortBy; b: TLabelDetectionSortBy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLabelDetectionSortBy.NotEqual(a: TLabelDetectionSortBy; b: TLabelDetectionSortBy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLabelDetectionSortBy.Implicit(a: string): TLabelDetectionSortBy;
begin
  Result.FValue := a;;
end;

{ TLandmarkType }

constructor TLandmarkType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLandmarkType.ChinBottom: TLandmarkType;
begin
  Result := TLandmarkType.Create('chinBottom');
end;

class function TLandmarkType.EyeLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('eyeLeft');
end;

class function TLandmarkType.EyeRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('eyeRight');
end;

class function TLandmarkType.LeftEyeBrowLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeBrowLeft');
end;

class function TLandmarkType.LeftEyeBrowRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeBrowRight');
end;

class function TLandmarkType.LeftEyeBrowUp: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeBrowUp');
end;

class function TLandmarkType.LeftEyeDown: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeDown');
end;

class function TLandmarkType.LeftEyeLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeLeft');
end;

class function TLandmarkType.LeftEyeRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeRight');
end;

class function TLandmarkType.LeftEyeUp: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftEyeUp');
end;

class function TLandmarkType.LeftPupil: TLandmarkType;
begin
  Result := TLandmarkType.Create('leftPupil');
end;

class function TLandmarkType.MidJawlineLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('midJawlineLeft');
end;

class function TLandmarkType.MidJawlineRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('midJawlineRight');
end;

class function TLandmarkType.MouthDown: TLandmarkType;
begin
  Result := TLandmarkType.Create('mouthDown');
end;

class function TLandmarkType.MouthLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('mouthLeft');
end;

class function TLandmarkType.MouthRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('mouthRight');
end;

class function TLandmarkType.MouthUp: TLandmarkType;
begin
  Result := TLandmarkType.Create('mouthUp');
end;

class function TLandmarkType.Nose: TLandmarkType;
begin
  Result := TLandmarkType.Create('nose');
end;

class function TLandmarkType.NoseLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('noseLeft');
end;

class function TLandmarkType.NoseRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('noseRight');
end;

class function TLandmarkType.RightEyeBrowLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeBrowLeft');
end;

class function TLandmarkType.RightEyeBrowRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeBrowRight');
end;

class function TLandmarkType.RightEyeBrowUp: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeBrowUp');
end;

class function TLandmarkType.RightEyeDown: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeDown');
end;

class function TLandmarkType.RightEyeLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeLeft');
end;

class function TLandmarkType.RightEyeRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeRight');
end;

class function TLandmarkType.RightEyeUp: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightEyeUp');
end;

class function TLandmarkType.RightPupil: TLandmarkType;
begin
  Result := TLandmarkType.Create('rightPupil');
end;

class function TLandmarkType.UpperJawlineLeft: TLandmarkType;
begin
  Result := TLandmarkType.Create('upperJawlineLeft');
end;

class function TLandmarkType.UpperJawlineRight: TLandmarkType;
begin
  Result := TLandmarkType.Create('upperJawlineRight');
end;

class operator TLandmarkType.Equal(a: TLandmarkType; b: TLandmarkType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLandmarkType.NotEqual(a: TLandmarkType; b: TLandmarkType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLandmarkType.Implicit(a: string): TLandmarkType;
begin
  Result.FValue := a;;
end;

{ TOrientationCorrection }

constructor TOrientationCorrection.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOrientationCorrection.ROTATE_0: TOrientationCorrection;
begin
  Result := TOrientationCorrection.Create('ROTATE_0');
end;

class function TOrientationCorrection.ROTATE_180: TOrientationCorrection;
begin
  Result := TOrientationCorrection.Create('ROTATE_180');
end;

class function TOrientationCorrection.ROTATE_270: TOrientationCorrection;
begin
  Result := TOrientationCorrection.Create('ROTATE_270');
end;

class function TOrientationCorrection.ROTATE_90: TOrientationCorrection;
begin
  Result := TOrientationCorrection.Create('ROTATE_90');
end;

class operator TOrientationCorrection.Equal(a: TOrientationCorrection; b: TOrientationCorrection): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOrientationCorrection.NotEqual(a: TOrientationCorrection; b: TOrientationCorrection): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOrientationCorrection.Implicit(a: string): TOrientationCorrection;
begin
  Result.FValue := a;;
end;

{ TPersonTrackingSortBy }

constructor TPersonTrackingSortBy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPersonTrackingSortBy.INDEX: TPersonTrackingSortBy;
begin
  Result := TPersonTrackingSortBy.Create('INDEX');
end;

class function TPersonTrackingSortBy.TIMESTAMP: TPersonTrackingSortBy;
begin
  Result := TPersonTrackingSortBy.Create('TIMESTAMP');
end;

class operator TPersonTrackingSortBy.Equal(a: TPersonTrackingSortBy; b: TPersonTrackingSortBy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPersonTrackingSortBy.NotEqual(a: TPersonTrackingSortBy; b: TPersonTrackingSortBy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPersonTrackingSortBy.Implicit(a: string): TPersonTrackingSortBy;
begin
  Result.FValue := a;;
end;

{ TProjectStatus }

constructor TProjectStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TProjectStatus.CREATED: TProjectStatus;
begin
  Result := TProjectStatus.Create('CREATED');
end;

class function TProjectStatus.CREATING: TProjectStatus;
begin
  Result := TProjectStatus.Create('CREATING');
end;

class function TProjectStatus.DELETING: TProjectStatus;
begin
  Result := TProjectStatus.Create('DELETING');
end;

class operator TProjectStatus.Equal(a: TProjectStatus; b: TProjectStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TProjectStatus.NotEqual(a: TProjectStatus; b: TProjectStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TProjectStatus.Implicit(a: string): TProjectStatus;
begin
  Result.FValue := a;;
end;

{ TProjectVersionStatus }

constructor TProjectVersionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TProjectVersionStatus.DELETING: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('DELETING');
end;

class function TProjectVersionStatus.FAILED: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('FAILED');
end;

class function TProjectVersionStatus.RUNNING: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('RUNNING');
end;

class function TProjectVersionStatus.STARTING: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('STARTING');
end;

class function TProjectVersionStatus.STOPPED: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('STOPPED');
end;

class function TProjectVersionStatus.STOPPING: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('STOPPING');
end;

class function TProjectVersionStatus.TRAINING_COMPLETED: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('TRAINING_COMPLETED');
end;

class function TProjectVersionStatus.TRAINING_FAILED: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('TRAINING_FAILED');
end;

class function TProjectVersionStatus.TRAINING_IN_PROGRESS: TProjectVersionStatus;
begin
  Result := TProjectVersionStatus.Create('TRAINING_IN_PROGRESS');
end;

class operator TProjectVersionStatus.Equal(a: TProjectVersionStatus; b: TProjectVersionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TProjectVersionStatus.NotEqual(a: TProjectVersionStatus; b: TProjectVersionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TProjectVersionStatus.Implicit(a: string): TProjectVersionStatus;
begin
  Result.FValue := a;;
end;

{ TProtectiveEquipmentType }

constructor TProtectiveEquipmentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TProtectiveEquipmentType.FACE_COVER: TProtectiveEquipmentType;
begin
  Result := TProtectiveEquipmentType.Create('FACE_COVER');
end;

class function TProtectiveEquipmentType.HAND_COVER: TProtectiveEquipmentType;
begin
  Result := TProtectiveEquipmentType.Create('HAND_COVER');
end;

class function TProtectiveEquipmentType.HEAD_COVER: TProtectiveEquipmentType;
begin
  Result := TProtectiveEquipmentType.Create('HEAD_COVER');
end;

class operator TProtectiveEquipmentType.Equal(a: TProtectiveEquipmentType; b: TProtectiveEquipmentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TProtectiveEquipmentType.NotEqual(a: TProtectiveEquipmentType; b: TProtectiveEquipmentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TProtectiveEquipmentType.Implicit(a: string): TProtectiveEquipmentType;
begin
  Result.FValue := a;;
end;

{ TQualityFilter }

constructor TQualityFilter.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TQualityFilter.AUTO: TQualityFilter;
begin
  Result := TQualityFilter.Create('AUTO');
end;

class function TQualityFilter.HIGH: TQualityFilter;
begin
  Result := TQualityFilter.Create('HIGH');
end;

class function TQualityFilter.LOW: TQualityFilter;
begin
  Result := TQualityFilter.Create('LOW');
end;

class function TQualityFilter.MEDIUM: TQualityFilter;
begin
  Result := TQualityFilter.Create('MEDIUM');
end;

class function TQualityFilter.NONE: TQualityFilter;
begin
  Result := TQualityFilter.Create('NONE');
end;

class operator TQualityFilter.Equal(a: TQualityFilter; b: TQualityFilter): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TQualityFilter.NotEqual(a: TQualityFilter; b: TQualityFilter): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TQualityFilter.Implicit(a: string): TQualityFilter;
begin
  Result.FValue := a;;
end;

{ TReason }

constructor TReason.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReason.EXCEEDS_MAX_FACES: TReason;
begin
  Result := TReason.Create('EXCEEDS_MAX_FACES');
end;

class function TReason.EXTREME_POSE: TReason;
begin
  Result := TReason.Create('EXTREME_POSE');
end;

class function TReason.LOW_BRIGHTNESS: TReason;
begin
  Result := TReason.Create('LOW_BRIGHTNESS');
end;

class function TReason.LOW_CONFIDENCE: TReason;
begin
  Result := TReason.Create('LOW_CONFIDENCE');
end;

class function TReason.LOW_FACE_QUALITY: TReason;
begin
  Result := TReason.Create('LOW_FACE_QUALITY');
end;

class function TReason.LOW_SHARPNESS: TReason;
begin
  Result := TReason.Create('LOW_SHARPNESS');
end;

class function TReason.SMALL_BOUNDING_BOX: TReason;
begin
  Result := TReason.Create('SMALL_BOUNDING_BOX');
end;

class operator TReason.Equal(a: TReason; b: TReason): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReason.NotEqual(a: TReason; b: TReason): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReason.Implicit(a: string): TReason;
begin
  Result.FValue := a;;
end;

{ TSegmentType }

constructor TSegmentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSegmentType.SHOT: TSegmentType;
begin
  Result := TSegmentType.Create('SHOT');
end;

class function TSegmentType.TECHNICAL_CUE: TSegmentType;
begin
  Result := TSegmentType.Create('TECHNICAL_CUE');
end;

class operator TSegmentType.Equal(a: TSegmentType; b: TSegmentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSegmentType.NotEqual(a: TSegmentType; b: TSegmentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSegmentType.Implicit(a: string): TSegmentType;
begin
  Result.FValue := a;;
end;

{ TStreamProcessorStatus }

constructor TStreamProcessorStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStreamProcessorStatus.FAILED: TStreamProcessorStatus;
begin
  Result := TStreamProcessorStatus.Create('FAILED');
end;

class function TStreamProcessorStatus.RUNNING: TStreamProcessorStatus;
begin
  Result := TStreamProcessorStatus.Create('RUNNING');
end;

class function TStreamProcessorStatus.STARTING: TStreamProcessorStatus;
begin
  Result := TStreamProcessorStatus.Create('STARTING');
end;

class function TStreamProcessorStatus.STOPPED: TStreamProcessorStatus;
begin
  Result := TStreamProcessorStatus.Create('STOPPED');
end;

class function TStreamProcessorStatus.STOPPING: TStreamProcessorStatus;
begin
  Result := TStreamProcessorStatus.Create('STOPPING');
end;

class operator TStreamProcessorStatus.Equal(a: TStreamProcessorStatus; b: TStreamProcessorStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStreamProcessorStatus.NotEqual(a: TStreamProcessorStatus; b: TStreamProcessorStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStreamProcessorStatus.Implicit(a: string): TStreamProcessorStatus;
begin
  Result.FValue := a;;
end;

{ TTechnicalCueType }

constructor TTechnicalCueType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTechnicalCueType.BlackFrames: TTechnicalCueType;
begin
  Result := TTechnicalCueType.Create('BlackFrames');
end;

class function TTechnicalCueType.ColorBars: TTechnicalCueType;
begin
  Result := TTechnicalCueType.Create('ColorBars');
end;

class function TTechnicalCueType.EndCredits: TTechnicalCueType;
begin
  Result := TTechnicalCueType.Create('EndCredits');
end;

class operator TTechnicalCueType.Equal(a: TTechnicalCueType; b: TTechnicalCueType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTechnicalCueType.NotEqual(a: TTechnicalCueType; b: TTechnicalCueType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTechnicalCueType.Implicit(a: string): TTechnicalCueType;
begin
  Result.FValue := a;;
end;

{ TTextTypes }

constructor TTextTypes.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTextTypes.LINE: TTextTypes;
begin
  Result := TTextTypes.Create('LINE');
end;

class function TTextTypes.WORD: TTextTypes;
begin
  Result := TTextTypes.Create('WORD');
end;

class operator TTextTypes.Equal(a: TTextTypes; b: TTextTypes): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTextTypes.NotEqual(a: TTextTypes; b: TTextTypes): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTextTypes.Implicit(a: string): TTextTypes;
begin
  Result.FValue := a;;
end;

{ TVideoJobStatus }

constructor TVideoJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TVideoJobStatus.FAILED: TVideoJobStatus;
begin
  Result := TVideoJobStatus.Create('FAILED');
end;

class function TVideoJobStatus.IN_PROGRESS: TVideoJobStatus;
begin
  Result := TVideoJobStatus.Create('IN_PROGRESS');
end;

class function TVideoJobStatus.SUCCEEDED: TVideoJobStatus;
begin
  Result := TVideoJobStatus.Create('SUCCEEDED');
end;

class operator TVideoJobStatus.Equal(a: TVideoJobStatus; b: TVideoJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TVideoJobStatus.NotEqual(a: TVideoJobStatus; b: TVideoJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TVideoJobStatus.Implicit(a: string): TVideoJobStatus;
begin
  Result.FValue := a;;
end;

end.
