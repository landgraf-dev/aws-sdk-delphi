unit AWS.S3.Model.CSVInput;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TCSVInput = class;
  
  ICSVInput = interface
    function GetAllowQuotedRecordDelimiter: Boolean;
    procedure SetAllowQuotedRecordDelimiter(const Value: Boolean);
    function GetComments: string;
    procedure SetComments(const Value: string);
    function GetFieldDelimiter: string;
    procedure SetFieldDelimiter(const Value: string);
    function GetFileHeaderInfo: TFileHeaderInfo;
    procedure SetFileHeaderInfo(const Value: TFileHeaderInfo);
    function GetQuoteCharacter: string;
    procedure SetQuoteCharacter(const Value: string);
    function GetQuoteEscapeCharacter: string;
    procedure SetQuoteEscapeCharacter(const Value: string);
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
    function Obj: TCSVInput;
    function IsSetAllowQuotedRecordDelimiter: Boolean;
    function IsSetComments: Boolean;
    function IsSetFieldDelimiter: Boolean;
    function IsSetFileHeaderInfo: Boolean;
    function IsSetQuoteCharacter: Boolean;
    function IsSetQuoteEscapeCharacter: Boolean;
    function IsSetRecordDelimiter: Boolean;
    property AllowQuotedRecordDelimiter: Boolean read GetAllowQuotedRecordDelimiter write SetAllowQuotedRecordDelimiter;
    property Comments: string read GetComments write SetComments;
    property FieldDelimiter: string read GetFieldDelimiter write SetFieldDelimiter;
    property FileHeaderInfo: TFileHeaderInfo read GetFileHeaderInfo write SetFileHeaderInfo;
    property QuoteCharacter: string read GetQuoteCharacter write SetQuoteCharacter;
    property QuoteEscapeCharacter: string read GetQuoteEscapeCharacter write SetQuoteEscapeCharacter;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
  TCSVInput = class
  strict private
    FAllowQuotedRecordDelimiter: Nullable<Boolean>;
    FComments: Nullable<string>;
    FFieldDelimiter: Nullable<string>;
    FFileHeaderInfo: Nullable<TFileHeaderInfo>;
    FQuoteCharacter: Nullable<string>;
    FQuoteEscapeCharacter: Nullable<string>;
    FRecordDelimiter: Nullable<string>;
    function GetAllowQuotedRecordDelimiter: Boolean;
    procedure SetAllowQuotedRecordDelimiter(const Value: Boolean);
    function GetComments: string;
    procedure SetComments(const Value: string);
    function GetFieldDelimiter: string;
    procedure SetFieldDelimiter(const Value: string);
    function GetFileHeaderInfo: TFileHeaderInfo;
    procedure SetFileHeaderInfo(const Value: TFileHeaderInfo);
    function GetQuoteCharacter: string;
    procedure SetQuoteCharacter(const Value: string);
    function GetQuoteEscapeCharacter: string;
    procedure SetQuoteEscapeCharacter(const Value: string);
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
  strict protected
    function Obj: TCSVInput;
  public
    function IsSetAllowQuotedRecordDelimiter: Boolean;
    function IsSetComments: Boolean;
    function IsSetFieldDelimiter: Boolean;
    function IsSetFileHeaderInfo: Boolean;
    function IsSetQuoteCharacter: Boolean;
    function IsSetQuoteEscapeCharacter: Boolean;
    function IsSetRecordDelimiter: Boolean;
    property AllowQuotedRecordDelimiter: Boolean read GetAllowQuotedRecordDelimiter write SetAllowQuotedRecordDelimiter;
    property Comments: string read GetComments write SetComments;
    property FieldDelimiter: string read GetFieldDelimiter write SetFieldDelimiter;
    property FileHeaderInfo: TFileHeaderInfo read GetFileHeaderInfo write SetFileHeaderInfo;
    property QuoteCharacter: string read GetQuoteCharacter write SetQuoteCharacter;
    property QuoteEscapeCharacter: string read GetQuoteEscapeCharacter write SetQuoteEscapeCharacter;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
implementation

{ TCSVInput }

function TCSVInput.Obj: TCSVInput;
begin
  Result := Self;
end;

function TCSVInput.GetAllowQuotedRecordDelimiter: Boolean;
begin
  Result := FAllowQuotedRecordDelimiter.ValueOrDefault;
end;

procedure TCSVInput.SetAllowQuotedRecordDelimiter(const Value: Boolean);
begin
  FAllowQuotedRecordDelimiter := Value;
end;

function TCSVInput.IsSetAllowQuotedRecordDelimiter: Boolean;
begin
  Result := FAllowQuotedRecordDelimiter.HasValue;
end;

function TCSVInput.GetComments: string;
begin
  Result := FComments.ValueOrDefault;
end;

procedure TCSVInput.SetComments(const Value: string);
begin
  FComments := Value;
end;

function TCSVInput.IsSetComments: Boolean;
begin
  Result := FComments.HasValue;
end;

function TCSVInput.GetFieldDelimiter: string;
begin
  Result := FFieldDelimiter.ValueOrDefault;
end;

procedure TCSVInput.SetFieldDelimiter(const Value: string);
begin
  FFieldDelimiter := Value;
end;

function TCSVInput.IsSetFieldDelimiter: Boolean;
begin
  Result := FFieldDelimiter.HasValue;
end;

function TCSVInput.GetFileHeaderInfo: TFileHeaderInfo;
begin
  Result := FFileHeaderInfo.ValueOrDefault;
end;

procedure TCSVInput.SetFileHeaderInfo(const Value: TFileHeaderInfo);
begin
  FFileHeaderInfo := Value;
end;

function TCSVInput.IsSetFileHeaderInfo: Boolean;
begin
  Result := FFileHeaderInfo.HasValue;
end;

function TCSVInput.GetQuoteCharacter: string;
begin
  Result := FQuoteCharacter.ValueOrDefault;
end;

procedure TCSVInput.SetQuoteCharacter(const Value: string);
begin
  FQuoteCharacter := Value;
end;

function TCSVInput.IsSetQuoteCharacter: Boolean;
begin
  Result := FQuoteCharacter.HasValue;
end;

function TCSVInput.GetQuoteEscapeCharacter: string;
begin
  Result := FQuoteEscapeCharacter.ValueOrDefault;
end;

procedure TCSVInput.SetQuoteEscapeCharacter(const Value: string);
begin
  FQuoteEscapeCharacter := Value;
end;

function TCSVInput.IsSetQuoteEscapeCharacter: Boolean;
begin
  Result := FQuoteEscapeCharacter.HasValue;
end;

function TCSVInput.GetRecordDelimiter: string;
begin
  Result := FRecordDelimiter.ValueOrDefault;
end;

procedure TCSVInput.SetRecordDelimiter(const Value: string);
begin
  FRecordDelimiter := Value;
end;

function TCSVInput.IsSetRecordDelimiter: Boolean;
begin
  Result := FRecordDelimiter.HasValue;
end;

end.
