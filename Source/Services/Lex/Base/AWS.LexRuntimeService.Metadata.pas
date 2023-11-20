unit AWS.LexRuntimeService.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonLexMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonLexMetadata }

function TAmazonLexMetadata.GetServiceId: string;
begin
  Result := 'Lex Runtime Service';
end;

end.
