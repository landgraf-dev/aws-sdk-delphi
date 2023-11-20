unit AWS.Rekognition.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonRekognitionMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonRekognitionMetadata }

function TAmazonRekognitionMetadata.GetServiceId: string;
begin
  Result := 'Rekognition';
end;

end.
