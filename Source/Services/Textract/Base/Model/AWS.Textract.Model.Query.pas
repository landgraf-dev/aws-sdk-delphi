unit AWS.Textract.Model.Query;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TQuery = class;
  
  IQuery = interface
    function GetAlias: string;
    procedure SetAlias(const Value: string);
    function GetPages: TList<string>;
    procedure SetPages(const Value: TList<string>);
    function GetKeepPages: Boolean;
    procedure SetKeepPages(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TQuery;
    function IsSetAlias: Boolean;
    function IsSetPages: Boolean;
    function IsSetText: Boolean;
    property Alias: string read GetAlias write SetAlias;
    property Pages: TList<string> read GetPages write SetPages;
    property KeepPages: Boolean read GetKeepPages write SetKeepPages;
    property Text: string read GetText write SetText;
  end;
  
  TQuery = class
  strict private
    FAlias: Nullable<string>;
    FPages: TList<string>;
    FKeepPages: Boolean;
    FText: Nullable<string>;
    function GetAlias: string;
    procedure SetAlias(const Value: string);
    function GetPages: TList<string>;
    procedure SetPages(const Value: TList<string>);
    function GetKeepPages: Boolean;
    procedure SetKeepPages(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TQuery;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAlias: Boolean;
    function IsSetPages: Boolean;
    function IsSetText: Boolean;
    property Alias: string read GetAlias write SetAlias;
    property Pages: TList<string> read GetPages write SetPages;
    property KeepPages: Boolean read GetKeepPages write SetKeepPages;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TQuery }

constructor TQuery.Create;
begin
  inherited;
  FPages := TList<string>.Create;
end;

destructor TQuery.Destroy;
begin
  Pages := nil;
  inherited;
end;

function TQuery.Obj: TQuery;
begin
  Result := Self;
end;

function TQuery.GetAlias: string;
begin
  Result := FAlias.ValueOrDefault;
end;

procedure TQuery.SetAlias(const Value: string);
begin
  FAlias := Value;
end;

function TQuery.IsSetAlias: Boolean;
begin
  Result := FAlias.HasValue;
end;

function TQuery.GetPages: TList<string>;
begin
  Result := FPages;
end;

procedure TQuery.SetPages(const Value: TList<string>);
begin
  if FPages <> Value then
  begin
    if not KeepPages then
      FPages.Free;
    FPages := Value;
  end;
end;

function TQuery.GetKeepPages: Boolean;
begin
  Result := FKeepPages;
end;

procedure TQuery.SetKeepPages(const Value: Boolean);
begin
  FKeepPages := Value;
end;

function TQuery.IsSetPages: Boolean;
begin
  Result := (FPages <> nil) and (FPages.Count > 0);
end;

function TQuery.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TQuery.SetText(const Value: string);
begin
  FText := Value;
end;

function TQuery.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
