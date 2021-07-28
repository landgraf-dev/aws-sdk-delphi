unit AWS.SQS.Model.ChangeMessageVisibilityBatchResultEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TChangeMessageVisibilityBatchResultEntry = class;
  
  IChangeMessageVisibilityBatchResultEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TChangeMessageVisibilityBatchResultEntry;
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
  TChangeMessageVisibilityBatchResultEntry = class
  strict private
    FId: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TChangeMessageVisibilityBatchResultEntry;
  public
    function IsSetId: Boolean;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TChangeMessageVisibilityBatchResultEntry }

function TChangeMessageVisibilityBatchResultEntry.Obj: TChangeMessageVisibilityBatchResultEntry;
begin
  Result := Self;
end;

function TChangeMessageVisibilityBatchResultEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TChangeMessageVisibilityBatchResultEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TChangeMessageVisibilityBatchResultEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
