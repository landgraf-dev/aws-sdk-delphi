unit AWS.LexRuntimeService.Enums;

interface

type
  TConfirmationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Confirmed: TConfirmationStatus; static;
    class function Denied: TConfirmationStatus; static;
    class function None: TConfirmationStatus; static;
    class operator Equal(a: TConfirmationStatus; b: TConfirmationStatus): Boolean;
    class operator NotEqual(a: TConfirmationStatus; b: TConfirmationStatus): Boolean;
    class operator Implicit(a: string): TConfirmationStatus;
    property Value: string read FValue;
  end;
  
  TContentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ApplicationVndAmazonawsCardGeneric: TContentType; static;
    class operator Equal(a: TContentType; b: TContentType): Boolean;
    class operator NotEqual(a: TContentType; b: TContentType): Boolean;
    class operator Implicit(a: string): TContentType;
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
    class operator Equal(a: TDialogActionType; b: TDialogActionType): Boolean;
    class operator NotEqual(a: TDialogActionType; b: TDialogActionType): Boolean;
    class operator Implicit(a: string): TDialogActionType;
    property Value: string read FValue;
  end;
  
  TDialogState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ConfirmIntent: TDialogState; static;
    class function ElicitIntent: TDialogState; static;
    class function ElicitSlot: TDialogState; static;
    class function Failed: TDialogState; static;
    class function Fulfilled: TDialogState; static;
    class function ReadyForFulfillment: TDialogState; static;
    class operator Equal(a: TDialogState; b: TDialogState): Boolean;
    class operator NotEqual(a: TDialogState; b: TDialogState): Boolean;
    class operator Implicit(a: string): TDialogState;
    property Value: string read FValue;
  end;
  
  TFulfillmentState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TFulfillmentState; static;
    class function Fulfilled: TFulfillmentState; static;
    class function ReadyForFulfillment: TFulfillmentState; static;
    class operator Equal(a: TFulfillmentState; b: TFulfillmentState): Boolean;
    class operator NotEqual(a: TFulfillmentState; b: TFulfillmentState): Boolean;
    class operator Implicit(a: string): TFulfillmentState;
    property Value: string read FValue;
  end;
  
  TMessageFormatType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Composite: TMessageFormatType; static;
    class function CustomPayload: TMessageFormatType; static;
    class function PlainText: TMessageFormatType; static;
    class function SSML: TMessageFormatType; static;
    class operator Equal(a: TMessageFormatType; b: TMessageFormatType): Boolean;
    class operator NotEqual(a: TMessageFormatType; b: TMessageFormatType): Boolean;
    class operator Implicit(a: string): TMessageFormatType;
    property Value: string read FValue;
  end;
  
implementation

{ TConfirmationStatus }

constructor TConfirmationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TConfirmationStatus.Confirmed: TConfirmationStatus;
begin
  Result := TConfirmationStatus.Create('Confirmed');
end;

class function TConfirmationStatus.Denied: TConfirmationStatus;
begin
  Result := TConfirmationStatus.Create('Denied');
end;

class function TConfirmationStatus.None: TConfirmationStatus;
begin
  Result := TConfirmationStatus.Create('None');
end;

class operator TConfirmationStatus.Equal(a: TConfirmationStatus; b: TConfirmationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TConfirmationStatus.NotEqual(a: TConfirmationStatus; b: TConfirmationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TConfirmationStatus.Implicit(a: string): TConfirmationStatus;
begin
  Result.FValue := a;;
end;

{ TContentType }

constructor TContentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TContentType.ApplicationVndAmazonawsCardGeneric: TContentType;
begin
  Result := TContentType.Create('application/vnd.amazonaws.card.generic');
end;

class operator TContentType.Equal(a: TContentType; b: TContentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TContentType.NotEqual(a: TContentType; b: TContentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TContentType.Implicit(a: string): TContentType;
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

{ TDialogState }

constructor TDialogState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDialogState.ConfirmIntent: TDialogState;
begin
  Result := TDialogState.Create('ConfirmIntent');
end;

class function TDialogState.ElicitIntent: TDialogState;
begin
  Result := TDialogState.Create('ElicitIntent');
end;

class function TDialogState.ElicitSlot: TDialogState;
begin
  Result := TDialogState.Create('ElicitSlot');
end;

class function TDialogState.Failed: TDialogState;
begin
  Result := TDialogState.Create('Failed');
end;

class function TDialogState.Fulfilled: TDialogState;
begin
  Result := TDialogState.Create('Fulfilled');
end;

class function TDialogState.ReadyForFulfillment: TDialogState;
begin
  Result := TDialogState.Create('ReadyForFulfillment');
end;

class operator TDialogState.Equal(a: TDialogState; b: TDialogState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDialogState.NotEqual(a: TDialogState; b: TDialogState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDialogState.Implicit(a: string): TDialogState;
begin
  Result.FValue := a;;
end;

{ TFulfillmentState }

constructor TFulfillmentState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFulfillmentState.Failed: TFulfillmentState;
begin
  Result := TFulfillmentState.Create('Failed');
end;

class function TFulfillmentState.Fulfilled: TFulfillmentState;
begin
  Result := TFulfillmentState.Create('Fulfilled');
end;

class function TFulfillmentState.ReadyForFulfillment: TFulfillmentState;
begin
  Result := TFulfillmentState.Create('ReadyForFulfillment');
end;

class operator TFulfillmentState.Equal(a: TFulfillmentState; b: TFulfillmentState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFulfillmentState.NotEqual(a: TFulfillmentState; b: TFulfillmentState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFulfillmentState.Implicit(a: string): TFulfillmentState;
begin
  Result.FValue := a;;
end;

{ TMessageFormatType }

constructor TMessageFormatType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMessageFormatType.Composite: TMessageFormatType;
begin
  Result := TMessageFormatType.Create('Composite');
end;

class function TMessageFormatType.CustomPayload: TMessageFormatType;
begin
  Result := TMessageFormatType.Create('CustomPayload');
end;

class function TMessageFormatType.PlainText: TMessageFormatType;
begin
  Result := TMessageFormatType.Create('PlainText');
end;

class function TMessageFormatType.SSML: TMessageFormatType;
begin
  Result := TMessageFormatType.Create('SSML');
end;

class operator TMessageFormatType.Equal(a: TMessageFormatType; b: TMessageFormatType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMessageFormatType.NotEqual(a: TMessageFormatType; b: TMessageFormatType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMessageFormatType.Implicit(a: string): TMessageFormatType;
begin
  Result.FValue := a;;
end;

end.
