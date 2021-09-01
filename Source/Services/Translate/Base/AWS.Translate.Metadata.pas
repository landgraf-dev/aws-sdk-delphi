unit AWS.Translate.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTranslateMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonTranslateMetadata }

function TAmazonTranslateMetadata.GetServiceId: string;
begin
  Result := 'Translate';
end;

end.
