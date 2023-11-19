unit AWS.Internal.ServiceMetadata;

interface

uses
  System.Generics.Collections;

type
  IServiceMetadata = interface
    function GetServiceId: string;
    function GetOperationNameMapping: TDictionary<string, string>;

    property ServiceId: string read GetServiceId;
    property OperationNameMapping: TDictionary<string, string> read GetOperationNameMapping;
  end;

  /// <summary>
  /// Default ServiceMetadata implementation.
  /// This implementation will be used if the service doesn't have a
  /// IServiceMetadata implementation.
  /// </summary>
  TServiceMetadata = class(TInterfacedObject, IServiceMetadata)
  strict private
    FOperationNameMapping: TDictionary<string, string>;
    function GetServiceId: string;
    function GetOperationNameMapping: TDictionary<string, string>;
  strict protected
    procedure FillOperationNameMapping(Mapping: TDictionary<string, string>); virtual;
  public
    destructor Destroy; override;
    property ServiceId: string read GetServiceId;
    property OperationNameMapping: TDictionary<string, string> read GetOperationNameMapping;
  end;

implementation

{ TServiceMetadata }

destructor TServiceMetadata.Destroy;
begin
  FOperationNameMapping.Free;
  inherited;
end;

procedure TServiceMetadata.FillOperationNameMapping(Mapping: TDictionary<string, string>);
begin
end;

function TServiceMetadata.GetOperationNameMapping: TDictionary<string, string>;
begin
  if FOperationNameMapping = nil then
  begin
    FOperationNameMapping := TDictionary<string, string>.Create;
    FillOperationNameMapping(FOperationNameMapping);
  end;
  Result := FOperationNameMapping;
end;

function TServiceMetadata.GetServiceId: string;
begin
  Result := '';
end;

end.
