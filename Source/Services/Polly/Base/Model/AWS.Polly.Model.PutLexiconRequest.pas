unit AWS.Polly.Model.PutLexiconRequest;

interface

uses
  AWS.Polly.Model.Request, 
  AWS.Nullable;

type
  TPutLexiconRequest = class;
  
  IPutLexiconRequest = interface
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TPutLexiconRequest;
    function IsSetContent: Boolean;
    function IsSetName: Boolean;
    property Content: string read GetContent write SetContent;
    property Name: string read GetName write SetName;
  end;
  
  TPutLexiconRequest = class(TAmazonPollyRequest, IPutLexiconRequest)
  strict private
    FContent: Nullable<string>;
    FName: Nullable<string>;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TPutLexiconRequest;
  public
    function IsSetContent: Boolean;
    function IsSetName: Boolean;
    property Content: string read GetContent write SetContent;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TPutLexiconRequest }

function TPutLexiconRequest.Obj: TPutLexiconRequest;
begin
  Result := Self;
end;

function TPutLexiconRequest.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TPutLexiconRequest.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TPutLexiconRequest.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TPutLexiconRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPutLexiconRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TPutLexiconRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
