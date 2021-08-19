unit AWS.Polly.Model.DeleteLexiconRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Model.Request;

type
  TDeleteLexiconRequest = class;
  
  IDeleteLexiconRequest = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDeleteLexiconRequest;
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
  TDeleteLexiconRequest = class(TAmazonPollyRequest, IDeleteLexiconRequest)
  strict private
    FName: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDeleteLexiconRequest;
  public
    function IsSetName: Boolean;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDeleteLexiconRequest }

function TDeleteLexiconRequest.Obj: TDeleteLexiconRequest;
begin
  Result := Self;
end;

function TDeleteLexiconRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteLexiconRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteLexiconRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
