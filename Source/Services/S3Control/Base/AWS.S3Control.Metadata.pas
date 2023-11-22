unit AWS.S3Control.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonS3ControlMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonS3ControlMetadata }

function TAmazonS3ControlMetadata.GetServiceId: string;
begin
  Result := 'S3 Control';
end;

end.
