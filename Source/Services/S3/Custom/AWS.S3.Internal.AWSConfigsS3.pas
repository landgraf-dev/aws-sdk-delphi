unit AWS.S3.Internal.AWSConfigsS3;

interface

type
  TAWSConfigsS3 = class
  private
    const ss3Key = 's3';
  public
    const S3UseSignatureVersion4Key = 'AWS.S3.UseSignatureVersion4';
  private
    class var FUseSignatureVersion4: Boolean;
    class var FDisableMD5Stream: Boolean;
    class var FUseSigV4SetExplicitly: Boolean;
    class var FEnableUnicodeEncodingForObjectMetadata: Boolean;
  private
    class constructor Create;
    class procedure SetUseSignatureVersion4(const Value: Boolean); static;
  public
    /// <summary>
    /// Configures if the S3 client should use Signature Version 4 signing with requests.
    /// By default, this setting is set to true which will use Signature Version 4 for all
    /// requests except presigned URL requests when the region is set to us-east-1. When
    /// UseSignatureVersion4 is explicitly set to true by directly setting this property or
    /// directly setting this property through configuration, Signature Version 4 will be
    /// used for all requests when able to do so.
    /// When this setting is false, Signature Version 2 will be used. Note that when the
    /// setting is false, Signature Version 4 may still be used by default in some cases
    /// or with some regions.
    /// </summary>
    class property UseSignatureVersion4: Boolean read FUseSignatureVersion4 write SetUseSignatureVersion4;

    /// <summary>
    /// <para><b>WARNING: Setting DisableMD5Stream to true disables the MD5 data integrity check
    /// on upload requests.</b></para>
    /// <para>When true, MD5Stream will not be used in upload requests. This may increase upload
    /// performance under high CPU loads. The default value is false. Set this value to true to
    /// disable MD5Stream use in all S3 upload requests or override this value per request by
    /// setting the DisableMD5Stream property on PutObjectRequest, UploadPartRequest, or
    /// TransferUtilityUploadRequest.</para>
    /// <para>MD5Stream, SigV4 payload signing, and HTTPS each provide some data integrity
    /// verification. If DisableMD5Stream is true and DisablePayloadSigning is true, then the
    /// possibility of data corruption is completely dependant on HTTPS being the only remaining
    /// source of data integrity verification.</para>
    /// </summary>
    class property DisableMD5Stream: Boolean read FDisableMD5Stream write FDisableMD5Stream;

    /// <summary>
    /// Was the value of the UseSignatureVersion4 property set explicitly?
    ///
    /// This is used to determine if the user set UseSignatureVersion4 to true,
    /// or if it's true because the default was changed to true in the SDK.
    /// </summary>
    class property UseSigV4SetExplicitly: Boolean read FUseSigV4SetExplicitly;

    /// <summary>
    /// Escape and unescape S3 metadata for S3 Put/Get object requests.
    /// Escape only escapes non-ascii values in metadata
    /// Any "%" values in metadata could interfere with this option.
    /// Default value is false.
    /// </summary>
    class property EnableUnicodeEncodingForObjectMetadata: Boolean read FEnableUnicodeEncodingForObjectMetadata write FEnableUnicodeEncodingForObjectMetadata;
  end;

implementation

{ TAWSConfigsS3 }

class constructor TAWSConfigsS3.Create;
begin
  FUseSignatureVersion4 := True;
  FUseSigV4SetExplicitly := False;
end;

class procedure TAWSConfigsS3.SetUseSignatureVersion4(const Value: Boolean);
begin
  FUseSigV4SetExplicitly := True;
  FUseSignatureVersion4 := Value;
end;

end.
