unit AWS.Textract.Model.Warning;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections;

type
  TWarning = class;
  
  IWarning = interface
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetPages: TList<Integer>;
    procedure SetPages(const Value: TList<Integer>);
    function GetKeepPages: Boolean;
    procedure SetKeepPages(const Value: Boolean);
    function Obj: TWarning;
    function IsSetErrorCode: Boolean;
    function IsSetPages: Boolean;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property Pages: TList<Integer> read GetPages write SetPages;
    property KeepPages: Boolean read GetKeepPages write SetKeepPages;
  end;
  
  TWarning = class
  strict private
    FErrorCode: Nullable<string>;
    FPages: TList<Integer>;
    FKeepPages: Boolean;
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetPages: TList<Integer>;
    procedure SetPages(const Value: TList<Integer>);
    function GetKeepPages: Boolean;
    procedure SetKeepPages(const Value: Boolean);
  strict protected
    function Obj: TWarning;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetErrorCode: Boolean;
    function IsSetPages: Boolean;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property Pages: TList<Integer> read GetPages write SetPages;
    property KeepPages: Boolean read GetKeepPages write SetKeepPages;
  end;
  
implementation

{ TWarning }

constructor TWarning.Create;
begin
  inherited;
  FPages := TList<Integer>.Create;
end;

destructor TWarning.Destroy;
begin
  Pages := nil;
  inherited;
end;

function TWarning.Obj: TWarning;
begin
  Result := Self;
end;

function TWarning.GetErrorCode: string;
begin
  Result := FErrorCode.ValueOrDefault;
end;

procedure TWarning.SetErrorCode(const Value: string);
begin
  FErrorCode := Value;
end;

function TWarning.IsSetErrorCode: Boolean;
begin
  Result := FErrorCode.HasValue;
end;

function TWarning.GetPages: TList<Integer>;
begin
  Result := FPages;
end;

procedure TWarning.SetPages(const Value: TList<Integer>);
begin
  if FPages <> Value then
  begin
    if not KeepPages then
      FPages.Free;
    FPages := Value;
  end;
end;

function TWarning.GetKeepPages: Boolean;
begin
  Result := FKeepPages;
end;

procedure TWarning.SetKeepPages(const Value: Boolean);
begin
  FKeepPages := Value;
end;

function TWarning.IsSetPages: Boolean;
begin
  Result := (FPages <> nil) and (FPages.Count > 0);
end;

end.
