unit AWS.SESv2.Model.SuppressionListDestination;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TSuppressionListDestination = class;
  
  ISuppressionListDestination = interface
    function GetSuppressionListImportAction: TSuppressionListImportAction;
    procedure SetSuppressionListImportAction(const Value: TSuppressionListImportAction);
    function Obj: TSuppressionListDestination;
    function IsSetSuppressionListImportAction: Boolean;
    property SuppressionListImportAction: TSuppressionListImportAction read GetSuppressionListImportAction write SetSuppressionListImportAction;
  end;
  
  TSuppressionListDestination = class
  strict private
    FSuppressionListImportAction: Nullable<TSuppressionListImportAction>;
    function GetSuppressionListImportAction: TSuppressionListImportAction;
    procedure SetSuppressionListImportAction(const Value: TSuppressionListImportAction);
  strict protected
    function Obj: TSuppressionListDestination;
  public
    function IsSetSuppressionListImportAction: Boolean;
    property SuppressionListImportAction: TSuppressionListImportAction read GetSuppressionListImportAction write SetSuppressionListImportAction;
  end;
  
implementation

{ TSuppressionListDestination }

function TSuppressionListDestination.Obj: TSuppressionListDestination;
begin
  Result := Self;
end;

function TSuppressionListDestination.GetSuppressionListImportAction: TSuppressionListImportAction;
begin
  Result := FSuppressionListImportAction.ValueOrDefault;
end;

procedure TSuppressionListDestination.SetSuppressionListImportAction(const Value: TSuppressionListImportAction);
begin
  FSuppressionListImportAction := Value;
end;

function TSuppressionListDestination.IsSetSuppressionListImportAction: Boolean;
begin
  Result := FSuppressionListImportAction.HasValue;
end;

end.
