unit AWS.SES.Model.BulkEmailDestinationStatus;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums;

type
  TBulkEmailDestinationStatus = class;
  
  IBulkEmailDestinationStatus = interface
    function GetError: string;
    procedure SetError(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetStatus: TBulkEmailStatus;
    procedure SetStatus(const Value: TBulkEmailStatus);
    function Obj: TBulkEmailDestinationStatus;
    function IsSetError: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetStatus: Boolean;
    property Error: string read GetError write SetError;
    property MessageId: string read GetMessageId write SetMessageId;
    property Status: TBulkEmailStatus read GetStatus write SetStatus;
  end;
  
  TBulkEmailDestinationStatus = class
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
    function Obj: TBulkEmailDestinationStatus;
  public
    function IsSetError: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetStatus: Boolean;
    property Error: string read GetError write SetError;
    property MessageId: string read GetMessageId write SetMessageId;
    property Status: TBulkEmailStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TBulkEmailDestinationStatus }

function TBulkEmailDestinationStatus.Obj: TBulkEmailDestinationStatus;
begin
  Result := Self;
end;

function TBulkEmailDestinationStatus.GetError: string;
begin
  Result := FError.ValueOrDefault;
end;

procedure TBulkEmailDestinationStatus.SetError(const Value: string);
begin
  FError := Value;
end;

function TBulkEmailDestinationStatus.IsSetError: Boolean;
begin
  Result := FError.HasValue;
end;

function TBulkEmailDestinationStatus.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TBulkEmailDestinationStatus.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TBulkEmailDestinationStatus.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TBulkEmailDestinationStatus.GetStatus: TBulkEmailStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TBulkEmailDestinationStatus.SetStatus(const Value: TBulkEmailStatus);
begin
  FStatus := Value;
end;

function TBulkEmailDestinationStatus.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
