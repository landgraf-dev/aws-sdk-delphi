unit AWS.SESv2.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleEmailServiceV2Metadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonSimpleEmailServiceV2Metadata }

function TAmazonSimpleEmailServiceV2Metadata.GetServiceId: string;
begin
  Result := 'SESv2';
end;

end.
