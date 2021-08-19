unit AWS.Polly.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonPollyMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonPollyMetadata }

function TAmazonPollyMetadata.GetServiceId: string;
begin
  Result := 'Polly';
end;

end.
