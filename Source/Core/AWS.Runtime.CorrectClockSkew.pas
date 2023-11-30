unit AWS.Runtime.CorrectClockSkew;

{$I AWS.inc}

{$IFNDEF DELPHI11_LVL}
  {$DEFINE USE_OLD_MREW}
{$ENDIF}

interface

uses
  System.SyncObjs, System.SysUtils, System.TimeSpan,
  AWS.Nullable;

type
  /// <summary>
  /// Utility class that stores clock skew information.
  /// </summary>
  TCorrectClockSkew = class
  private
    class var FManualClockCorrection: Nullable<TTimeSpan>;
{$IFNDEF USE_OLD_MREW}
    class var FManualClockCorrectionLock: TLightweightMREW;
{$ELSE}
    class var FManualClockCorrectionLock: TMultiReadExclusiveWriteSynchronizer;
{$ENDIF}
  private
    class function GetGlobalClockCorrection: Nullable<TTimeSpan>; static;
    class procedure SetGlobalClockCorrection(const Value: Nullable<TTimeSpan>); static;

    class constructor Create;
    class destructor Destroy;
  public
    /// <summary>
    /// GlobalClockCorrection should be only set by AWSConfigs.ManualClockCorrection property
    /// and is only available to maintain backward compatibilty.  This should override any
    /// endpoint specific clockskew correction.
    /// </summary>
    class property GlobalClockCorrection: Nullable<TTimeSpan> read GetGlobalClockCorrection write SetGlobalClockCorrection;
  end;

implementation

{ TCorrectClockSkew }

class constructor TCorrectClockSkew.Create;
begin
{$IFDEF USE_OLD_MREW}
  FManualClockCorrectionLock := TMultiReadExclusiveWriteSynchronizer.Create;
{$ENDIF}
end;

class destructor TCorrectClockSkew.Destroy;
begin
{$IFDEF USE_OLD_MREW}
  FManualClockCorrectionLock.Free;
{$ENDIF}
end;

class function TCorrectClockSkew.GetGlobalClockCorrection: Nullable<TTimeSpan>;
begin
  FManualClockCorrectionLock.BeginRead;
  try
    Result := FManualClockCorrection;
  finally
    FManualClockCorrectionLock.EndRead;
  end;
end;

class procedure TCorrectClockSkew.SetGlobalClockCorrection(const Value: Nullable<TTimeSpan>);
begin
  FManualClockCorrectionLock.BeginWrite;
  try
    FManualClockCorrection := Value;
  finally
    FManualClockCorrectionLock.EndWrite;
  end;
end;

end.
