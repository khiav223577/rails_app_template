# A Ruby static code analyzer and formatter, based on the community
# Ruby style guide. https://docs.rubocop.org
gem 'rubocop', require: false
gem 'rubocop-performance', require: false
gem 'rubocop-rails', require: false

file '.rubocop.yml', <<-CODE
require:
  - rubocop-performance
  - rubocop-rails

AllCops:
  DisabledByDefault: true
  Exclude:
    - bin/*
    - app/assets/**/*
    - app/javascript/**/*
    - spec/fixtures/**/*
    - db/migrate/*.rb
    - db/schema.rb
    - tmp/**/*
    - vendor/**/*
    - .git/**/*
    - node_modules/**/*
    - public/**/*
    - Gemfile
    - config.ru
    - Rakefile

#################### Lint ################################

Lint/AmbiguousOperator:
  Description: >-
    Checks for ambiguous operators in the first argument of a
    method invocation without parentheses.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parens-as-args'
  Enabled: true

Lint/AmbiguousRegexpLiteral:
  Description: >-
    Checks for ambiguous regexp literals in the first argument of
    a method invocation without parenthesis.
  Enabled: true

Lint/AssignmentInCondition:
  Description: "Don't use assignment in conditions."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#safe-assignment-in-condition'
  Enabled: true

Layout/BlockAlignment:
  Description: 'Align block ends correctly.'
  Enabled: true

Lint/CircularArgumentReference:
  Description: "Don't refer to the keyword argument in the default value."
  Enabled: true

Layout/ConditionPosition:
  Description: >-
    Checks for condition placed in a confusing position relative to
    the keyword.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#same-line-condition'
  Enabled: true

Lint/Debugger:
  Description: 'Check for debugger calls.'
  Enabled: true

Layout/DefEndAlignment:
  Description: 'Align ends corresponding to defs correctly.'
  Enabled: true

Lint/DeprecatedClassMethods:
  Description: 'Check for deprecated class method calls.'
  Enabled: true

Lint/DuplicateMethods:
  Description: 'Check for duplicate methods calls.'
  Enabled: true

Lint/EachWithObjectArgument:
  Description: 'Check for immutable argument given to each_with_object.'
  Enabled: true

Lint/ElseLayout:
  Description: 'Check for odd code arrangement in an else block.'
  Enabled: true

Lint/EmptyEnsure:
  Description: 'Checks for empty ensure block.'
  Enabled: true

Lint/EmptyInterpolation:
  Description: 'Checks for empty string interpolation.'
  Enabled: true

Layout/EndAlignment:
  Description: 'Align ends correctly.'
  Enabled: true

Lint/EnsureReturn:
  Description: 'Do not use return in an ensure block.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-return-ensure'
  Enabled: true

Security/Eval:
  Description: 'The use of eval represents a serious security risk.'
  Enabled: true

Lint/FormatParameterMismatch:
  Description: 'The number of parameters to format/sprint must match the fields.'
  Enabled: true

Lint/SuppressedException:
  Description: "Don't suppress exception."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#dont-hide-exceptions'
  Enabled: true

Lint/LiteralInInterpolation:
  Description: 'Checks for literals used in interpolation.'
  Enabled: true

Lint/Loop:
  Description: >-
    Use Kernel#loop with break rather than begin/end/until or
    begin/end/while for post-loop tests.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#loop-with-break'
  Enabled: true

Lint/NestedMethodDefinition:
  Description: 'Do not use nested method definitions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-methods'
  Enabled: true

Lint/NonLocalExitFromIterator:
  Description: 'Do not use return in iterator to cause non-local exit.'
  Enabled: true

Lint/ParenthesesAsGroupedExpression:
  Description: >-
    Checks for method calls with a space before the opening
    parenthesis.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parens-no-spaces'
  Enabled: true

Lint/RequireParentheses:
  Description: >-
    Use parentheses in the method call to avoid confusion
    about precedence.
  Enabled: true

Lint/RescueException:
  Description: 'Avoid rescuing the Exception class.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-blind-rescues'
  Enabled: true

Lint/ShadowingOuterLocalVariable:
  Description: >-
    Do not use the same name as outer local variable
    for block arguments or block local variables.
  Enabled: true

Lint/RedundantStringCoercion:
  Description: 'Checks for Object#to_s usage in string interpolation.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-to-s'
  Enabled: true

Lint/UnderscorePrefixedVariableName:
  Description: 'Do not use prefix `_` for a variable that is used.'
  Enabled: true

Lint/RedundantCopDisableDirective:
  Description: >-
    Checks for rubocop:disable comments that can be removed.
    Note: this cop is not disabled when disabling all cops.
    It must be explicitly disabled.
  Enabled: true

Lint/UnusedBlockArgument:
  Description: 'Checks for unused block arguments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#underscore-unused-vars'
  Enabled: true

Lint/UnusedMethodArgument:
  Description: 'Checks for unused method arguments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#underscore-unused-vars'
  Enabled: true

Lint/UnreachableCode:
  Description: 'Unreachable code.'
  Enabled: true

Lint/UselessAccessModifier:
  Description: 'Checks for useless access modifiers.'
  Enabled: true

Lint/UselessAssignment:
  Description: 'Checks for useless assignment to a local variable.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#underscore-unused-vars'
  Enabled: true

Lint/BinaryOperatorWithIdenticalOperands:
  Description: 'Checks for comparison of something with itself.'
  Enabled: true

Lint/UselessElseWithoutRescue:
  Description: 'Checks for useless `else` in `begin..end` without `rescue`.'
  Enabled: true

Lint/UselessSetterCall:
  Description: 'Checks for useless setter call to a local variable.'
  Enabled: true

Lint/Void:
  Description: 'Possible use of operator/literal/variable in void context.'
  Enabled: true

###################### Metrics ####################################

Metrics/AbcSize:
  Description: >-
    A calculated magnitude based on number of assignments,
    branches, and conditions.
  Reference: 'http://c2.com/cgi/wiki?AbcMetric'
  Enabled: true
  Max: 25

Metrics/BlockNesting:
  Description: 'Avoid excessive block nesting'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#three-is-the-number-thou-shalt-count'
  Enabled: true
  Max: 4

Metrics/ClassLength:
  Description: 'Avoid classes longer than 250 lines of code.'
  Enabled: true
  Max: 250

Metrics/CyclomaticComplexity:
  Description: >-
    A complexity metric that is strongly correlated to the number
    of test cases needed to validate a method.
  Enabled: true

Layout/LineLength:
  Description: 'Limit lines to 120 characters.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#80-character-limits'
  Max: 120
  Enabled: true
  Exclude:
    - 'config/locales/**'

Metrics/MethodLength:
  Description: 'Avoid methods longer than 30 lines of code.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#short-methods'
  Enabled: true
  Max: 30

Metrics/ModuleLength:
  Description: 'Avoid modules longer than 250 lines of code.'
  Enabled: true
  Max: 250

Metrics/ParameterLists:
  Description: 'Avoid parameter lists longer than three or four parameters.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#too-many-params'
  Enabled: true

Metrics/PerceivedComplexity:
  Description: >-
    A complexity metric geared towards measuring complexity for a
    human reader.
  Enabled: true

##################### Performance #############################

Performance/Count:
  Description: >-
    Use `count` instead of `select...size`, `reject...size`,
    `select...count`, `reject...count`, `select...length`,
    and `reject...length`.
  Enabled: true

Performance/Detect:
  Description: >-
    Use `detect` instead of `select.first`, `find_all.first`,
    `select.last`, and `find_all.last`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerabledetect-vs-enumerableselectfirst-code'
  Enabled: true

Performance/FlatMap:
  Description: >-
    Use `Enumerable#flat_map`
    instead of `Enumerable#map...Array#flatten(1)`
    or `Enumberable#collect..Array#flatten(1)`
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerablemaparrayflatten-vs-enumerableflat_map-code'
  Enabled: true
  EnabledForFlattenWithoutParams: false
  # If enabled, this cop will warn about usages of
  # `flatten` being called without any parameters.
  # This can be dangerous since `flat_map` will only flatten 1 level, and
  # `flatten` without any parameters can flatten multiple levels.

Performance/ReverseEach:
  Description: 'Use `reverse_each` instead of `reverse.each`.'
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerablereverseeach-vs-enumerablereverse_each-code'
  Enabled: true

Style/Sample:
  Description: >-
    Use `sample` instead of `shuffle.first`,
    `shuffle.last`, and `shuffle[Fixnum]`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#arrayshufflefirst-vs-arraysample-code'
  Enabled: true

Performance/Size:
  Description: >-
    Use `size` instead of `count` for counting
    the number of elements in `Array` and `Hash`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#arraycount-vs-arraysize-code'
  Enabled: true

Performance/StringReplacement:
  Description: >-
    Use `tr` instead of `gsub` when you are replacing the same
    number of characters. Use `delete` instead of `gsub` when
    you are deleting characters.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#stringgsub-vs-stringtr-code'
  Enabled: true

##################### Rails ##################################

Rails/ActionFilter:
  Description: 'Enforces consistent use of action filter methods.'
  Enabled: true

Rails/Date:
  Description: >-
    Checks the correct usage of date aware methods,
    such as Date.today, Date.current etc.
  Enabled: true

Rails/Delegate:
  Description: 'Prefer delegate method for delegations.'
  Enabled: true

Rails/FindBy:
  Description: 'Prefer find_by over where.first.'
  Enabled: true

Rails/FindEach:
  Description: 'Prefer all.find_each over all.find.'
  Enabled: true

Rails/HasAndBelongsToMany:
  Description: 'Prefer has_many :through to has_and_belongs_to_many.'
  Enabled: true

Rails/Output:
  Description: 'Checks for calls to puts, print, etc.'
  Enabled: true

Rails/ReadWriteAttribute:
  Description: >-
    Checks for read_attribute(:attr) and
    write_attribute(:attr, val).
  Enabled: true

Rails/ScopeArgs:
  Description: 'Checks the arguments of ActiveRecord scopes.'
  Enabled: true

Rails/TimeZone:
  Description: 'Checks the correct usage of time zone aware methods.'
  StyleGuide: 'https://github.com/bbatsov/rails-style-guide#time'
  Reference: 'http://danilenko.org/2012/7/6/rails_timezones'
  Enabled: false

Rails/Validation:
  Description: 'Use validates :attribute, hash of validations.'
  Enabled: true

################## Style #################################

Layout/AccessModifierIndentation:
  Description: Check indentation of private/protected visibility modifiers.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#indent-public-private-protected'
  Enabled: true

Naming/AccessorMethodName:
  Description: Check the naming of accessor methods for get_/set_.
  Enabled: false

Style/Alias:
  Description: 'Use alias_method instead of alias.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#alias-method'
  Enabled: true

Layout/ArrayAlignment:
  Description: >-
    Align the elements of an array literal if they span more than
    one line.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#align-multiline-arrays'
  Enabled: true

Layout/HashAlignment:
  Description: >-
    Align the elements of a hash literal if they span more than
    one line.
  EnforcedHashRocketStyle: table
  Enabled: true

Layout/ParameterAlignment:
  Description: >-
    Align the parameters of a method call if they span more
    than one line.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-double-indent'
  Enabled: true

Style/AndOr:
  Description: 'Use &&/|| instead of and/or.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-and-or-or'
  Enabled: false

Style/ArrayJoin:
  Description: 'Use Array#join instead of Array#*.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#array-join'
  Enabled: true

Style/AsciiComments:
  Description: 'Use only ascii symbols in comments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#english-comments'
  Enabled: false

Naming/AsciiIdentifiers:
  Description: 'Use only ascii symbols in identifiers.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#english-identifiers'
  Enabled: true

Style/Attr:
  Description: 'Checks for uses of Module#attr.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#attr'
  Enabled: true

Style/BeginBlock:
  Description: 'Avoid the use of BEGIN blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-BEGIN-blocks'
  Enabled: true

Style/BarePercentLiterals:
  Description: 'Checks if usage of %() or %Q() matches configuration.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-q-shorthand'
  Enabled: true

Style/BlockComments:
  Description: 'Do not use block comments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-block-comments'
  Enabled: true

Layout/BlockEndNewline:
  Description: 'Put end statement of multiline block on its own line.'
  Enabled: true

Style/BlockDelimiters:
  Description: >-
    Avoid using {...} for multi-line blocks (multiline chaining is
    always ugly).
    Prefer {...} over do...end for single-line blocks.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#single-line-blocks'
  Enabled: true

Style/CaseEquality:
  Description: 'Avoid explicit use of the case equality operator(===).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-case-equality'
  Enabled: true

Layout/CaseIndentation:
  Description: 'Indentation of when in a case/when/[else/]end.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#indent-when-to-case'
  Enabled: true

Style/CharacterLiteral:
  Description: 'Checks for uses of character literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-character-literals'
  Enabled: true

Naming/ClassAndModuleCamelCase:
  Description: 'Use CamelCase for classes and modules.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#camelcase-classes'
  Enabled: true

Style/ClassAndModuleChildren:
  Description: 'Checks style of children classes and modules.'
  Enabled: false

Style/ClassCheck:
  Description: 'Enforces consistent use of `Object#is_a?` or `Object#kind_of?`.'
  Enabled: true

Style/ClassMethods:
  Description: 'Use self when defining module/class methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#def-self-class-methods'
  Enabled: true

Style/ClassVars:
  Description: 'Avoid the use of class variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-class-vars'
  Enabled: true

Layout/ClosingParenthesisIndentation:
  Description: 'Checks the indentation of hanging closing parentheses.'
  Enabled: true

Style/ColonMethodCall:
  Description: 'Do not use :: for method call.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#double-colons'
  Enabled: true

Style/CommandLiteral:
  Description: 'Use `` or %x around command literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-x'
  Enabled: true

Style/CommentAnnotation:
  Description: 'Checks formatting of annotation comments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#annotate-keywords'
  Enabled: true

Layout/CommentIndentation:
  Description: 'Indentation of comments.'
  Enabled: true

Naming/ConstantName:
  Description: 'Constants should use SCREAMING_SNAKE_CASE.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#screaming-snake-case'
  Enabled: true

Style/DefWithParentheses:
  Description: 'Use def with parentheses when there are arguments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#method-parens'
  Enabled: true

Style/PreferredHashMethods:
  Description: 'Checks for use of deprecated Hash methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#hash-key'
  Enabled: true

Style/Documentation:
  Description: 'Document classes and non-namespace modules.'
  Enabled: false

Layout/DotPosition:
  Description: 'Checks the position of the dot in multi-line method calls.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#consistent-multi-line-chains'
  Enabled: true

Style/DoubleNegation:
  Description: 'Checks for uses of double negation (!!).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-bang-bang'
  Enabled: true

Style/EachWithObject:
  Description: 'Prefer `each_with_object` over `inject` or `reduce`.'
  Enabled: true

Layout/ElseAlignment:
  Description: 'Align elses and elsifs correctly.'
  Enabled: true

Style/EmptyElse:
  Description: 'Avoid empty else-clauses.'
  Enabled: true

Layout/EmptyLineBetweenDefs:
  Description: 'Use empty lines between defs.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#empty-lines-between-methods'
  Enabled: true

Layout/EmptyLines:
  Description: "Don't use several empty lines in a row."
  Enabled: true

Layout/EmptyLinesAroundAccessModifier:
  Description: "Keep blank lines around access modifiers."
  Enabled: true

Layout/EmptyLinesAroundBlockBody:
  Description: "Keeps track of empty lines around block bodies."
  Enabled: true

Layout/EmptyLinesAroundClassBody:
  Description: "Keeps track of empty lines around class bodies."
  Enabled: true

Layout/EmptyLinesAroundModuleBody:
  Description: "Keeps track of empty lines around module bodies."
  Enabled: true

Layout/EmptyLinesAroundMethodBody:
  Description: "Keeps track of empty lines around method bodies."
  Enabled: true

Style/EmptyLiteral:
  Description: 'Prefer literals to Array.new/Hash.new/String.new.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#literal-array-hash'
  Enabled: true

Style/EndBlock:
  Description: 'Avoid the use of END blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-END-blocks'
  Enabled: true

Layout/EndOfLine:
  Description: 'Use Unix-style line endings.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#crlf'
  Enabled: false

Style/EvenOdd:
  Description: 'Favor the use of Fixnum#even? && Fixnum#odd?'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#predicate-methods'
  Enabled: true

Layout/ExtraSpacing:
  Description: 'Do not use unnecessary spacing.'
  Enabled: true

Naming/FileName:
  Description: 'Use snake_case for source file names.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#snake-case-files'
  Enabled: true

Layout/InitialIndentation:
  Description: >-
    Checks the indentation of the first non-blank non-comment line in a file.
  Enabled: true

Layout/FirstArgumentIndentation:
  Description: 'Checks the indentation of the first parameter in a method call.'
  Enabled: true

Lint/FlipFlop:
  Description: 'Checks for flip flops'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-flip-flops'
  Enabled: false

Style/For:
  Description: 'Checks use of for or each in multiline loops.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-for-loops'
  Enabled: true

Style/FormatString:
  Description: 'Enforce the use of Kernel#sprintf, Kernel#format or String#%.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#sprintf'
  EnforcedStyle: percent
  Enabled: true

Style/FormatStringToken:
  Enabled: false

Style/GlobalVars:
  Description: 'Do not introduce global variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#instance-vars'
  Reference: 'http://www.zenspider.com/Languages/Ruby/QuickRef.html'
  Enabled: true

Style/GuardClause:
  Description: 'Check for conditionals that can be replaced with guard clauses'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-conditionals'
  Enabled: true

Style/HashSyntax:
  Description: >-
    Prefer Ruby 1.9 hash syntax { a: 1, b: 2 } over 1.8 syntax
    { :a => 1, :b => 2 }.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#hash-literals'
  Enabled: true

Style/IfUnlessModifier:
  Description: >-
    Favor modifier if/unless usage when you have a
    single-line body.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#if-as-a-modifier'
  Enabled: true

Style/IfWithSemicolon:
  Description: 'Do not use if x; .... Use the ternary operator instead.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-semicolon-ifs'
  Enabled: true

Layout/IndentationConsistency:
  Description: 'Keep indentation straight.'
  Enabled: true

Layout/IndentationWidth:
  Description: 'Use 2 spaces for indentation.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-indentation'
  Enabled: true

Layout/FirstArrayElementIndentation:
  Description: >-
    Checks the indentation of the first element in an array
    literal.
  EnforcedStyle: consistent
  Enabled: true

Layout/FirstHashElementIndentation:
  Description: 'Checks the indentation of the first key in a hash literal.'
  EnforcedStyle: consistent
  Enabled: true

Style/InfiniteLoop:
  Description: 'Use Kernel#loop for infinite loops.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#infinite-loop'
  Enabled: true

Style/Lambda:
  Description: 'Use the new lambda literal syntax for single-line blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#lambda-multi-line'
  Enabled: true

Style/LambdaCall:
  Description: 'Use lambda.call(...) instead of lambda.(...).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#proc-call'
  Enabled: true

Layout/LeadingCommentSpace:
  Description: 'Comments should start with a space.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#hash-space'
  Enabled: true

Style/LineEndConcatenation:
  Description: >-
    Use \ instead of + or << to concatenate two string literals at
    line end.
  Enabled: true

Style/MethodCallWithoutArgsParentheses:
  Description: 'Do not use parentheses for method calls with no arguments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-args-no-parens'
  Enabled: true

Style/MethodDefParentheses:
  Description: >-
    Checks if the method definitions have or don't have
    parentheses.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#method-parens'
  Enabled: true

Naming/MethodName:
  Description: 'Use the configured style when naming methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#snake-case-symbols-methods-vars'
  Enabled: true

Style/ModuleFunction:
  Description: 'Checks for usage of `extend self` in modules.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#module-function'
  Enabled: true

Style/MultilineBlockChain:
  Description: 'Avoid multi-line chains of blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#single-line-blocks'
  Enabled: true

Layout/MultilineBlockLayout:
  Description: 'Ensures newlines after multiline block do statements.'
  Enabled: true

Style/MultilineIfThen:
  Description: 'Do not use then for multi-line if/unless.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-then'
  Enabled: true

Layout/MultilineOperationIndentation:
  Description: >-
    Checks indentation of binary operations that span more than
    one line.
  Enabled: true

Style/MultilineTernaryOperator:
  Description: >-
    Avoid multi-line ?: (the ternary operator);
    use if/unless instead.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-multiline-ternary'
  Enabled: true

Style/NegatedIf:
  Description: >-
    Favor unless over if for negative conditions
    (or control flow or).
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#unless-for-negatives'
  Enabled: false

Style/NegatedWhile:
  Description: 'Favor until over while for negative conditions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#until-for-negatives'
  Enabled: false

Style/NestedTernaryOperator:
  Description: 'Use one expression per branch in a ternary operator.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-ternary'
  Enabled: true

Style/Next:
  Description: 'Use `next` to skip iteration instead of a condition at the end.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-conditionals'
  Enabled: true

Style/NilComparison:
  Description: 'Prefer x.nil? to x == nil.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#predicate-methods'
  EnforcedStyle: comparison
  Enabled: true

Style/NonNilCheck:
  # With `IncludeSemanticChanges` set to `true`, this cop reports offenses for
  # `!x.nil?` and autocorrects that and `x != nil` to solely `x`, which is
  # **usually** OK, but might change behavior.
  #
  # With `IncludeSemanticChanges` set to `false`, this cop does not report
  # offenses for `!x.nil?` and does no changes that might change behavior.
  Description: 'Checks for redundant nil checks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-non-nil-checks'
  IncludeSemanticChanges: true
  Enabled: false

Style/Not:
  Description: 'Use ! instead of not.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#bang-not-not'
  Enabled: false

Style/NumericLiterals:
  Description: >-
    Add underscores to large numeric literals to improve their
    readability.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#underscores-in-numerics'
  Enabled: true

Style/OneLineConditional:
  Description: >-
    Favor the ternary operator(?:) over
    if/then/else/end constructs.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#ternary-operator'
  Enabled: true

Naming/BinaryOperatorParameterName:
  Description: 'When defining binary operators, name the argument other.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#other-arg'
  Enabled: true

Style/OptionalArguments:
  Description: >-
    Checks for optional arguments that do not appear at the end
    of the argument list
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#optional-arguments'
  Enabled: true

Style/ParallelAssignment:
  Description: >-
    Check for simple usages of parallel assignment.
    It will only warn when the number of variables
    matches on both sides of the assignment.
    This also provides performance benefits
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parallel-assignment'
  Enabled: true

Style/ParenthesesAroundCondition:
  Description: >-
    Don't use parentheses around the condition of an
    if/unless/while.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-parens-if'
  Enabled: true

Style/PercentLiteralDelimiters:
  Description: 'Use `%`-literal delimiters consistently'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-literal-braces'
  Enabled: true

Style/PercentQLiterals:
  Description: 'Checks if uses of %Q/%q match the configured preference.'
  Enabled: true

Style/PerlBackrefs:
  Description: 'Avoid Perl-style regex back references.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-perl-regexp-last-matchers'
  Enabled: false

Naming/PredicateName:
  Description: 'Check the names of predicate methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#bool-methods-qmark'
  Enabled: true

Style/Proc:
  Description: 'Use proc instead of Proc.new.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#proc'
  Enabled: true

Style/RaiseArgs:
  Description: 'Checks the arguments passed to raise/fail.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#exception-class-messages'
  Enabled: true

Style/RedundantBegin:
  Description: "Don't use begin blocks when they are not needed."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#begin-implicit'
  Enabled: true

Style/RedundantException:
  Description: "Checks for an obsolete RuntimeException argument in raise/fail."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-explicit-runtimeerror'
  Enabled: true

Style/RedundantReturn:
  Description: "Don't use return where it's not required."
  # When `true` allows code like `return x, y`.
  AllowMultipleReturnValues: false
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-explicit-return'
  Enabled: false

Style/RedundantSelf:
  Description: "Don't use self where it's not needed."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-self-unless-required'
  Enabled: true

Style/RegexpLiteral:
  Description: 'Use / or %r around regular expressions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-r'
  EnforcedStyle: slashes
  AllowInnerSlashes: false
  Enabled: true

Layout/RescueEnsureAlignment:
  Description: 'Align rescues and ensures correctly.'
  Enabled: true

Style/RescueModifier:
  Description: 'Avoid using rescue in its modifier form.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-rescue-modifiers'
  Enabled: true

Style/SelfAssignment:
  Description: >-
    Checks for places where self-assignment shorthand should have
    been used.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#self-assignment'
  Enabled: true

Style/Semicolon:
  Description: "Don't use semicolons to terminate expressions."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-semicolon'
  Enabled: true

Style/SignalException:
  Description: 'Checks for proper usage of fail and raise.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#fail-method'
  EnforcedStyle: semantic
  Enabled: true

Style/SingleLineBlockParams:
  Description: 'Enforces the names of some block params.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#reduce-blocks'
  Methods:
    - reduce:
        - sum
        - v
    - inject:
        - sum
        - v
  Enabled: true

Style/SingleLineMethods:
  Description: 'Avoid single-line methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-single-line-methods'
  Enabled: true

Layout/SpaceBeforeFirstArg:
  Description: >-
    Checks that exactly one space is used between a method name
    and the first argument for method calls without parentheses.
  Enabled: true

Layout/SpaceAfterColon:
  Description: 'Use spaces after colons.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-operators'
  Enabled: true

Layout/SpaceAfterComma:
  Description: 'Use spaces after commas.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-operators'
  Enabled: true

Layout/SpaceAroundKeyword:
  Description: 'Use spaces around keywords.'
  Enabled: true

Layout/SpaceAfterMethodName:
  Description: >-
    Do not put a space between a method name and the opening
    parenthesis in a method definition.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parens-no-spaces'
  Enabled: true

Layout/SpaceAfterNot:
  Description: Tracks redundant space after the ! operator.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-space-bang'
  Enabled: true

Layout/SpaceAfterSemicolon:
  Description: 'Use spaces after semicolons.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-operators'
  Enabled: true

Layout/SpaceBeforeBlockBraces:
  Description: >-
    Checks that the left block brace has or doesn't have space
    before it.
  EnforcedStyle: no_space
  Enabled: true

Layout/SpaceBeforeComma:
  Description: 'No spaces before commas.'
  Enabled: true

Layout/SpaceBeforeComment:
  Description: >-
    Checks for missing space between code and a comment on the
    same line.
  Enabled: true

Layout/SpaceBeforeSemicolon:
  Description: 'No spaces before semicolons.'
  Enabled: false

Layout/SpaceInsideBlockBraces:
  Description: >-
    Checks that block braces have or don't have surrounding space.
    For blocks taking parameters, checks that the left brace has
    or doesn't have trailing space.
  SpaceBeforeBlockParameters: false
  Enabled: true

Layout/SpaceAroundBlockParameters:
  Description: 'Checks the spacing inside and after block parameters pipes.'
  Enabled: true

Layout/SpaceAroundEqualsInParameterDefault:
  Description: >-
    Checks that the equals signs in parameter default assignments
    have or don't have surrounding space depending on
    configuration.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-around-equals'
  Enabled: true

Layout/SpaceAroundOperators:
  Description: 'Use a single space around operators.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-operators'
  Enabled: true

Layout/SpaceInsideArrayLiteralBrackets:
  Description: 'Checks the spacing inside array literal brackets.'
  Enabled: true
  EnforcedStyle: no_space
  SupportedStyles:
    - space
    - no_space
    # 'compact' normally requires a space inside the brackets, with the exception
    # that successive left brackets or right brackets are collapsed together
    - compact
  EnforcedStyleForEmptyBrackets: no_space
  SupportedStylesForEmptyBrackets:
    - space
    - no_space

Layout/SpaceInsideReferenceBrackets:
  Description: 'Checks the spacing inside referential brackets.'
  Enabled: true
  EnforcedStyle: no_space
  SupportedStyles:
    - space
    - no_space
  EnforcedStyleForEmptyBrackets: no_space
  SupportedStylesForEmptyBrackets:
    - space
    - no_space

Layout/SpaceInsideHashLiteralBraces:
  Description: "Use spaces inside hash literal braces - or don't."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-operators'
  #  SupportedStyles:
  #      - space
  #      - no_space
  #      # 'compact' normally requires a space inside hash braces, with the exception
  #      # that successive left braces or right braces are collapsed together
  #      - compact
  EnforcedStyle: compact
  Enabled: true

Layout/SpaceInsideParens:
  Description: 'No spaces after ( or before ).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-spaces-braces'
  Enabled: true

Layout/SpaceInsideRangeLiteral:
  Description: 'No spaces inside range literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-space-inside-range-literals'
  Enabled: true

Layout/SpaceInsideStringInterpolation:
  Description: 'Checks for padding/surrounding spaces inside string interpolation.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#string-interpolation'
  Enabled: true

Style/SpecialGlobalVars:
  Description: 'Avoid Perl-style global variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-cryptic-perlisms'
  Enabled: true

Style/StringLiterals:
  Description: 'Checks if uses of quotes match the configured preference.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#consistent-string-literals'
  Enabled: true

Style/StringLiteralsInInterpolation:
  Description: >-
    Checks if uses of quotes inside expressions in interpolated
    strings match the configured preference.
  Enabled: true

Style/StructInheritance:
  Description: 'Checks for inheritance from Struct.new.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-extend-struct-new'
  Enabled: true

Style/SymbolLiteral:
  Description: 'Use plain symbols instead of string symbols when possible.'
  Enabled: true

Style/SymbolProc:
  Description: 'Use symbols as procs instead of blocks when possible.'
  Enabled: true

Layout/IndentationStyle:
  Description: 'No hard tabs.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#spaces-indentation'
  Enabled: true

Layout/TrailingEmptyLines:
  Description: 'Checks trailing blank lines and final newline.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#newline-eof'
  Enabled: true

Style/TrailingCommaInArguments:
  # If `comma`, the cop requires a comma after the last argument, but only for
  # parenthesized method calls where each argument is on its own line.
  # If `comma_for_multiple_args`, the cop behaves like `comma` except when
  # there's only one argument, in which case it requires that there's no
  # trailing comma.
  # If `consistent_comma`, the cop requires a comma after the last argument,
  # for all parenthesized method calls with arguments.
  Description: 'Checks for trailing comma in parameter lists.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-params-comma'
  EnforcedStyleForMultiline: comma
  Enabled: true

Style/TrailingCommaInArrayLiteral:
  Description: 'Checks for trailing comma in array literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas'
  EnforcedStyleForMultiline: comma
  SupportedStylesForMultiline:
    - comma
    - consistent_comma
    - no_comma
  Enabled: true

Style/TrailingCommaInHashLiteral:
  Description: 'Checks for trailing comma in hash literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas'
  EnforcedStyleForMultiline: comma
  SupportedStylesForMultiline:
    - comma
    - consistent_comma
    - no_comma
  Enabled: true

Layout/TrailingWhitespace:
  Description: 'Avoid trailing whitespace.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-whitespace'
  Enabled: true

Style/TrivialAccessors:
  Description: 'Prefer attr_* methods to trivial readers/writers.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#attr_family'
  Enabled: true

Style/UnlessElse:
  Description: >-
    Do not use unless with else. Rewrite these with the positive
    case first.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-else-with-unless'
  Enabled: true

Style/RedundantCapitalW:
  Description: 'Checks for %W when interpolation is not needed.'
  Enabled: true

Style/RedundantPercentQ:
  Description: 'Checks for %q/%Q when single quotes or double quotes would do.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-q'
  Enabled: true

Style/TrailingUnderscoreVariable:
  Description: >-
    Checks for the usage of unneeded trailing underscores at the
    end of parallel variable assignment.
  Enabled: true

Style/VariableInterpolation:
  Description: >-
    Don't interpolate global, instance and class variables
    directly in strings.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#curlies-interpolate'
  Enabled: true

Naming/VariableName:
  Description: 'Use the configured style when naming variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#snake-case-symbols-methods-vars'
  Enabled: true

Style/WhenThen:
  Description: 'Use when x then ... for one-line cases.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#one-line-cases'
  Enabled: false

Style/WhileUntilDo:
  Description: 'Checks for redundant do after while or until.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-multiline-while-do'
  Enabled: true

Style/WhileUntilModifier:
  Description: >-
    Favor modifier while/until usage when you have a
    single-line body.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#while-as-a-modifier'
  Enabled: true

Style/WordArray:
  Description: 'Use %w or %W for arrays of words.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-w'
  Enabled: true
CODE
