unit AWS.Auth.ActionIdentifier;

interface

type
  TActionIdentifier = class
  strict private
    FActionName: string;
  public
    constructor Create(const AActionName: string);
    property ActionName: string read FActionName write FActionName;
  end;

implementation

{ TActionIdentifier }

constructor TActionIdentifier.Create(const AActionName: string);
begin
  inherited Create;
  FActionName := AActionName;
end;

end.
