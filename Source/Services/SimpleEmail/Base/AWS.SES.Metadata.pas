unit AWS.SES.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleEmailServiceMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonSimpleEmailServiceMetadata }

function TAmazonSimpleEmailServiceMetadata.GetServiceId: string;
begin
  Result := 'SES';
end;

end.
