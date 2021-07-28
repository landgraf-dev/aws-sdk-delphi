unit AWS.SQS.Model.DeleteMessageBatchResultEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TDeleteMessageBatchResultEntry = class;
  
  IDeleteMessageBatchResultEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TDeleteMessageBatchResultEntry;
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
  TDeleteMessageBatchResultEntry = class
  strict private
    FId: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TDeleteMessageBatchResultEntry;
  public
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TDeleteMessageBatchResultEntry }

function TDeleteMessageBatchResultEntry.Obj: TDeleteMessageBatchResultEntry;
begin
  Result := Self;
end;

function TDeleteMessageBatchResultEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteMessageBatchResultEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteMessageBatchResultEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
