unit AWS.S3.Model.MetadataCollection;

interface

uses
  System.Generics.Collections, System.SysUtils,
  AWS.Xml.Writer,
  AWS.S3.Internal.S3Transforms;

type
  TMetadataCollection = class
  private const
    MetaDataHeaderPrefix = 'x-amz-meta-';
  private
    FValues: TDictionary<string, string>;
    function GetItem(const Name: string): string;
    procedure SetItem(const Name, Value: string);
  protected
    procedure Marshall(const MemberName: string; XmlWriter: TXmlWriter);
  public
    constructor Create;
    destructor Destroy; override;

    /// <summary>
    /// Gets the count of headers.
    /// </summary>
    function Count: Integer;

    /// <summary>
    /// Adds the metadata to the collection, if the name already exists it will be overwritten.
    /// </summary>
    /// <param name="Name">The name of the metadata element</param>
    /// <param name="Value">The value for the metadata</param>
    procedure Add(const Name, Value: string);

    /// <summary>
    /// Gets the names of the meta data elements.
    /// </summary>
    function Keys: TEnumerable<string>;

    /// <summary>
    /// Gets and sets meta data for the object. Meta data names must start with "x-amz-meta-". If the name passeed in as the indexer
    /// doesn't start with "x-amz-meta-" then it will be prepended.
    /// </summary>
    /// <param name="Name">The name of the meta data.</param>
    /// <returns>The value for the meta data</returns>
    property Items[const Name: string]: string read GetItem write SetItem; default;
  end;

implementation

{ TMetadataCollection }

procedure TMetadataCollection.Add(const Name, Value: string);
begin
  Self[Name] := Value;
end;

function TMetadataCollection.Count: Integer;
begin
  Result := FValues.Count;
end;

constructor TMetadataCollection.Create;
begin
  inherited;
  FValues := TDictionary<string, string>.Create;
end;

destructor TMetadataCollection.Destroy;
begin
  FValues.Free;
  inherited;
end;

function TMetadataCollection.GetItem(const Name: string): string;
var
  LName: string;
begin
  LName := Name;
  if not LName.StartsWith(MetaDataHeaderPrefix, True) then
    LName := MetaDataHeaderPrefix + LName;

  if not FValues.TryGetValue(LName, Result) then
    Result := '';
end;

function TMetadataCollection.Keys: TEnumerable<string>;
begin
  Result := FValues.Keys;
end;

procedure TMetadataCollection.Marshall(const MemberName: string; XmlWriter: TXmlWriter);
begin
  XmlWriter.WriteStartElement(MemberName);
  for var t in FValues do
  begin
    xmlWriter.WriteStartElement('MetadataEntry');

    // since this is not being marshalled into header,
    // normalize it by stripping it of "x-amz-meta" prefix.
    var Name := t.Key.Replace(MetaDataHeaderPrefix, '');

    XmlWriter.WriteElementString('Name', '', TS3Transforms.ToXmlStringValue(name));
    XmlWriter.WriteElementString('Value', '', TS3Transforms.ToXmlStringValue(t.Value));

    XmlWriter.WriteEndElement();
  end;
  XmlWriter.WriteEndElement;
end;

procedure TMetadataCollection.SetItem(const Name, Value: string);
var
  LName: string;
begin
  LName := Name;
  if not LName.StartsWith(MetaDataHeaderPrefix, True) then
    LName := MetaDataHeaderPrefix + LName;
  FValues.AddOrSetValue(LName, Value);
end;

end.
