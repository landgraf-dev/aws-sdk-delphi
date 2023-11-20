unit AWS.SESv2.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleEmailServiceV2Metadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonSimpleEmailServiceV2Metadata }

function TAmazonSimpleEmailServiceV2Metadata.GetServiceId: string;
begin
  Result := 'SESv2';
end;

end.
