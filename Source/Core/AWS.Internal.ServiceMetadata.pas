unit AWS.Internal.ServiceMetadata;

interface

type
  IServiceMetadata = interface
    function GetServiceId: string;
    property ServiceId: string read GetServiceId;
  end;

  /// <summary>
  /// Default ServiceMetadata implementation.
  /// This implementation will be used if the service doesn't have a
  /// IServiceMetadata implementation.
  /// </summary>
  TServiceMetadata = class(TInterfacedObject, IServiceMetadata)
  strict private
    function GetServiceId: string;
  public
    property ServiceId: string read GetServiceId;
  end;

implementation

{ TServiceMetadata }

function TServiceMetadata.GetServiceId: string;
begin
  Result := '';
end;

end.
