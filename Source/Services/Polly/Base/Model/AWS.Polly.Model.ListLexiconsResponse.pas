unit AWS.Polly.Model.ListLexiconsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.LexiconDescription;

type
  TListLexiconsResponse = class;
  
  IListLexiconsResponse = interface(IAmazonWebServiceResponse)
    function GetLexicons: TObjectList<TLexiconDescription>;
    procedure SetLexicons(const Value: TObjectList<TLexiconDescription>);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListLexiconsResponse;
    function IsSetLexicons: Boolean;
    function IsSetNextToken: Boolean;
    property Lexicons: TObjectList<TLexiconDescription> read GetLexicons write SetLexicons;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListLexiconsResponse = class(TAmazonWebServiceResponse, IListLexiconsResponse)
  strict private
    FLexicons: TObjectList<TLexiconDescription>;
    FNextToken: Nullable<string>;
    function GetLexicons: TObjectList<TLexiconDescription>;
    procedure SetLexicons(const Value: TObjectList<TLexiconDescription>);
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
    FLexicons.Free;
    FLexicons := Value;
  end;
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
