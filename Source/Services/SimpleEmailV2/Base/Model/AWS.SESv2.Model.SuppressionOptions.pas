unit AWS.SESv2.Model.SuppressionOptions;

interface

uses
  System.Generics.Collections;

type
  TSuppressionOptions = class;
  
  ISuppressionOptions = interface
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
    function Obj: TSuppressionOptions;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
  TSuppressionOptions = class
  strict private
    FSuppressedReasons: TList<string>;
    FKeepSuppressedReasons: Boolean;
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
  strict protected
    function Obj: TSuppressionOptions;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSuppressedReasons: Boolean;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
implementation

{ TSuppressionOptions }

constructor TSuppressionOptions.Create;
begin
  inherited;
  FSuppressedReasons := TList<string>.Create;
end;

destructor TSuppressionOptions.Destroy;
begin
  SuppressedReasons := nil;
  inherited;
end;

function TSuppressionOptions.Obj: TSuppressionOptions;
begin
  Result := Self;
end;

function TSuppressionOptions.GetSuppressedReasons: TList<string>;
begin
  Result := FSuppressedReasons;
end;

procedure TSuppressionOptions.SetSuppressedReasons(const Value: TList<string>);
begin
  if FSuppressedReasons <> Value then
  begin
    if not KeepSuppressedReasons then
      FSuppressedReasons.Free;
    FSuppressedReasons := Value;
  end;
end;

function TSuppressionOptions.GetKeepSuppressedReasons: Boolean;
begin
  Result := FKeepSuppressedReasons;
end;

procedure TSuppressionOptions.SetKeepSuppressedReasons(const Value: Boolean);
begin
  FKeepSuppressedReasons := Value;
end;

function TSuppressionOptions.IsSetSuppressedReasons: Boolean;
begin
  Result := (FSuppressedReasons <> nil) and (FSuppressedReasons.Count > 0);
end;

end.
