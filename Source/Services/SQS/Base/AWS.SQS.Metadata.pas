unit AWS.SQS.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSQSMetadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
  end;
  
implementation

{ TAmazonSQSMetadata }

function TAmazonSQSMetadata.GetServiceId: string;
begin
  Result := 'SQS';
end;

end.
