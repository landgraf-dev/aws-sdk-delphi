unit AWS.S3.Model.ResponseHeaderOverrides;

interface

type
  TResponseHeaderOverrides = class
  public const
    ESPONSE_CONTENT_TYPE = 'response-content-type';
    ESPONSE_CONTENT_LANGUAGE = 'response-content-language';
    ESPONSE_EXPIRES = 'response-expires';
    ESPONSE_CACHE_CONTROL = 'response-cache-control';
    ESPONSE_CONTENT_DISPOSITION = 'response-content-disposition';
    ESPONSE_CONTENT_ENCODING = 'response-content-encoding';
  private
    FContentType: string;
    FContentLanguage: string;
    FExpires: string;
    FCacheControl: string;
    FContentDisposition: string;
    FContentEncoding: string;
  public
    /// <summary>
    /// A standard MIME type describing the format of the object data.
    /// </summary>
    /// <remarks>
    /// The content type for the content being uploaded. This property defaults to "binary/octet-stream".
    /// For more information, refer to: <see href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17"/>
    property ContentType: string read FContentType write FContentType;

    /// <summary>
    /// ContentLanguage header value.
    /// </summary>
    property ContentLanguage: string read FContentLanguage write FContentLanguage;

    /// <summary>
    /// Expiry header value.
    /// </summary>
    property Expires: string read FExpires write FExpires;

    /// <summary>
    /// CacheControl header value.
    /// </summary>
    property CacheControl: string read FCacheControl write FCacheControl;

    /// <summary>
    /// The ContentDisposition header value.
    /// </summary>
    property ContentDisposition: string read FContentDisposition write FContentDisposition;

    /// <summary>
    /// The ContentEncoding header value.
    /// </summary>
    property ContentEncoding: string read FContentEncoding write FContentEncoding;
  end;

implementation

end.
