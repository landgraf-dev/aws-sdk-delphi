unit AWS.SNS.Enums;

{$SCOPEDENUMS ON}

interface

type
  TLanguageCodeString = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DeDE: TLanguageCodeString; static;
    class function EnGB: TLanguageCodeString; static;
    class function EnUS: TLanguageCodeString; static;
    class function Es419: TLanguageCodeString; static;
    class function EsES: TLanguageCodeString; static;
    class function FrCA: TLanguageCodeString; static;
    class function FrFR: TLanguageCodeString; static;
    class function ItIT: TLanguageCodeString; static;
    class function JaJP: TLanguageCodeString; static;
    class function KrKR: TLanguageCodeString; static;
    class function PtBR: TLanguageCodeString; static;
    class function ZhCN: TLanguageCodeString; static;
    class function ZhTW: TLanguageCodeString; static;
    class operator Equal(a: TLanguageCodeString; b: TLanguageCodeString): Boolean;
    class operator NotEqual(a: TLanguageCodeString; b: TLanguageCodeString): Boolean;
    class operator Implicit(a: string): TLanguageCodeString;
    property Value: string read FValue;
  end;
  
  TNumberCapability = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MMS: TNumberCapability; static;
    class function SMS: TNumberCapability; static;
    class function VOICE: TNumberCapability; static;
    class operator Equal(a: TNumberCapability; b: TNumberCapability): Boolean;
    class operator NotEqual(a: TNumberCapability; b: TNumberCapability): Boolean;
    class operator Implicit(a: string): TNumberCapability;
    property Value: string read FValue;
  end;
  
  TRouteType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Premium: TRouteType; static;
    class function Promotional: TRouteType; static;
    class function Transactional: TRouteType; static;
    class operator Equal(a: TRouteType; b: TRouteType): Boolean;
    class operator NotEqual(a: TRouteType; b: TRouteType): Boolean;
    class operator Implicit(a: string): TRouteType;
    property Value: string read FValue;
  end;
  
  TSMSSandboxPhoneNumberVerificationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Pending: TSMSSandboxPhoneNumberVerificationStatus; static;
    class function Verified: TSMSSandboxPhoneNumberVerificationStatus; static;
    class operator Equal(a: TSMSSandboxPhoneNumberVerificationStatus; b: TSMSSandboxPhoneNumberVerificationStatus): Boolean;
    class operator NotEqual(a: TSMSSandboxPhoneNumberVerificationStatus; b: TSMSSandboxPhoneNumberVerificationStatus): Boolean;
    class operator Implicit(a: string): TSMSSandboxPhoneNumberVerificationStatus;
    property Value: string read FValue;
  end;
  
implementation

{ TLanguageCodeString }

constructor TLanguageCodeString.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLanguageCodeString.DeDE: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('de-DE');
end;

class function TLanguageCodeString.EnGB: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('en-GB');
end;

class function TLanguageCodeString.EnUS: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('en-US');
end;

class function TLanguageCodeString.Es419: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('es-419');
end;

class function TLanguageCodeString.EsES: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('es-ES');
end;

class function TLanguageCodeString.FrCA: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('fr-CA');
end;

class function TLanguageCodeString.FrFR: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('fr-FR');
end;

class function TLanguageCodeString.ItIT: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('it-IT');
end;

class function TLanguageCodeString.JaJP: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('ja-JP');
end;

class function TLanguageCodeString.KrKR: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('kr-KR');
end;

class function TLanguageCodeString.PtBR: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('pt-BR');
end;

class function TLanguageCodeString.ZhCN: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('zh-CN');
end;

class function TLanguageCodeString.ZhTW: TLanguageCodeString;
begin
  Result := TLanguageCodeString.Create('zh-TW');
end;

class operator TLanguageCodeString.Equal(a: TLanguageCodeString; b: TLanguageCodeString): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLanguageCodeString.NotEqual(a: TLanguageCodeString; b: TLanguageCodeString): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLanguageCodeString.Implicit(a: string): TLanguageCodeString;
begin
  Result.FValue := a;;
end;

{ TNumberCapability }

constructor TNumberCapability.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TNumberCapability.MMS: TNumberCapability;
begin
  Result := TNumberCapability.Create('MMS');
end;

class function TNumberCapability.SMS: TNumberCapability;
begin
  Result := TNumberCapability.Create('SMS');
end;

class function TNumberCapability.VOICE: TNumberCapability;
begin
  Result := TNumberCapability.Create('VOICE');
end;

class operator TNumberCapability.Equal(a: TNumberCapability; b: TNumberCapability): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TNumberCapability.NotEqual(a: TNumberCapability; b: TNumberCapability): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TNumberCapability.Implicit(a: string): TNumberCapability;
begin
  Result.FValue := a;;
end;

{ TRouteType }

constructor TRouteType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRouteType.Premium: TRouteType;
begin
  Result := TRouteType.Create('Premium');
end;

class function TRouteType.Promotional: TRouteType;
begin
  Result := TRouteType.Create('Promotional');
end;

class function TRouteType.Transactional: TRouteType;
begin
  Result := TRouteType.Create('Transactional');
end;

class operator TRouteType.Equal(a: TRouteType; b: TRouteType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRouteType.NotEqual(a: TRouteType; b: TRouteType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRouteType.Implicit(a: string): TRouteType;
begin
  Result.FValue := a;;
end;

{ TSMSSandboxPhoneNumberVerificationStatus }

constructor TSMSSandboxPhoneNumberVerificationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSMSSandboxPhoneNumberVerificationStatus.Pending: TSMSSandboxPhoneNumberVerificationStatus;
begin
  Result := TSMSSandboxPhoneNumberVerificationStatus.Create('Pending');
end;

class function TSMSSandboxPhoneNumberVerificationStatus.Verified: TSMSSandboxPhoneNumberVerificationStatus;
begin
  Result := TSMSSandboxPhoneNumberVerificationStatus.Create('Verified');
end;

class operator TSMSSandboxPhoneNumberVerificationStatus.Equal(a: TSMSSandboxPhoneNumberVerificationStatus; b: TSMSSandboxPhoneNumberVerificationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSMSSandboxPhoneNumberVerificationStatus.NotEqual(a: TSMSSandboxPhoneNumberVerificationStatus; b: TSMSSandboxPhoneNumberVerificationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSMSSandboxPhoneNumberVerificationStatus.Implicit(a: string): TSMSSandboxPhoneNumberVerificationStatus;
begin
  Result.FValue := a;;
end;

end.
