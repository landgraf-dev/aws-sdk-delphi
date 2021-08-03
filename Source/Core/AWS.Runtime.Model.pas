unit AWS.Runtime.Model;

interface

uses
  System.Generics.Collections,
  AWS.Auth.Signer;

type
  TResponseMetadata = class
  strict private
    FRequestId: string;
    FMetadata: TDictionary<string, string>;
    function GetMetadata: TDictionary<string, string>;
  public
    destructor Destroy; override;
    property RequestId: string read FRequestId write FRequestId;
    property Metadata: TDictionary<string, string> read GetMetadata;
  end;

  IAmazonWebServiceResponse = interface
    function GetResponseMetadata: TResponseMetadata;
    function GetContentLength: Int64;
    function GetHttpStatusCode: Integer;
    property ResponseMetadata: TResponseMetadata read GetResponseMetadata;
    property ContentLength: Int64 read GetContentLength;
    property HttpStatusCode: Integer read GetHttpStatusCode;
  end;

  TAmazonWebServiceResponse = class(TInterfacedObject, IAmazonWebServiceResponse)
  strict private
    FContentLength: Int64;
    FHttpStatusCode: Integer;
    FResponseMetadata: TResponseMetadata;
    function GetResponseMetadata: TResponseMetadata;
    procedure SetResponseMetadata(const Value: TResponseMetadata);
    function GetContentLength: Int64;
    function GetHttpStatusCode: Integer;
  public
    destructor Destroy; override;
    property ContentLength: Int64 read GetContentLength write FContentLength;
    property HttpStatusCode: Integer read GetHttpStatusCode write FHttpStatusCode;
    property ResponseMetadata: TResponseMetadata read GetResponseMetadata write SetResponseMetadata;
  end;

  TAmazonWebServiceRequest = class(TInterfacedObject)
  strict private
    FSigner: TAbstractAWSSigner;
    FUseSigV4: Boolean;
    FUserAgentAddition: string;
    function GetUseSigV4: Boolean;
    procedure SetUseSigV4(const Value: Boolean);
  strict protected
    function CreateSigner: TAbstractAWSSigner; virtual;
  public
    function GetSigner: TAbstractAWSSigner;
    property UseSigV4: Boolean read GetUseSigV4 write SetUseSigV4;
    property UserAgentAddition: string read FUserAgentAddition write FUserAgentAddition;
  end;


implementation

{ TAmazonWebServiceRequest }

function TAmazonWebServiceRequest.CreateSigner: TAbstractAWSSigner;
begin
  Result := nil;
end;

function TAmazonWebServiceRequest.GetSigner: TAbstractAWSSigner;
begin
  if FSigner = nil then
    FSigner := CreateSigner;
  Result := FSigner;
end;

function TAmazonWebServiceRequest.GetUseSigV4: Boolean;
begin
  Result := FUseSigV4;
end;

procedure TAmazonWebServiceRequest.SetUseSigV4(const Value: Boolean);
begin
  FUseSigV4 := Value;
end;

{ TAmazonWebServiceResponse }

destructor TAmazonWebServiceResponse.Destroy;
begin
  FResponseMetadata.Free;
  inherited;
end;

function TAmazonWebServiceResponse.GetContentLength: Int64;
begin
  Result := FContentLength;
end;

function TAmazonWebServiceResponse.GetHttpStatusCode: Integer;
begin
  Result := FHttpStatusCode;
end;

function TAmazonWebServiceResponse.GetResponseMetadata: TResponseMetadata;
begin
  if FResponseMetadata = nil then
    FResponseMetadata := TResponseMetadata.Create;
  Result := FResponseMetadata;
end;

procedure TAmazonWebServiceResponse.SetResponseMetadata(const Value: TResponseMetadata);
begin
  if FResponseMetadata <> Value then
  begin
    FResponseMetadata.Free;
    FResponseMetadata := Value;
  end;
end;

{ TResponseMetadata }

destructor TResponseMetadata.Destroy;
begin
  FMetadata.Free;
  inherited;
end;

function TResponseMetadata.GetMetadata: TDictionary<string, string>;
begin
  if FMetadata = nil then
    FMetadata := TDictionary<string, string>.Create;
  Result := FMetadata;
end;

end.
