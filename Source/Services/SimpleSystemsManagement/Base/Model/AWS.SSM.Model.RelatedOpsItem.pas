unit AWS.SSM.Model.RelatedOpsItem;

interface

uses
  AWS.Nullable;

type
  TRelatedOpsItem = class;
  
  IRelatedOpsItem = interface
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function Obj: TRelatedOpsItem;
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
  TRelatedOpsItem = class
  strict private
    FOpsItemId: Nullable<string>;
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  strict protected
    function Obj: TRelatedOpsItem;
  public
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ TRelatedOpsItem }

function TRelatedOpsItem.Obj: TRelatedOpsItem;
begin
  Result := Self;
end;

function TRelatedOpsItem.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TRelatedOpsItem.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TRelatedOpsItem.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.
