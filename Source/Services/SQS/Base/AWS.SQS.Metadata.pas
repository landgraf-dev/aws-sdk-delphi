unit AWS.SQS.Metadata;

interface

uses
  AWS.Internal.ServiceMetadata;

type
  TAmazonSQSMetadata = class(TInterfacedObject, IServiceMetadata)
  public
    function GetServiceId: string;
  end;
  
implementation

{ TAmazonSQSMetadata }

function TAmazonSQSMetadata.GetServiceId: string;
begin
  Result := 'SQS';
end;

end.
