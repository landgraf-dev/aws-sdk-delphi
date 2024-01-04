unit AWS.S3.Model.ParameterCollection;

interface

uses
  System.Generics.Collections, System.SysUtils,
  AWS.Xml.Writer,
  AWS.S3.Internal.S3Transforms;

type
  TParameterCollection = class
  private const
    ParameterHeaderPrefix = 'x-';
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
    /// Adds the Parameter to the collection, if the name already exists it will be overwritten.
    /// </summary>
    /// <param name="Name">The name of the Parameter element</param>
    /// <param name="Value">The value for the Parameter</param>
    procedure Add(const Name, Value: string);

    /// <summary>
    /// Gets the names of the meta data elements.
    /// </summary>
    function Keys: TEnumerable<string>;

    /// <summary>
    /// Gets and sets parameters for the object. Parameter names must start with "x-". If the name passeed in as the indexer
    /// doesn't start with "x-" then it will be prepended.
    /// </summary>
    /// <param name="Name">The name of the parameter.</param>
    /// <returns>The value for the meta data</returns>
    property Items[const Name: string]: string read GetItem write SetItem; default;
  end;

implementation

{ TParameterCollection }

procedure TParameterCollection.Add(const Name, Value: string);
begin
  Self[Name] := Value;
end;

function TParameterCollection.Count: Integer;
begin
  Result := FValues.Count;
end;

constructor TParameterCollection.Create;
begin
  inherited;
  FValues := TDictionary<string, string>.Create;
end;

destructor TParameterCollection.Destroy;
begin
  FValues.Free;
  inherited;
end;

function TParameterCollection.GetItem(const Name: string): string;
var
  LName: string;
begin
  LName := Name;
  if not LName.StartsWith(ParameterHeaderPrefix, True) then
    LName := ParameterHeaderPrefix + LName;

  if not FValues.TryGetValue(LName, Result) then
    Result := '';
end;

function TParameterCollection.Keys: TEnumerable<string>;
begin
  Result := FValues.Keys;
end;

procedure TParameterCollection.Marshall(const MemberName: string; XmlWriter: TXmlWriter);
begin
  XmlWriter.WriteStartElement(MemberName);
  for var t in FValues do
  begin
    xmlWriter.WriteStartElement('ParameterEntry');

    // since this is not being marshalled into header,
    // normalize it by stripping it of "x-amz-meta" prefix.
    var Name := t.Key.Replace(ParameterHeaderPrefix, '');

    XmlWriter.WriteElementString('Name', '', TS3Transforms.ToXmlStringValue(name));
    XmlWriter.WriteElementString('Value', '', TS3Transforms.ToXmlStringValue(t.Value));

    XmlWriter.WriteEndElement();
  end;
  XmlWriter.WriteEndElement;
end;

procedure TParameterCollection.SetItem(const Name, Value: string);
var
  LName: string;
begin
  LName := Name;
  if not LName.StartsWith(ParameterHeaderPrefix, True) then
    LName := ParameterHeaderPrefix + LName;
  FValues.AddOrSetValue(LName, Value);
end;

end.
