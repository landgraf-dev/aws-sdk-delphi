unit AWS.Polly.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonPollyMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonPollyMetadata }

function TAmazonPollyMetadata.GetServiceId: string;
begin
  Result := 'Polly';
end;

end.
