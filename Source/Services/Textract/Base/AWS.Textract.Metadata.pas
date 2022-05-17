unit AWS.Textract.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTextractMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonTextractMetadata }

function TAmazonTextractMetadata.GetServiceId: string;
begin
  Result := 'Textract';
end;

end.
