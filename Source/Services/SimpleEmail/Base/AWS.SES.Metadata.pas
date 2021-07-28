unit AWS.SES.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleEmailServiceMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonSimpleEmailServiceMetadata }

function TAmazonSimpleEmailServiceMetadata.GetServiceId: string;
begin
  Result := 'SES';
end;

end.
