unit AWS.Polly.Model.GetLexiconResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Polly.Model.Lexicon, 
  AWS.Polly.Model.LexiconAttributes;

type
  TGetLexiconResponse = class;
  
  IGetLexiconResponse = interface(IAmazonWebServiceResponse)
    function GetLexicon: TLexicon;
    procedure SetLexicon(const Value: TLexicon);
    function GetLexiconAttributes: TLexiconAttributes;
    procedure SetLexiconAttributes(const Value: TLexiconAttributes);
    function Obj: TGetLexiconResponse;
    function IsSetLexicon: Boolean;
    function IsSetLexiconAttributes: Boolean;
    property Lexicon: TLexicon read GetLexicon write SetLexicon;
    property LexiconAttributes: TLexiconAttributes read GetLexiconAttributes write SetLexiconAttributes;
  end;
  
  TGetLexiconResponse = class(TAmazonWebServiceResponse, IGetLexiconResponse)
  strict private
    FLexicon: TLexicon;
    FLexiconAttributes: TLexiconAttributes;
    function GetLexicon: TLexicon;
    procedure SetLexicon(const Value: TLexicon);
    function GetLexiconAttributes: TLexiconAttributes;
    procedure SetLexiconAttributes(const Value: TLexiconAttributes);
  strict protected
    function Obj: TGetLexiconResponse;
  public
    destructor Destroy; override;
    function IsSetLexicon: Boolean;
    function IsSetLexiconAttributes: Boolean;
    property Lexicon: TLexicon read GetLexicon write SetLexicon;
    property LexiconAttributes: TLexiconAttributes read GetLexiconAttributes write SetLexiconAttributes;
  end;
  
implementation

{ TGetLexiconResponse }

destructor TGetLexiconResponse.Destroy;
begin
  FLexiconAttributes.Free;
  FLexicon.Free;
  inherited;
end;

function TGetLexiconResponse.Obj: TGetLexiconResponse;
begin
  Result := Self;
end;

function TGetLexiconResponse.GetLexicon: TLexicon;
begin
  Result := FLexicon;
end;

procedure TGetLexiconResponse.SetLexicon(const Value: TLexicon);
begin
  if FLexicon <> Value then
  begin
    FLexicon.Free;
    FLexicon := Value;
  end;
end;

function TGetLexiconResponse.IsSetLexicon: Boolean;
begin
  Result := FLexicon <> nil;
end;

function TGetLexiconResponse.GetLexiconAttributes: TLexiconAttributes;
begin
  Result := FLexiconAttributes;
end;

procedure TGetLexiconResponse.SetLexiconAttributes(const Value: TLexiconAttributes);
begin
  if FLexiconAttributes <> Value then
  begin
    FLexiconAttributes.Free;
    FLexiconAttributes := Value;
  end;
end;

function TGetLexiconResponse.IsSetLexiconAttributes: Boolean;
begin
  Result := FLexiconAttributes <> nil;
end;

end.
