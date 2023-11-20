unit AWS.LexRuntimeV2.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonLexRuntimeV2Metadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonLexRuntimeV2Metadata }

function TAmazonLexRuntimeV2Metadata.GetServiceId: string;
begin
  Result := 'Lex Runtime V2';
end;

end.
