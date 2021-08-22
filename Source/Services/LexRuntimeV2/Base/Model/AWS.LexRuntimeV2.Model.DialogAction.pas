unit AWS.LexRuntimeV2.Model.DialogAction;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeV2.Enums;

type
  TDialogAction = class;
  
  IDialogAction = interface
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetType: TDialogActionType;
    procedure SetType(const Value: TDialogActionType);
    function Obj: TDialogAction;
    function IsSetSlotToElicit: Boolean;
    function IsSetType: Boolean;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property &Type: TDialogActionType read GetType write SetType;
  end;
  
  TDialogAction = class
  strict private
    FSlotToElicit: Nullable<string>;
    FType: Nullable<TDialogActionType>;
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetType: TDialogActionType;
    procedure SetType(const Value: TDialogActionType);
  strict protected
    function Obj: TDialogAction;
  public
    function IsSetSlotToElicit: Boolean;
    function IsSetType: Boolean;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property &Type: TDialogActionType read GetType write SetType;
  end;
  
implementation

{ TDialogAction }

function TDialogAction.Obj: TDialogAction;
begin
  Result := Self;
end;

function TDialogAction.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TDialogAction.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TDialogAction.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TDialogAction.GetType: TDialogActionType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TDialogAction.SetType(const Value: TDialogActionType);
begin
  FType := Value;
end;

function TDialogAction.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
