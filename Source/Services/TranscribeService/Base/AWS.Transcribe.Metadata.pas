unit AWS.Transcribe.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTranscribeServiceMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonTranscribeServiceMetadata }

function TAmazonTranscribeServiceMetadata.GetServiceId: string;
begin
  Result := 'Transcribe';
end;

end.
