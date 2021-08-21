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
    function GetKeepLexicon: Boolean;
    procedure SetKeepLexicon(const Value: Boolean);
    function GetLexiconAttributes: TLexiconAttributes;
    procedure SetLexiconAttributes(const Value: TLexiconAttributes);
    function GetKeepLexiconAttributes: Boolean;
    procedure SetKeepLexiconAttributes(const Value: Boolean);
    function Obj: TGetLexiconResponse;
    function IsSetLexicon: Boolean;
    function IsSetLexiconAttributes: Boolean;
    property Lexicon: TLexicon read GetLexicon write SetLexicon;
    property KeepLexicon: Boolean read GetKeepLexicon write SetKeepLexicon;
    property LexiconAttributes: TLexiconAttributes read GetLexiconAttributes write SetLexiconAttributes;
    property KeepLexiconAttributes: Boolean read GetKeepLexiconAttributes write SetKeepLexiconAttributes;
  end;
  
  TGetLexiconResponse = class(TAmazonWebServiceResponse, IGetLexiconResponse)
  strict private
    FLexicon: TLexicon;
    FKeepLexicon: Boolean;
    FLexiconAttributes: TLexiconAttributes;
    FKeepLexiconAttributes: Boolean;
    function GetLexicon: TLexicon;
    procedure SetLexicon(const Value: TLexicon);
    function GetKeepLexicon: Boolean;
    procedure SetKeepLexicon(const Value: Boolean);
    function GetLexiconAttributes: TLexiconAttributes;
    procedure SetLexiconAttributes(const Value: TLexiconAttributes);
    function GetKeepLexiconAttributes: Boolean;
    procedure SetKeepLexiconAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetLexiconResponse;
  public
    destructor Destroy; override;
    function IsSetLexicon: Boolean;
    function IsSetLexiconAttributes: Boolean;
    property Lexicon: TLexicon read GetLexicon write SetLexicon;
    property KeepLexicon: Boolean read GetKeepLexicon write SetKeepLexicon;
    property LexiconAttributes: TLexiconAttributes read GetLexiconAttributes write SetLexiconAttributes;
    property KeepLexiconAttributes: Boolean read GetKeepLexiconAttributes write SetKeepLexiconAttributes;
  end;
  
implementation

{ TGetLexiconResponse }

destructor TGetLexiconResponse.Destroy;
begin
  LexiconAttributes := nil;
  Lexicon := nil;
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
    if not KeepLexicon then
      FLexicon.Free;
    FLexicon := Value;
  end;
end;

function TGetLexiconResponse.GetKeepLexicon: Boolean;
begin
  Result := FKeepLexicon;
end;

procedure TGetLexiconResponse.SetKeepLexicon(const Value: Boolean);
begin
  FKeepLexicon := Value;
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
    if not KeepLexiconAttributes then
      FLexiconAttributes.Free;
    FLexiconAttributes := Value;
  end;
end;

function TGetLexiconResponse.GetKeepLexiconAttributes: Boolean;
begin
  Result := FKeepLexiconAttributes;
end;

procedure TGetLexiconResponse.SetKeepLexiconAttributes(const Value: Boolean);
begin
  FKeepLexiconAttributes := Value;
end;

function TGetLexiconResponse.IsSetLexiconAttributes: Boolean;
begin
  Result := FLexiconAttributes <> nil;
end;

end.
