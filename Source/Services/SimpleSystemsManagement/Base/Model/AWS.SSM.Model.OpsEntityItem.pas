unit AWS.SSM.Model.OpsEntityItem;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TOpsEntityItem = class;
  
  IOpsEntityItem = interface
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetContent: TObjectList<TDictionary<string, string>>;
    procedure SetContent(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function Obj: TOpsEntityItem;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
  end;
  
  TOpsEntityItem = class
  strict private
    FCaptureTime: Nullable<string>;
    FContent: TObjectList<TDictionary<string, string>>;
    FKeepContent: Boolean;
    function GetCaptureTime: string;
    procedure SetCaptureTime(const Value: string);
    function GetContent: TObjectList<TDictionary<string, string>>;
    procedure SetContent(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
  strict protected
    function Obj: TOpsEntityItem;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCaptureTime: Boolean;
    function IsSetContent: Boolean;
    property CaptureTime: string read GetCaptureTime write SetCaptureTime;
    property Content: TObjectList<TDictionary<string, string>> read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
  end;
  
implementation

{ TOpsEntityItem }

constructor TOpsEntityItem.Create;
begin
  inherited;
  FContent := TObjectList<TDictionary<string, string>>.Create;
end;

destructor TOpsEntityItem.Destroy;
begin
  Content := nil;
  inherited;
end;

function TOpsEntityItem.Obj: TOpsEntityItem;
begin
  Result := Self;
end;

function TOpsEntityItem.GetCaptureTime: string;
begin
  Result := FCaptureTime.ValueOrDefault;
end;

procedure TOpsEntityItem.SetCaptureTime(const Value: string);
begin
  FCaptureTime := Value;
end;

function TOpsEntityItem.IsSetCaptureTime: Boolean;
begin
  Result := FCaptureTime.HasValue;
end;

function TOpsEntityItem.GetContent: TObjectList<TDictionary<string, string>>;
begin
  Result := FContent;
end;

procedure TOpsEntityItem.SetContent(const Value: TObjectList<TDictionary<string, string>>);
begin
  if FContent <> Value then
  begin
    if not KeepContent then
      FContent.Free;
    FContent := Value;
  end;
end;

function TOpsEntityItem.GetKeepContent: Boolean;
begin
  Result := FKeepContent;
end;

procedure TOpsEntityItem.SetKeepContent(const Value: Boolean);
begin
  FKeepContent := Value;
end;

function TOpsEntityItem.IsSetContent: Boolean;
begin
  Result := (FContent <> nil) and (FContent.Count > 0);
end;

end.
