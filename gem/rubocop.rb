# A Ruby static code analyzer and formatter, based on the community
# Ruby style guide. https://docs.rubocop.org
gem "rubocop", require: false
file ".rubocop.yml", <<-CODE
AllCops:
  Exclude:
    - bin/*
    - db/migrate/*.rb
    - db/schema.rb
    - Gemfile
    - config.ru
    - Rakefile

Documentation:
  Enabled: false

Metrics/CyclomaticComplexity:
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

Metrics/PerceivedComplexity:
  Enabled: false

Metrics/BlockLength:
  Enabled: false

Metrics/BlockNesting:
  Enabled: false

Style/FrozenStringLiteralComment:
  Enabled: false

Style/StringLiterals:
  EnforcedStyle: double_quotes
  ConsistentQuotesInMultiline: true

Style/RedundantReturn:
  Enabled: false

Style/GuardClause:
  Enabled: false

Style/WordArray:
  EnforcedStyle: brackets

Style/SymbolArray:
  EnforcedStyle: brackets

Style/ClassAndModuleChildren:
  Enabled: false

Style/NumericPredicate:
  Enabled: false

Style/IfUnlessModifier:
  Enabled: false

Style/HashEachMethods:
  Enabled: false

Style/HashTransformKeys:
  Enabled: false

Style/HashTransformValues:
  Enabled: false

Style/NegatedIf:
  Enabled: false

Layout/HashAlignment:
  EnforcedHashRocketStyle: table
  Enabled: true

Lint/RaiseException:
  Enabled: true

Lint/StructNewOverride:
  Enabled: true
CODE
