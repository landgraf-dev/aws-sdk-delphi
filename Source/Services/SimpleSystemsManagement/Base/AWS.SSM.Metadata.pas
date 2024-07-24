unit AWS.SSM.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSimpleSystemsManagementMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonSimpleSystemsManagementMetadata }

function TAmazonSimpleSystemsManagementMetadata.GetServiceId: string;
begin
  Result := 'SSM';
end;

end.
