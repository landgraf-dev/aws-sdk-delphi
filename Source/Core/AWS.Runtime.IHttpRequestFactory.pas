unit AWS.Runtime.IHttpRequestFactory;

interface

uses
  System.Classes, System.Generics.Collections,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Contexts;

type
  IWebHttpRequest = interface
    procedure ConfigureRequest(ARequestContext: TRequestContext);
    procedure SetRequestHeaders(AHeaders: TDictionary<string, string>);
    procedure WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>); overload;
    procedure WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>; AOwsStream: Boolean); overload;
    function GetResponse: IWebResponseData;
    function GetMethod: string;
    procedure SetMethod(const Value: string);
    function GetRequestUri: string;
    property Method: string read GetMethod write SetMethod;
    property RequestUri: string read GetRequestUri;
  end;

  IHttpRequestFactory = interface
    function CreateHttpRequest(const ARequestUri: string): IWebHttpRequest;
  end;

implementation

end.
