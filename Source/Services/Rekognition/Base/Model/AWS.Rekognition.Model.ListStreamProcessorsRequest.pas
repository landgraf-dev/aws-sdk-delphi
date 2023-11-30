unit AWS.Rekognition.Model.ListStreamProcessorsRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TListStreamProcessorsRequest = class;
  
  IListStreamProcessorsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListStreamProcessorsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListStreamProcessorsRequest = class(TAmazonRekognitionRequest, IListStreamProcessorsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListStreamProcessorsRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListStreamProcessorsRequest }

function TListStreamProcessorsRequest.Obj: TListStreamProcessorsRequest;
begin
  Result := Self;
end;

function TListStreamProcessorsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListStreamProcessorsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListStreamProcessorsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListStreamProcessorsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListStreamProcessorsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListStreamProcessorsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
