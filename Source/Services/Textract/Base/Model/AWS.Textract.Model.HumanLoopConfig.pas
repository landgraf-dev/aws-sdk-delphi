unit AWS.Textract.Model.HumanLoopConfig;

interface

uses
  AWS.Textract.Model.HumanLoopDataAttributes, 
  AWS.Nullable;

type
  THumanLoopConfig = class;
  
  IHumanLoopConfig = interface
    function GetDataAttributes: THumanLoopDataAttributes;
    procedure SetDataAttributes(const Value: THumanLoopDataAttributes);
    function GetKeepDataAttributes: Boolean;
    procedure SetKeepDataAttributes(const Value: Boolean);
    function GetFlowDefinitionArn: string;
    procedure SetFlowDefinitionArn(const Value: string);
    function GetHumanLoopName: string;
    procedure SetHumanLoopName(const Value: string);
    function Obj: THumanLoopConfig;
    function IsSetDataAttributes: Boolean;
    function IsSetFlowDefinitionArn: Boolean;
    function IsSetHumanLoopName: Boolean;
    property DataAttributes: THumanLoopDataAttributes read GetDataAttributes write SetDataAttributes;
    property KeepDataAttributes: Boolean read GetKeepDataAttributes write SetKeepDataAttributes;
    property FlowDefinitionArn: string read GetFlowDefinitionArn write SetFlowDefinitionArn;
    property HumanLoopName: string read GetHumanLoopName write SetHumanLoopName;
  end;
  
  THumanLoopConfig = class
  strict private
    FDataAttributes: THumanLoopDataAttributes;
    FKeepDataAttributes: Boolean;
    FFlowDefinitionArn: Nullable<string>;
    FHumanLoopName: Nullable<string>;
    function GetDataAttributes: THumanLoopDataAttributes;
    procedure SetDataAttributes(const Value: THumanLoopDataAttributes);
    function GetKeepDataAttributes: Boolean;
    procedure SetKeepDataAttributes(const Value: Boolean);
    function GetFlowDefinitionArn: string;
    procedure SetFlowDefinitionArn(const Value: string);
    function GetHumanLoopName: string;
    procedure SetHumanLoopName(const Value: string);
  strict protected
    function Obj: THumanLoopConfig;
  public
    destructor Destroy; override;
    function IsSetDataAttributes: Boolean;
    function IsSetFlowDefinitionArn: Boolean;
    function IsSetHumanLoopName: Boolean;
    property DataAttributes: THumanLoopDataAttributes read GetDataAttributes write SetDataAttributes;
    property KeepDataAttributes: Boolean read GetKeepDataAttributes write SetKeepDataAttributes;
    property FlowDefinitionArn: string read GetFlowDefinitionArn write SetFlowDefinitionArn;
    property HumanLoopName: string read GetHumanLoopName write SetHumanLoopName;
  end;
  
implementation

{ THumanLoopConfig }

destructor THumanLoopConfig.Destroy;
begin
  DataAttributes := nil;
  inherited;
end;

function THumanLoopConfig.Obj: THumanLoopConfig;
begin
  Result := Self;
end;

function THumanLoopConfig.GetDataAttributes: THumanLoopDataAttributes;
begin
  Result := FDataAttributes;
end;

procedure THumanLoopConfig.SetDataAttributes(const Value: THumanLoopDataAttributes);
begin
  if FDataAttributes <> Value then
  begin
    if not KeepDataAttributes then
      FDataAttributes.Free;
    FDataAttributes := Value;
  end;
end;

function THumanLoopConfig.GetKeepDataAttributes: Boolean;
begin
  Result := FKeepDataAttributes;
end;

procedure THumanLoopConfig.SetKeepDataAttributes(const Value: Boolean);
begin
  FKeepDataAttributes := Value;
end;

function THumanLoopConfig.IsSetDataAttributes: Boolean;
begin
  Result := FDataAttributes <> nil;
end;

function THumanLoopConfig.GetFlowDefinitionArn: string;
begin
  Result := FFlowDefinitionArn.ValueOrDefault;
end;

procedure THumanLoopConfig.SetFlowDefinitionArn(const Value: string);
begin
  FFlowDefinitionArn := Value;
end;

function THumanLoopConfig.IsSetFlowDefinitionArn: Boolean;
begin
  Result := FFlowDefinitionArn.HasValue;
end;

function THumanLoopConfig.GetHumanLoopName: string;
begin
  Result := FHumanLoopName.ValueOrDefault;
end;

procedure THumanLoopConfig.SetHumanLoopName(const Value: string);
begin
  FHumanLoopName := Value;
end;

function THumanLoopConfig.IsSetHumanLoopName: Boolean;
begin
  Result := FHumanLoopName.HasValue;
end;

end.
