unit AWS.S3.Model.JSONOutput;

interface

uses
  Bcl.Types.Nullable;

type
  TJSONOutput = class;
  
  IJSONOutput = interface
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
    function Obj: TJSONOutput;
    function IsSetRecordDelimiter: Boolean;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
  TJSONOutput = class
  strict private
    FRecordDelimiter: Nullable<string>;
    function GetRecordDelimiter: string;
    procedure SetRecordDelimiter(const Value: string);
  strict protected
    function Obj: TJSONOutput;
  public
    function IsSetRecordDelimiter: Boolean;
    property RecordDelimiter: string read GetRecordDelimiter write SetRecordDelimiter;
  end;
  
implementation

{ TJSONOutput }

function TJSONOutput.Obj: TJSONOutput;
begin
  Result := Self;
end;

function TJSONOutput.GetRecordDelimiter: string;
begin
  Result := FRecordDelimiter.ValueOrDefault;
end;

procedure TJSONOutput.SetRecordDelimiter(const Value: string);
begin
  FRecordDelimiter := Value;
end;

function TJSONOutput.IsSetRecordDelimiter: Boolean;
begin
  Result := FRecordDelimiter.HasValue;
end;

end.
