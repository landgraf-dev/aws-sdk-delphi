{$SCOPEDENUMS ON}
{$IFDEF NEXTGEN}
{$ZEROBASEDSTRINGS OFF}
{$ENDIF}

{$IF CompilerVersion >= 24}
  {$LEGACYIFEND ON}
{$IFEND}

{$IF CompilerVersion >= 21}
  {$DEFINE DELPHI2010_LVL}
{$IFEND}

{$IF CompilerVersion >= 22}
  {$DEFINE DELPHIXE_LVL}
{$IFEND}

{$IF CompilerVersion >= 23}
  {$DEFINE DELPHIXE2_LVL}
{$IFEND}

{$IF CompilerVersion >= 24}
  {$DEFINE DELPHIXE3_LVL}
{$IFEND}

{$IF CompilerVersion >= 23}
  {$DEFINE DELPHIXE4_LVL}
{$IFEND}

{$IF CompilerVersion >= 25}
  {$DEFINE DELPHIXE2_LVL}
{$IFEND}

{$IF CompilerVersion >= 26}
  {$DEFINE DELPHIXE5_LVL}
  {$IFDEF DEBUG}
    {$D1}  //limited debug info.
  {$ENDIF}
{$IFEND}

{$IF CompilerVersion >= 27}
  {$DEFINE DELPHIXE6_LVL}
{$IFEND}

{$IF CompilerVersion >= 29}
  {$DEFINE DELPHIXE8_LVL}
{$IFEND}

{$IF CompilerVersion >= 31}
  {$DEFINE DELPHIBERLIN_LVL}
{$IFEND}

{$IF CompilerVersion >= 32}
  {$DEFINE DELPHITOKYO_LVL}
{$IFEND}

{$IF CompilerVersion >= 35}
  {$DEFINE DELPHI11_LVL}
{$IFEND}

{$IF CompilerVersion >= 36}
  {$DEFINE DELPHI12_LVL}
{$IFEND}

{$IFDEF NEXTGEN}
  {$ZEROBASEDSTRINGS OFF}
{$ENDIF}
