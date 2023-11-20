unit AWS.Textract.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTextractMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonTextractMetadata }

function TAmazonTextractMetadata.GetServiceId: string;
begin
  Result := 'Textract';
end;

end.
