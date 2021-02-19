unit ExplicitStringLists_Ansi;

{$INCLUDE '.\ExplicitStringLists_defs.inc'}

interface

uses
  Classes,
  AuxTypes,
  ExplicitStringLists_Base;

{$DEFINE ESL_Ansi}

type
  TESLCharType   = AnsiChar;
  TESLPCharType  = PAnsiChar;

  TESLStringType     = AnsiString;
  TESLPStringType    = PAnsiString;
  TESLLongStringType = AnsiString;

type
  TAnsiStringList = class;  // forward declaration
  
  TESLClassType = TAnsiStringList;

  TESLAnsiSortCompareIndex  = Function(List: TAnsiStringList; Idx1,Idx2: Integer): Integer;
  TESLAnsiSortCompareString = Function(List: TAnsiStringList; const Str1,Str2: TESLStringType): Integer;

  TESLSortCompareIndexType  = TESLAnsiSortCompareIndex;
  TESLSortCompareStringType = TESLAnsiSortCompareString;

{$DEFINE ESL_ClassTypes}
  {$INCLUDE './ExplicitStringLists.inc'}
{$UNDEF ESL_ClassTypes}

  TAnsiStringList = class(TExplicitStringList)
  {$DEFINE ESL_ClassDeclaration}
    {$INCLUDE './ExplicitStringLists.inc'}
  {$UNDEF ESL_ClassDeclaration}
  end;

implementation

uses
  SysUtils,
  StrRect, MemoryBuffer, StaticMemoryStream;

{$IFDEF FPC_DisableWarns}
  {$DEFINE FPCDWM}
  {$DEFINE W5024:={$WARN 5024 OFF}} // Parameter "$1" not used
{$ENDIF}

{$DEFINE ESL_ClassImplementation}
  {$INCLUDE './ExplicitStringLists.inc'}
{$UNDEF ESL_ClassImplementation}

end.
