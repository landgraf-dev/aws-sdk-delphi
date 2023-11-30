unit AWS.Polly.Model.ListLexiconsRequest;

interface

uses
  AWS.Polly.Model.Request, 
  AWS.Nullable;

type
  TListLexiconsRequest = class;
  
  IListLexiconsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListLexiconsRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListLexiconsRequest = class(TAmazonPollyRequest, IListLexiconsRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListLexiconsRequest;
  public
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListLexiconsRequest }

function TListLexiconsRequest.Obj: TListLexiconsRequest;
begin
  Result := Self;
end;

function TListLexiconsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListLexiconsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListLexiconsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
