unit AWS.SESv2.Model.SuppressionAttributes;

interface

uses
  System.Generics.Collections;

type
  TSuppressionAttributes = class;
  
  ISuppressionAttributes = interface
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
    function Obj: TSuppressionAttributes;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
  TSuppressionAttributes = class
  strict private
    FSuppressedReasons: TList<string>;
    FKeepSuppressedReasons: Boolean;
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
  strict protected
    function Obj: TSuppressionAttributes;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
implementation

{ TSuppressionAttributes }

constructor TSuppressionAttributes.Create;
begin
  inherited;
  FSuppressedReasons := TList<string>.Create;
end;

destructor TSuppressionAttributes.Destroy;
begin
  SuppressedReasons := nil;
  inherited;
end;

function TSuppressionAttributes.Obj: TSuppressionAttributes;
begin
  Result := Self;
end;

function TSuppressionAttributes.GetSuppressedReasons: TList<string>;
begin
  Result := FSuppressedReasons;
end;

procedure TSuppressionAttributes.SetSuppressedReasons(const Value: TList<string>);
begin
  if FSuppressedReasons <> Value then
  begin
    if not KeepSuppressedReasons then
      FSuppressedReasons.Free;
    FSuppressedReasons := Value;
  end;
end;

function TSuppressionAttributes.GetKeepSuppressedReasons: Boolean;
begin
  Result := FKeepSuppressedReasons;
end;

procedure TSuppressionAttributes.SetKeepSuppressedReasons(const Value: Boolean);
begin
  FKeepSuppressedReasons := Value;
end;

function TSuppressionAttributes.IsSetSuppressedReasons: Boolean;
begin
  Result := (FSuppressedReasons <> nil) and (FSuppressedReasons.Count > 0);
end;

end.
