unit ExplicitStringListsParser;

{$INCLUDE '.\ExplicitStringLists_defs.inc'}

interface

uses
  AuxTypes;

type
  TDelimitedTextParserState = (dtpsInitial,dtpsWhiteSpace,dtpsDelimiter,
                               dtpsNormalText,dtpsQuotedText);

  TDelimitedTextParserCharType = (dtpcWhiteSpace,dtpcDelimiter,dtpcQuoteChar,
                                  dtpcGeneral);

{$DEFINE ESL_Declaration}

{$DEFINE ESL_Short}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;

  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_Short}

{$DEFINE ESL_Ansi}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;

  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_Ansi}

{$DEFINE ESL_UTF8}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;

  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_UTF8}

{$DEFINE ESL_Wide}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;

  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_Wide}

{$DEFINE ESL_Unicode}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;
  
  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_Unicode}

{$DEFINE ESL_Default}
  {$I ESL_DTParserEventType.inc} = procedure(const Str: {$I ESL_StringType.inc}) of object;
  {$I ESL_DTParserType.inc} = class(TObject)
    {$I ExplicitStringListsParser.inc}
  end;
{$UNDEF ESL_Default}

{$UNDEF ESL_Declaration}

implementation

uses
  SysUtils;

{$DEFINE ESL_Implementation}

{$DEFINE ESL_Short}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_Short}

{$DEFINE ESL_Ansi}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_Ansi}

{$DEFINE ESL_UTF8}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_UTF8}

{$DEFINE ESL_Wide}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_Wide}

{$DEFINE ESL_Unicode}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_Unicode}

{$DEFINE ESL_Default}
  {$I ExplicitStringListsParser.inc}
{$UNDEF ESL_Default}

{$UNDEF ESL_Implementation}

end.