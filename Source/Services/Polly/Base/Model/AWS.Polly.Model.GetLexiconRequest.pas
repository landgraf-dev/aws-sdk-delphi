unit AWS.Polly.Model.GetLexiconRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Model.Request;

type
  TGetLexiconRequest = class;
  
  IGetLexiconRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TGetLexiconRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TGetLexiconRequest = class(TAmazonPollyRequest, IGetLexiconRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TGetLexiconRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TGetLexiconRequest }

function TGetLexiconRequest.Obj: TGetLexiconRequest;
begin
  Result := Self;
end;

function TGetLexiconRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetLexiconRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetLexiconRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
