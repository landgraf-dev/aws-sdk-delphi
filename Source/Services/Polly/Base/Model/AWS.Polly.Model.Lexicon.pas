unit AWS.Polly.Model.Lexicon;

interface

uses
  Bcl.Types.Nullable;

type
  TLexicon = class;
  
  ILexicon = interface
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TLexicon;
    function IsSetContent: Boolean;
    function IsSetName: Boolean;
    property Content: string read GetContent write SetContent;
    property Name: string read GetName write SetName;
  end;
  
  TLexicon = class
  strict private
    FContent: Nullable<string>;
    FName: Nullable<string>;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TLexicon;
  public
    function IsSetContent: Boolean;
    function IsSetName: Boolean;
    property Content: string read GetContent write SetContent;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TLexicon }

function TLexicon.Obj: TLexicon;
begin
  Result := Self;
end;

function TLexicon.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TLexicon.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TLexicon.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TLexicon.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TLexicon.SetName(const Value: string);
begin
  FName := Value;
end;

function TLexicon.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
