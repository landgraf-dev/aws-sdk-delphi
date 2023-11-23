unit AWS.Transform.UnmarshallerContext;

{$I AWS.inc}

interface

uses
  System.Generics.Collections, System.SysUtils, System.Classes, System.StrUtils,
  Bcl.Collections,
  Bcl.Xml.Reader,
  AWS.Internal.WebResponseData,
  AWS.Util.Streams;

type
  TUnmarshallerContext = class abstract
  private
    FIsException: Boolean;
    FMaintainResponseBody: Boolean;
    FWebResponseData: IWebResponseData;
    FWrappingStream: TCachingWrapperStream;
    FOwnsWrappingStream: Boolean;
    function GetResponseBody: string;
  strict protected
    procedure SetWrappingStream(const Value: TCachingWrapperStream);
    property IsException: Boolean read FIsException write FIsException;
    property WebResponseData: IWebResponseData read FWebResponseData write FWebResponseData;
    property MaintainResponseBody: Boolean read FMaintainResponseBody write FMaintainResponseBody;
    property WrappingStream: TCachingWrapperStream read FWrappingStream write SetWrappingStream;
    property OwnsWrappingStream: Boolean read FOwnsWrappingStream write FOwnsWrappingStream;
  public
    { Abstract methods }
    function CurrentPath: string; virtual; abstract;
    function CurrentDepth: Integer; virtual; abstract;
    function Read: Boolean; virtual; abstract;
    function ReadText: string; virtual; abstract;
    function IsStartElement: Boolean; virtual; abstract;
    function IsEndElement: Boolean; virtual; abstract;
    function IsStartOfDocument: Boolean; virtual; abstract;
  public
    function ReadAtDepth(ATargetDepth: Integer): Boolean;
    function TestExpression(const AExpression: string): Boolean; overload;
    function TestExpression(const AExpression, ACurrentPath: string): Boolean; overload;
    function TestExpression(const AExpression: string; AStartingStackDepth: Integer): Boolean; overload;
    function TestExpression(const AExpression: string; AStartingStackDepth: Integer;
      const ACurrentPath: string; ACurrentDepth: Integer): Boolean; overload;
  public
    destructor Destroy; override;
    function GetResponseBodyBytes: TArray<Byte>;
    procedure ValidateCRC32IfAvailable;
    property ResponseBody: string read GetResponseBody;
    property ResponseData: IWebResponseData read FWebResponseData;
  end;

  TXmlNodeType = (None, Element, EndElement, Attribute);

  TXmlUnmarshallerContext = class(TUnmarshallerContext)
  strict private
    FStream: TStream;
    FAllowEmptyElementLookup: HashSet<string>;
    FXmlReader: TXmlReader;
    FStackString: string;
    FStack: TStack<string>;
    FReadCalled: Boolean;
    FNodeType: TXmlNodeType;
    FAtts: TXmlAttArray;
    FCurrentAtt: Integer;
    FCurrentlyProcessingEmptyElement: Boolean;
    FNodeContent: string;
    procedure ReadElement;
  strict private
    class function StackToPath(AStack: TStack<string>): string;
  strict protected
    function XmlReader: TXmlReader;
    property Stream: TStream read FStream;
  public
    function CurrentPath: string; override;
    function CurrentDepth: Integer; override;
    function Read: Boolean; override;
    function ReadText: string; override;
    function IsStartElement: Boolean; override;
    function IsEndElement: Boolean; override;
    function IsStartOfDocument: Boolean; override;
    function IsAttribute: Boolean;
    property AllowEmptyElementLookup: HashSet<string> read FAllowEmptyElementLookup;
  public
    constructor Create(AResponseStream: TStream; AMaintainResponseBody: Boolean;
      AResponseData: IWebResponseData; AIsException: Boolean = false); reintroduce;
    destructor Destroy; override;
  end;

implementation

uses
  AWS.Configs;

{ TUnmarshallerContext }

destructor TUnmarshallerContext.Destroy;
begin
  if OwnsWrappingStream then
    FWrappingStream.Free;
  inherited;
end;

function TUnmarshallerContext.GetResponseBody: string;
begin
  Result := TEncoding.UTF8.GetString(GetResponseBodyBytes);
end;

function TUnmarshallerContext.GetResponseBodyBytes: TArray<Byte>;
begin
  if IsException then
    Result := WrappingStream.AllReadBytes
  else
  if MaintainResponseBody then
    Result := WrappingStream.LoggableReadBytes
  else
    SetLength(Result, 0);
end;

function TUnmarshallerContext.ReadAtDepth(ATargetDepth: Integer): Boolean;
begin
  Result := Read and (CurrentDepth >= ATargetDepth);
end;

procedure TUnmarshallerContext.SetWrappingStream(const Value: TCachingWrapperStream);
begin
  if FWrappingStream <> Value then
  begin
    FWrappingStream.Free;
    FWrappingStream := Value;
  end;
end;

function TUnmarshallerContext.TestExpression(const AExpression: string): Boolean;
begin
  Result := TestExpression(AExpression, CurrentPath);
end;

function TUnmarshallerContext.TestExpression(const AExpression: string; AStartingStackDepth: Integer): Boolean;
begin
  Result := TestExpression(AExpression, AStartingStackDepth, CurrentPath, CurrentDepth);
end;

function TUnmarshallerContext.TestExpression(const AExpression, ACurrentPath: string): Boolean;
begin
  if AExpression = '.' then
    Exit(True);

  Result := EndsText(AExpression, ACurrentPath);
end;

procedure TUnmarshallerContext.ValidateCRC32IfAvailable;
begin
  {TODO: CRC check not implemented}
//  if CrcStream <> nil then
//    if CrcStream.Crc32 <> Crc32Result then
//      raise EInOutError.Create('CRC value returned with response does not match the computed CRC value for the returned response body.');
end;

function TUnmarshallerContext.TestExpression(const AExpression: string; AStartingStackDepth: Integer;
  const ACurrentPath: string; ACurrentDepth: Integer): Boolean;
var
  Index: Integer;
begin
  if AExpression = '.' then
    Exit(True);

  Index := 0;
  Index := PosEx('/', AExpression, Index + 1);
  while Index > 0 do
  begin
    if AExpression[1] <> '@' then
      Inc(AStartingStackDepth);
    Index := PosEx('/', AExpression, Index + 1);
  end;

  Result := (AStartingStackDepth = ACurrentDepth)
    and (Length(ACurrentPath) > Length(AExpression))
    and (CurrentPath[Length(ACurrentPath) - Length(AExpression)] = '/')
    and EndsText(AExpression, ACurrentPath);
end;

{ TXmlUnmarshallerContext }

constructor TXmlUnmarshallerContext.Create(AResponseStream: TStream; AMaintainResponseBody: Boolean;
  AResponseData: IWebResponseData; AIsException: Boolean);
var
  SizeLimit: Integer;
begin
  inherited Create;
  SizeLimit := TAWSConfigs.LoggingConfig.LogResponsesSizeLimit;
  if IsException then
    SetWrappingStream(TCachingWrapperStream.Create(AResponseStream, False, SizeLimit, MaxInt))
  else
  if AMaintainResponseBody then
    SetWrappingStream(TCachingWrapperStream.Create(AResponseStream, False, SizeLimit, SizeLimit));
  OwnsWrappingStream := True;

  if IsException or AMaintainResponseBody then
    AResponseStream := WrappingStream;

  FStream := AResponseStream;
  WebResponseData := AResponseData;
  MaintainResponseBody := AMaintainResponseBody;
  IsException := AIsException;
  FAllowEmptyElementLookup := HashSet<string>.Create;
  FStack := TStack<string>.Create;
end;

function TXmlUnmarshallerContext.CurrentDepth: Integer;
begin
  Result := FStack.Count;
end;

function TXmlUnmarshallerContext.CurrentPath: string;
begin
  Result := FStackString;
end;

destructor TXmlUnmarshallerContext.Destroy;
begin
  FAllowEmptyElementLookup.Free;
  FXmlReader.Free;
  FStack.Free;
  inherited;
end;

function TXmlUnmarshallerContext.IsAttribute: Boolean;
begin
  Result := FNodeType = TXmlNodeType.Attribute;
end;

function TXmlUnmarshallerContext.IsEndElement: Boolean;
begin
  Result := FNodeType = TXmlNodeType.EndElement;
end;

function TXmlUnmarshallerContext.IsStartElement: Boolean;
begin
  Result := FNodeType = TXmlNodeType.Element;
end;

function TXmlUnmarshallerContext.IsStartOfDocument: Boolean;
begin
  Result := not FReadCalled;
end;

function TXmlUnmarshallerContext.Read: Boolean;
begin
  if not FReadCalled then
  begin
    XmlReader.Read;
    FReadCalled := True;
  end;

  if FCurrentAtt < Length(FAtts) then
  begin
    Inc(FCurrentAtt);
    FNodeType := TXmlNodeType.Attribute;
    FStackString := Format('%s/%s', [StackToPath(FStack), FAtts[FCurrentAtt - 1].Name]);
  end
  else
  begin
    while XmlReader.IsEmptyElement and not AllowEmptyElementLookup.Contains(XmlReader.LocalName) do
      XmlReader.Read;

    if FCurrentlyProcessingEmptyElement then
    begin
      FNodeType := TXmlNodeType.EndElement;
      FStack.Pop;
      FStackString := StackToPath(FStack);
      XmlReader.Read;
      FCurrentlyProcessingEmptyElement := False;
    end
    else
    if XmlReader.IsEmptyElement and AllowEmptyElementLookup.Contains(XmlReader.LocalName) then
    begin
      //This is a shorthand form of an empty element <element /> and we want to allow it
      FNodeType := TXmlNodeType.Element;
      FStack.Push(XmlReader.LocalName);
      FStackString := StackToPath(FStack);
      FCurrentlyProcessingEmptyElement := True;

      //Defer reading so that on next pass we can treat this same element as the end element.
    end
    else
    begin
      if XmlReader.AtEndElement then
      begin
        FNodeType := TXmlNodeType.EndElement;
        FStack.Pop;
        FStackString := StackToPath(FStack);
        XmlReader.Read;
      end
      else
      if not XmlReader.Eof then
      begin
        FNodeType := TXmlNodeType.Element;
        FStack.Push(XmlReader.LocalName);
        FStackString := StackToPath(FStack);
        ReadElement;
      end;
    end;
  end;

  Result := not XmlReader.Eof;
end;

procedure TXmlUnmarshallerContext.ReadElement;
begin
  FAtts := XmlReader.GetAttributes;
  FCurrentAtt := 0;
  FNodeContent := '';
  if XmlReader.IsEmptyElement then
    XmlReader.Read
  else
  if not XmlReader.TryReadElementContentAsString(FNodeContent) then
    XmlReader.Read
end;

function TXmlUnmarshallerContext.ReadText: string;
begin
  FReadCalled := True;
  if FNodeType = TXmlNodeType.Attribute then
    Result := FAtts[FCurrentAtt - 1].Value
  else
    Result := FNodeContent;
end;

class function TXmlUnmarshallerContext.StackToPath(AStack: TStack<string>): string;
var
  S: string;
begin
  Result := '';
  for S in AStack do
    if Result = '' then
      Result := S
    else
      Result := Result + '/' + S;
  Result := '/' + Result;
end;

function TXmlUnmarshallerContext.XmlReader: TXmlReader;
begin
  if FXmlReader = nil then
    FXmlReader := TXmlReader.Create(Stream);
  Result := FXmlReader;
end;

end.
