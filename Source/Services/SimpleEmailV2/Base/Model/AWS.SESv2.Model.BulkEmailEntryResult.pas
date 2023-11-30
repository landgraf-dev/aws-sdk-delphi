unit AWS.SESv2.Model.BulkEmailEntryResult;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TBulkEmailEntryResult = class;
  
  IBulkEmailEntryResult = interface
    function GetError: string;
    procedure SetError(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetStatus: TBulkEmailStatus;
    procedure SetStatus(const Value: TBulkEmailStatus);
    function Obj: TBulkEmailEntryResult;
    function IsSetError: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetStatus: Boolean;
    property Error: string read GetError write SetError;
    property MessageId: string read GetMessageId write SetMessageId;
    property Status: TBulkEmailStatus read GetStatus write SetStatus;
  end;
  
  TBulkEmailEntryResult = class
  strict private
    FError: Nullable<string>;
    FMessageId: Nullable<string>;
    FStatus: Nullable<TBulkEmailStatus>;
    function GetError: string;
    procedure SetError(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetStatus: TBulkEmailStatus;
    procedure SetStatus(const Value: TBulkEmailStatus);
  strict protected
    function Obj: TBulkEmailEntryResult;
  public
    function IsSetError: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetStatus: Boolean;
    property Error: string read GetError write SetError;
    property MessageId: string read GetMessageId write SetMessageId;
    property Status: TBulkEmailStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TBulkEmailEntryResult }

function TBulkEmailEntryResult.Obj: TBulkEmailEntryResult;
begin
  Result := Self;
end;

function TBulkEmailEntryResult.GetError: string;
begin
  Result := FError.ValueOrDefault;
end;

procedure TBulkEmailEntryResult.SetError(const Value: string);
begin
  FError := Value;
end;

function TBulkEmailEntryResult.IsSetError: Boolean;
begin
  Result := FError.HasValue;
end;

function TBulkEmailEntryResult.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TBulkEmailEntryResult.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TBulkEmailEntryResult.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TBulkEmailEntryResult.GetStatus: TBulkEmailStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TBulkEmailEntryResult.SetStatus(const Value: TBulkEmailStatus);
begin
  FStatus := Value;
end;

function TBulkEmailEntryResult.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
