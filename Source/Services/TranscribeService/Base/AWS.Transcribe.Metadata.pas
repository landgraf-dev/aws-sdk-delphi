unit AWS.Transcribe.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTranscribeServiceMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonTranscribeServiceMetadata }

function TAmazonTranscribeServiceMetadata.GetServiceId: string;
begin
  Result := 'Transcribe';
end;

end.
