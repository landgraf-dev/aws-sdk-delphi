unit AWS.LexRuntimeV2.Enums;

interface

type
  TConfirmationState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Confirmed: TConfirmationState; static;
    class function Denied: TConfirmationState; static;
    class function None: TConfirmationState; static;
    class operator Equal(a: TConfirmationState; b: TConfirmationState): Boolean;
    class operator NotEqual(a: TConfirmationState; b: TConfirmationState): Boolean;
    class operator Implicit(a: string): TConfirmationState;
    property Value: string read FValue;
  end;
  
  TConversationMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AUDIO: TConversationMode; static;
    class function TEXT: TConversationMode; static;
    class operator Equal(a: TConversationMode; b: TConversationMode): Boolean;
    class operator NotEqual(a: TConversationMode; b: TConversationMode): Boolean;
    class operator Implicit(a: string): TConversationMode;
    property Value: string read FValue;
  end;
  
  TDialogActionType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Close: TDialogActionType; static;
    class function ConfirmIntent: TDialogActionType; static;
    class function Delegate: TDialogActionType; static;
    class function ElicitIntent: TDialogActionType; static;
    class function ElicitSlot: TDialogActionType; static;
    class function None: TDialogActionType; static;
    class operator Equal(a: TDialogActionType; b: TDialogActionType): Boolean;
    class operator NotEqual(a: TDialogActionType; b: TDialogActionType): Boolean;
    class operator Implicit(a: string): TDialogActionType;
    property Value: string read FValue;
  end;
  
  TInputMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DTMF: TInputMode; static;
    class function Speech: TInputMode; static;
    class function Text: TInputMode; static;
    class operator Equal(a: TInputMode; b: TInputMode): Boolean;
    class operator NotEqual(a: TInputMode; b: TInputMode): Boolean;
    class operator Implicit(a: string): TInputMode;
    property Value: string read FValue;
  end;
  
  TIntentState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TIntentState; static;
    class function Fulfilled: TIntentState; static;
    class function FulfillmentInProgress: TIntentState; static;
    class function InProgress: TIntentState; static;
    class function ReadyForFulfillment: TIntentState; static;
    class function Waiting: TIntentState; static;
    class operator Equal(a: TIntentState; b: TIntentState): Boolean;
    class operator NotEqual(a: TIntentState; b: TIntentState): Boolean;
    class operator Implicit(a: string): TIntentState;
    property Value: string read FValue;
  end;
  
  TMessageContentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CustomPayload: TMessageContentType; static;
    class function ImageResponseCard: TMessageContentType; static;
    class function PlainText: TMessageContentType; static;
    class function SSML: TMessageContentType; static;
    class operator Equal(a: TMessageContentType; b: TMessageContentType): Boolean;
    class operator NotEqual(a: TMessageContentType; b: TMessageContentType): Boolean;
    class operator Implicit(a: string): TMessageContentType;
    property Value: string read FValue;
  end;
  
  TPlaybackInterruptionReason = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DTMF_START_DETECTED: TPlaybackInterruptionReason; static;
    class function TEXT_DETECTED: TPlaybackInterruptionReason; static;
    class function VOICE_START_DETECTED: TPlaybackInterruptionReason; static;
    class operator Equal(a: TPlaybackInterruptionReason; b: TPlaybackInterruptionReason): Boolean;
    class operator NotEqual(a: TPlaybackInterruptionReason; b: TPlaybackInterruptionReason): Boolean;
    class operator Implicit(a: string): TPlaybackInterruptionReason;
    property Value: string read FValue;
  end;
  
  TSentimentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MIXED: TSentimentType; static;
    class function NEGATIVE: TSentimentType; static;
    class function NEUTRAL: TSentimentType; static;
    class function POSITIVE: TSentimentType; static;
    class operator Equal(a: TSentimentType; b: TSentimentType): Boolean;
    class operator NotEqual(a: TSentimentType; b: TSentimentType): Boolean;
    class operator Implicit(a: string): TSentimentType;
    property Value: string read FValue;
  end;
  
  TShape = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function List: TShape; static;
    class function Scalar: TShape; static;
    class operator Equal(a: TShape; b: TShape): Boolean;
    class operator NotEqual(a: TShape; b: TShape): Boolean;
    class operator Implicit(a: string): TShape;
    property Value: string read FValue;
  end;
  
  TStyleType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Default: TStyleType; static;
    class function SpellByLetter: TStyleType; static;
    class function SpellByWord: TStyleType; static;
    class operator Equal(a: TStyleType; b: TStyleType): Boolean;
    class operator NotEqual(a: TStyleType; b: TStyleType): Boolean;
    class operator Implicit(a: string): TStyleType;
    property Value: string read FValue;
  end;
  
implementation

{ TConfirmationState }

constructor TConfirmationState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TConfirmationState.Confirmed: TConfirmationState;
begin
  Result := TConfirmationState.Create('Confirmed');
end;

class function TConfirmationState.Denied: TConfirmationState;
begin
  Result := TConfirmationState.Create('Denied');
end;

class function TConfirmationState.None: TConfirmationState;
begin
  Result := TConfirmationState.Create('None');
end;

class operator TConfirmationState.Equal(a: TConfirmationState; b: TConfirmationState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TConfirmationState.NotEqual(a: TConfirmationState; b: TConfirmationState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TConfirmationState.Implicit(a: string): TConfirmationState;
begin
  Result.FValue := a;;
end;

{ TConversationMode }

constructor TConversationMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TConversationMode.AUDIO: TConversationMode;
begin
  Result := TConversationMode.Create('AUDIO');
end;

class function TConversationMode.TEXT: TConversationMode;
begin
  Result := TConversationMode.Create('TEXT');
end;

class operator TConversationMode.Equal(a: TConversationMode; b: TConversationMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TConversationMode.NotEqual(a: TConversationMode; b: TConversationMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TConversationMode.Implicit(a: string): TConversationMode;
begin
  Result.FValue := a;;
end;

{ TDialogActionType }

constructor TDialogActionType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDialogActionType.Close: TDialogActionType;
begin
  Result := TDialogActionType.Create('Close');
end;

class function TDialogActionType.ConfirmIntent: TDialogActionType;
begin
  Result := TDialogActionType.Create('ConfirmIntent');
end;

class function TDialogActionType.Delegate: TDialogActionType;
begin
  Result := TDialogActionType.Create('Delegate');
end;

class function TDialogActionType.ElicitIntent: TDialogActionType;
begin
  Result := TDialogActionType.Create('ElicitIntent');
end;

class function TDialogActionType.ElicitSlot: TDialogActionType;
begin
  Result := TDialogActionType.Create('ElicitSlot');
end;

class function TDialogActionType.None: TDialogActionType;
begin
  Result := TDialogActionType.Create('None');
end;

class operator TDialogActionType.Equal(a: TDialogActionType; b: TDialogActionType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDialogActionType.NotEqual(a: TDialogActionType; b: TDialogActionType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDialogActionType.Implicit(a: string): TDialogActionType;
begin
  Result.FValue := a;;
end;

{ TInputMode }

constructor TInputMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInputMode.DTMF: TInputMode;
begin
  Result := TInputMode.Create('DTMF');
end;

class function TInputMode.Speech: TInputMode;
begin
  Result := TInputMode.Create('Speech');
end;

class function TInputMode.Text: TInputMode;
begin
  Result := TInputMode.Create('Text');
end;

class operator TInputMode.Equal(a: TInputMode; b: TInputMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInputMode.NotEqual(a: TInputMode; b: TInputMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInputMode.Implicit(a: string): TInputMode;
begin
  Result.FValue := a;;
end;

{ TIntentState }

constructor TIntentState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TIntentState.Failed: TIntentState;
begin
  Result := TIntentState.Create('Failed');
end;

class function TIntentState.Fulfilled: TIntentState;
begin
  Result := TIntentState.Create('Fulfilled');
end;

class function TIntentState.FulfillmentInProgress: TIntentState;
begin
  Result := TIntentState.Create('FulfillmentInProgress');
end;

class function TIntentState.InProgress: TIntentState;
begin
  Result := TIntentState.Create('InProgress');
end;

class function TIntentState.ReadyForFulfillment: TIntentState;
begin
  Result := TIntentState.Create('ReadyForFulfillment');
end;

class function TIntentState.Waiting: TIntentState;
begin
  Result := TIntentState.Create('Waiting');
end;

class operator TIntentState.Equal(a: TIntentState; b: TIntentState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TIntentState.NotEqual(a: TIntentState; b: TIntentState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TIntentState.Implicit(a: string): TIntentState;
begin
  Result.FValue := a;;
end;

{ TMessageContentType }

constructor TMessageContentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMessageContentType.CustomPayload: TMessageContentType;
begin
  Result := TMessageContentType.Create('CustomPayload');
end;

class function TMessageContentType.ImageResponseCard: TMessageContentType;
begin
  Result := TMessageContentType.Create('ImageResponseCard');
end;

class function TMessageContentType.PlainText: TMessageContentType;
begin
  Result := TMessageContentType.Create('PlainText');
end;

class function TMessageContentType.SSML: TMessageContentType;
begin
  Result := TMessageContentType.Create('SSML');
end;

class operator TMessageContentType.Equal(a: TMessageContentType; b: TMessageContentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMessageContentType.NotEqual(a: TMessageContentType; b: TMessageContentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMessageContentType.Implicit(a: string): TMessageContentType;
begin
  Result.FValue := a;;
end;

{ TPlaybackInterruptionReason }

constructor TPlaybackInterruptionReason.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPlaybackInterruptionReason.DTMF_START_DETECTED: TPlaybackInterruptionReason;
begin
  Result := TPlaybackInterruptionReason.Create('DTMF_START_DETECTED');
end;

class function TPlaybackInterruptionReason.TEXT_DETECTED: TPlaybackInterruptionReason;
begin
  Result := TPlaybackInterruptionReason.Create('TEXT_DETECTED');
end;

class function TPlaybackInterruptionReason.VOICE_START_DETECTED: TPlaybackInterruptionReason;
begin
  Result := TPlaybackInterruptionReason.Create('VOICE_START_DETECTED');
end;

class operator TPlaybackInterruptionReason.Equal(a: TPlaybackInterruptionReason; b: TPlaybackInterruptionReason): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPlaybackInterruptionReason.NotEqual(a: TPlaybackInterruptionReason; b: TPlaybackInterruptionReason): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPlaybackInterruptionReason.Implicit(a: string): TPlaybackInterruptionReason;
begin
  Result.FValue := a;;
end;

{ TSentimentType }

constructor TSentimentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSentimentType.MIXED: TSentimentType;
begin
  Result := TSentimentType.Create('MIXED');
end;

class function TSentimentType.NEGATIVE: TSentimentType;
begin
  Result := TSentimentType.Create('NEGATIVE');
end;

class function TSentimentType.NEUTRAL: TSentimentType;
begin
  Result := TSentimentType.Create('NEUTRAL');
end;

class function TSentimentType.POSITIVE: TSentimentType;
begin
  Result := TSentimentType.Create('POSITIVE');
end;

class operator TSentimentType.Equal(a: TSentimentType; b: TSentimentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSentimentType.NotEqual(a: TSentimentType; b: TSentimentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSentimentType.Implicit(a: string): TSentimentType;
begin
  Result.FValue := a;;
end;

{ TShape }

constructor TShape.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TShape.List: TShape;
begin
  Result := TShape.Create('List');
end;

class function TShape.Scalar: TShape;
begin
  Result := TShape.Create('Scalar');
end;

class operator TShape.Equal(a: TShape; b: TShape): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TShape.NotEqual(a: TShape; b: TShape): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TShape.Implicit(a: string): TShape;
begin
  Result.FValue := a;;
end;

{ TStyleType }

constructor TStyleType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStyleType.Default: TStyleType;
begin
  Result := TStyleType.Create('Default');
end;

class function TStyleType.SpellByLetter: TStyleType;
begin
  Result := TStyleType.Create('SpellByLetter');
end;

class function TStyleType.SpellByWord: TStyleType;
begin
  Result := TStyleType.Create('SpellByWord');
end;

class operator TStyleType.Equal(a: TStyleType; b: TStyleType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStyleType.NotEqual(a: TStyleType; b: TStyleType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStyleType.Implicit(a: string): TStyleType;
begin
  Result.FValue := a;;
end;

end.
