unit AWS.Auth.Resource;

interface

type
  TResource = class
  strict private
    FResource: string;
  public
    constructor Create(const AResource: string);
    property Id: string read FResource;
  end;

implementation

{ TResource }

constructor TResource.Create(const AResource: string);
begin
  inherited Create;
  FResource := AResource;
end;

end.
