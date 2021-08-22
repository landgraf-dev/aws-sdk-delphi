unit AWS.LexRuntimeService.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonLexMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonLexMetadata }

function TAmazonLexMetadata.GetServiceId: string;
begin
  Result := 'Lex Runtime Service';
end;

end.
