unit AWS.SNS.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleNotificationServiceMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonSimpleNotificationServiceMetadata }

function TAmazonSimpleNotificationServiceMetadata.GetServiceId: string;
begin
  Result := 'SNS';
end;

end.
