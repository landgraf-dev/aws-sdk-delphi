unit AWS.S3.Model.CSVOutput;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TCSVOutput = class;
  
  ICSVOutput = interface
    function GetFieldDelimiter: string;
    procedure SetFieldDelimiter(const Value: string);
    function GetQuoteCharacter: string;
    procedure SetQuoteCharacter(const Value: string);
    function GetQuoteEscapeCharacter: string;
    procedure SetQuoteEscapeCharacter(const Value: string);
    function GetQuoteFields: TQuoteFields;
    procedure SetQuoteFields(const Value: TQuoteFields);
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
    function Obj: TCSVOutput;
    function IsSetFieldDelimiter: Boolean;
    function IsSetQuoteCharacter: Boolean;
    function IsSetQuoteEscapeCharacter: Boolean;
    function IsSetQuoteFields: Boolean;
    function IsSetRecordDelimiter: Boolean;
    property FieldDelimiter: string read GetFieldDelimiter write SetFieldDelimiter;
    property QuoteCharacter: string read GetQuoteCharacter write SetQuoteCharacter;
    property QuoteEscapeCharacter: string read GetQuoteEscapeCharacter write SetQuoteEscapeCharacter;
    property QuoteFields: TQuoteFields read GetQuoteFields write SetQuoteFields;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
  TCSVOutput = class
  strict private
    FFieldDelimiter: Nullable<string>;
    FQuoteCharacter: Nullable<string>;
    FQuoteEscapeCharacter: Nullable<string>;
    FQuoteFields: Nullable<TQuoteFields>;
    FRecordDelimiter: Nullable<string>;
    function GetFieldDelimiter: string;
    procedure SetFieldDelimiter(const Value: string);
    function GetQuoteCharacter: string;
    procedure SetQuoteCharacter(const Value: string);
    function GetQuoteEscapeCharacter: string;
    procedure SetQuoteEscapeCharacter(const Value: string);
    function GetQuoteFields: TQuoteFields;
    procedure SetQuoteFields(const Value: TQuoteFields);
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
  strict protected
    function Obj: TCSVOutput;
  public
    function IsSetFieldDelimiter: Boolean;
    function IsSetQuoteCharacter: Boolean;
    function IsSetQuoteEscapeCharacter: Boolean;
    function IsSetQuoteFields: Boolean;
    function IsSetRecordDelimiter: Boolean;
    property FieldDelimiter: string read GetFieldDelimiter write SetFieldDelimiter;
    property QuoteCharacter: string read GetQuoteCharacter write SetQuoteCharacter;
    property QuoteEscapeCharacter: string read GetQuoteEscapeCharacter write SetQuoteEscapeCharacter;
    property QuoteFields: TQuoteFields read GetQuoteFields write SetQuoteFields;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
implementation

{ TCSVOutput }

function TCSVOutput.Obj: TCSVOutput;
begin
  Result := Self;
end;

function TCSVOutput.GetFieldDelimiter: string;
begin
  Result := FFieldDelimiter.ValueOrDefault;
end;

procedure TCSVOutput.SetFieldDelimiter(const Value: string);
begin
  FFieldDelimiter := Value;
end;

function TCSVOutput.IsSetFieldDelimiter: Boolean;
begin
  Result := FFieldDelimiter.HasValue;
end;

function TCSVOutput.GetQuoteCharacter: string;
begin
  Result := FQuoteCharacter.ValueOrDefault;
end;

procedure TCSVOutput.SetQuoteCharacter(const Value: string);
begin
  FQuoteCharacter := Value;
end;

function TCSVOutput.IsSetQuoteCharacter: Boolean;
begin
  Result := FQuoteCharacter.HasValue;
end;

function TCSVOutput.GetQuoteEscapeCharacter: string;
begin
  Result := FQuoteEscapeCharacter.ValueOrDefault;
end;

procedure TCSVOutput.SetQuoteEscapeCharacter(const Value: string);
begin
  FQuoteEscapeCharacter := Value;
end;

function TCSVOutput.IsSetQuoteEscapeCharacter: Boolean;
begin
  Result := FQuoteEscapeCharacter.HasValue;
end;

function TCSVOutput.GetQuoteFields: TQuoteFields;
begin
  Result := FQuoteFields.ValueOrDefault;
end;

procedure TCSVOutput.SetQuoteFields(const Value: TQuoteFields);
begin
  FQuoteFields := Value;
end;

function TCSVOutput.IsSetQuoteFields: Boolean;
begin
  Result := FQuoteFields.HasValue;
end;

function TCSVOutput.GetRecordDelimiter: string;
begin
  Result := FRecordDelimiter.ValueOrDefault;
end;

procedure TCSVOutput.SetRecordDelimiter(const Value: string);
begin
  FRecordDelimiter := Value;
end;

function TCSVOutput.IsSetRecordDelimiter: Boolean;
begin
  Result := FRecordDelimiter.HasValue;
end;

end.
