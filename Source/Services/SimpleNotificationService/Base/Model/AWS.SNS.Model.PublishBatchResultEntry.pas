unit AWS.SNS.Model.PublishBatchResultEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TPublishBatchResultEntry = class;
  
  IPublishBatchResultEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
    function Obj: TPublishBatchResultEntry;
    function IsSetId: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property Id: string read GetId write SetId;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
  TPublishBatchResultEntry = class
  strict private
    FId: Nullable<string>;
    FMessageId: Nullable<string>;
    FSequenceNumber: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
  strict protected
    function Obj: TPublishBatchResultEntry;
  public
    function IsSetId: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property Id: string read GetId write SetId;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
implementation

{ TPublishBatchResultEntry }

function TPublishBatchResultEntry.Obj: TPublishBatchResultEntry;
begin
  Result := Self;
end;

function TPublishBatchResultEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPublishBatchResultEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TPublishBatchResultEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPublishBatchResultEntry.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TPublishBatchResultEntry.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TPublishBatchResultEntry.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TPublishBatchResultEntry.GetSequenceNumber: string;
begin
  Result := FSequenceNumber.ValueOrDefault;
end;

procedure TPublishBatchResultEntry.SetSequenceNumber(const Value: string);
begin
  FSequenceNumber := Value;
end;

function TPublishBatchResultEntry.IsSetSequenceNumber: Boolean;
begin
  Result := FSequenceNumber.HasValue;
end;

end.
