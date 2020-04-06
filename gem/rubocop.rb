# A Ruby static code analyzer and formatter, based on the community
# Ruby style guide. https://docs.rubocop.org
gem "rubocop", require: false
file ".rubocop.yml", <<-CODE
AllCops:
  Exclude:
    - bin/*
    - db/schema.rb
    - config/spring.rb
    - vendor/**/*

Documentation:
  Enabled: false

Metrics/CyclomaticComplexity:
  Enabled: false

AsciiComments:
  Enabled: false

Metrics/LineLength:
  Enabled: false

Metrics/MethodLength:
  Enabled: false

Metrics/ModuleLength:
  Enabled: false

Metrics/ClassLength:
  Enabled: false

Metrics/AbcSize:
  Enabled: false

Layout/FirstArrayElementIndentation:
  Enabled: false

Metrics/PerceivedComplexity:
  Enabled: false

Metrics/BlockLength:
  Enabled: false

Style/FrozenStringLiteralComment:
  Enabled: false

Style/StringLiterals:
  EnforcedStyle: double_quotes
  ConsistentQuotesInMultiline: true

Style/RedundantReturn:
  Enabled: false

Style/WordArray:
  EnforcedStyle: brackets

Style/SymbolArray:
  EnforcedStyle: brackets

Style/ClassAndModuleChildren:
  Enabled: false

Style/EmptyCaseCondition:
  Enabled: false

Style/NumericLiterals:
  Enabled: false

Style/NumericPredicate:
  Enabled: false

Style/CommentedKeyword:
  Enabled: false

Layout/AlignHash:
  EnforcedHashRocketStyle: table
  Enabled: true

Layout/FirstHashElementIndentation:
  Description: 'Checks the indentation of the first key in a hash literal.'
  EnforcedStyle: consistent
  Enabled: true

Layout/EndOfLine:
  Enabled: false

Layout/EmptyLineAfterGuardClause:
  Enabled: false

Lint/AmbiguousBlockAssociation:
  Enabled: false

Lint/SuppressedException:
  Enabled: false

Naming/MemoizedInstanceVariableName:
  Enabled: false

Performance/TimesMap:
  Enabled: false
CODE
