unit AWS.SNS.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleNotificationServiceMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonSimpleNotificationServiceMetadata }

function TAmazonSimpleNotificationServiceMetadata.GetServiceId: string;
begin
  Result := 'SNS';
end;

end.
