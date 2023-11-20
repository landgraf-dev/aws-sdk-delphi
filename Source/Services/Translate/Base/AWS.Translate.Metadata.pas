unit AWS.Translate.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonTranslateMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonTranslateMetadata }

function TAmazonTranslateMetadata.GetServiceId: string;
begin
  Result := 'Translate';
end;

end.
