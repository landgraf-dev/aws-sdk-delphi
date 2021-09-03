unit AWS.Rekognition.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonRekognitionMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonRekognitionMetadata }

function TAmazonRekognitionMetadata.GetServiceId: string;
begin
  Result := 'Rekognition';
end;

end.
