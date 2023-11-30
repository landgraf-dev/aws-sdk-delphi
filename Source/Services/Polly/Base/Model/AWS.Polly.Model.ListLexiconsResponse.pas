unit AWS.Polly.Model.ListLexiconsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.LexiconDescription, 
  AWS.Nullable;

type
  TListLexiconsResponse = class;
  
  IListLexiconsResponse = interface(IAmazonWebServiceResponse)
    function GetLexicons: TObjectList<TLexiconDescription>;
    procedure SetLexicons(const Value: TObjectList<TLexiconDescription>);
    function GetKeepLexicons: Boolean;
    procedure SetKeepLexicons(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListLexiconsResponse;
    function IsSetLexicons: Boolean;
    function IsSetNextToken: Boolean;
    property Lexicons: TObjectList<TLexiconDescription> read GetLexicons write SetLexicons;
    property KeepLexicons: Boolean read GetKeepLexicons write SetKeepLexicons;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListLexiconsResponse = class(TAmazonWebServiceResponse, IListLexiconsResponse)
  strict private
    FLexicons: TObjectList<TLexiconDescription>;
    FKeepLexicons: Boolean;
    FNextToken: Nullable<string>;
    function GetLexicons: TObjectList<TLexiconDescription>;
    procedure SetLexicons(const Value: TObjectList<TLexiconDescription>);
    function GetKeepLexicons: Boolean;
    procedure SetKeepLexicons(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListLexiconsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLexicons: Boolean;
    function IsSetNextToken: Boolean;
    property Lexicons: TObjectList<TLexiconDescription> read GetLexicons write SetLexicons;
    property KeepLexicons: Boolean read GetKeepLexicons write SetKeepLexicons;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListLexiconsResponse }

constructor TListLexiconsResponse.Create;
begin
  inherited;
  FLexicons := TObjectList<TLexiconDescription>.Create;
end;

destructor TListLexiconsResponse.Destroy;
begin
  Lexicons := nil;
  inherited;
end;

function TListLexiconsResponse.Obj: TListLexiconsResponse;
begin
  Result := Self;
end;

function TListLexiconsResponse.GetLexicons: TObjectList<TLexiconDescription>;
begin
  Result := FLexicons;
end;

procedure TListLexiconsResponse.SetLexicons(const Value: TObjectList<TLexiconDescription>);
begin
  if FLexicons <> Value then
  begin
    if not KeepLexicons then
      FLexicons.Free;
    FLexicons := Value;
  end;
end;

function TListLexiconsResponse.GetKeepLexicons: Boolean;
begin
  Result := FKeepLexicons;
end;

procedure TListLexiconsResponse.SetKeepLexicons(const Value: Boolean);
begin
  FKeepLexicons := Value;
end;

function TListLexiconsResponse.IsSetLexicons: Boolean;
begin
  Result := (FLexicons <> nil) and (FLexicons.Count > 0);
end;

function TListLexiconsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListLexiconsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListLexiconsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
