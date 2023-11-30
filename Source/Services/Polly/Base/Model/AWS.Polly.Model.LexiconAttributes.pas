unit AWS.Polly.Model.LexiconAttributes;

interface

uses
  AWS.Nullable, 
  AWS.Polly.Enums;

type
  TLexiconAttributes = class;
  
  ILexiconAttributes = interface
    function GetAlphabet: string;
    procedure SetAlphabet(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetLexemesCount: Integer;
    procedure SetLexemesCount(const Value: Integer);
    function GetLexiconArn: string;
    procedure SetLexiconArn(const Value: string);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function Obj: TLexiconAttributes;
    function IsSetAlphabet: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetLexemesCount: Boolean;
    function IsSetLexiconArn: Boolean;
    function IsSetSize: Boolean;
    property Alphabet: string read GetAlphabet write SetAlphabet;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property LexemesCount: Integer read GetLexemesCount write SetLexemesCount;
    property LexiconArn: string read GetLexiconArn write SetLexiconArn;
    property Size: Integer read GetSize write SetSize;
  end;
  
  TLexiconAttributes = class
  strict private
    FAlphabet: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FLastModified: Nullable<TDateTime>;
    FLexemesCount: Nullable<Integer>;
    FLexiconArn: Nullable<string>;
    FSize: Nullable<Integer>;
    function GetAlphabet: string;
    procedure SetAlphabet(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetLexemesCount: Integer;
    procedure SetLexemesCount(const Value: Integer);
    function GetLexiconArn: string;
    procedure SetLexiconArn(const Value: string);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
  strict protected
    function Obj: TLexiconAttributes;
  public
    function IsSetAlphabet: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetLexemesCount: Boolean;
    function IsSetLexiconArn: Boolean;
    function IsSetSize: Boolean;
    property Alphabet: string read GetAlphabet write SetAlphabet;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property LexemesCount: Integer read GetLexemesCount write SetLexemesCount;
    property LexiconArn: string read GetLexiconArn write SetLexiconArn;
    property Size: Integer read GetSize write SetSize;
  end;
  
implementation

{ TLexiconAttributes }

function TLexiconAttributes.Obj: TLexiconAttributes;
begin
  Result := Self;
end;

function TLexiconAttributes.GetAlphabet: string;
begin
  Result := FAlphabet.ValueOrDefault;
end;

procedure TLexiconAttributes.SetAlphabet(const Value: string);
begin
  FAlphabet := Value;
end;

function TLexiconAttributes.IsSetAlphabet: Boolean;
begin
  Result := FAlphabet.HasValue;
end;

function TLexiconAttributes.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TLexiconAttributes.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TLexiconAttributes.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TLexiconAttributes.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TLexiconAttributes.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TLexiconAttributes.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TLexiconAttributes.GetLexemesCount: Integer;
begin
  Result := FLexemesCount.ValueOrDefault;
end;

procedure TLexiconAttributes.SetLexemesCount(const Value: Integer);
begin
  FLexemesCount := Value;
end;

function TLexiconAttributes.IsSetLexemesCount: Boolean;
begin
  Result := FLexemesCount.HasValue;
end;

function TLexiconAttributes.GetLexiconArn: string;
begin
  Result := FLexiconArn.ValueOrDefault;
end;

procedure TLexiconAttributes.SetLexiconArn(const Value: string);
begin
  FLexiconArn := Value;
end;

function TLexiconAttributes.IsSetLexiconArn: Boolean;
begin
  Result := FLexiconArn.HasValue;
end;

function TLexiconAttributes.GetSize: Integer;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TLexiconAttributes.SetSize(const Value: Integer);
begin
  FSize := Value;
end;

function TLexiconAttributes.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

end.
