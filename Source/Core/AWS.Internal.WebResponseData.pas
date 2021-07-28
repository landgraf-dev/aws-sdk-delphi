unit AWS.Internal.WebResponseData;

interface

uses
  System.SysUtils, System.Classes;

type
  IHttpResponseBody = interface
    function OpenResponse: TStream;
  end;

  IWebResponseData = interface
    function GetContentLength: Integer;
    function GetContentType: string;
    function GetStatusCode: Integer;
    function GetIsSuccessStatusCode: Boolean;
    function GetResponseBody: IHttpResponseBody;
    function IsHeaderPresent(const AHeaderName: string): Boolean;
    function GetHeaderValue(const AHeaderName: string): string;

    property ContentLength: Integer read GetContentLength;
    property ContentType: string read GetContentType;
    property StatusCode: Integer read GetStatusCode;
    property IsSuccessStatusCode: Boolean read GetIsSuccessStatusCode;
    property ResponseBody: IHttpResponseBody read GetResponseBody;
  end;

  EHttpErrorResponseException = class(Exception)
  strict private
    FResponse: IWebResponseData;
  public
    constructor Create(AResponse: IWebResponseData);
    property Response: IWebResponseData read FResponse;
  end;

implementation

{ EHttpErrorResponseException }

constructor EHttpErrorResponseException.Create(AResponse: IWebResponseData);
begin
  inherited Create('AWS request error');
  FResponse := AResponse;
end;

end.
