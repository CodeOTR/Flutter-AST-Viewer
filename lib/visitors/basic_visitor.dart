import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class BasicVisitor extends RecursiveAstVisitor {
  Map<String, String> astMap = {};

  @override
  visitBlock(Block node) {
    printGreen('Block: $node');
    return super.visitBlock(node);
  }

  @override
  visitMethodInvocation(MethodInvocation node) {
    printYellow('Method Invocation: $node');
    return super.visitMethodInvocation(node);
  }

  @override
  visitFunctionDeclaration(FunctionDeclaration node) {
    printRed('Function Declaration: $node');
    return super.visitFunctionDeclaration(node);
  }

  @override
  visitClassDeclaration(ClassDeclaration node) {
    printBlue('Class Declaration: $node');
    return super.visitClassDeclaration(node);
  }

  @override
  visitMethodDeclaration(MethodDeclaration node) {
    printMagenta('Method Declaration: $node');
    return super.visitMethodDeclaration(node);
  }

  @override
  visitBlockFunctionBody(BlockFunctionBody node) {
    printCyan('Block Function Body: $node');
    return super.visitBlockFunctionBody(node);
  }

  @override
  visitReturnStatement(ReturnStatement node) {
    printWhite('Return Statement: $node');
    return super.visitReturnStatement(node);
  }

  @override
  visitTypeParameter(TypeParameter node) {
    printBlack('Type Parameter: $node');
    return super.visitTypeParameter(node);
  }

  @override
  visitConstantPattern(ConstantPattern node) {
    printYellow('Constant Pattern: $node');
    return super.visitConstantPattern(node);
  }

  @override
  visitAnnotation(Annotation node) {
    printRed('Annotation: $node');
    return super.visitAnnotation(node);
  }

  @override
  visitAdjacentStrings(AdjacentStrings node) {
    printBlue('Adjacent Strings: $node');
    return super.visitAdjacentStrings(node);
  }

  @override
  visitArgumentList(ArgumentList node) {
    printMagenta('Argument List: $node');
    return super.visitArgumentList(node);
  }

  @override
  visitAsExpression(AsExpression node) {
    printCyan('As Expression: $node');
    return super.visitAsExpression(node);
  }

  @override
  visitIfElement(IfElement node) {
    printWhite('If Element: $node');
    return super.visitIfElement(node);
  }

  @override
  visitIfStatement(IfStatement node) {
    printBlack('If Statement: $node');
    return super.visitIfStatement(node);
  }

  @override
  visitAssertInitializer(AssertInitializer node) {
    printYellow('Assert Initializer: $node');
    return super.visitAssertInitializer(node);
  }

  @override
  visitAssertStatement(AssertStatement node) {
    printRed('Assert Statement: $node');
    return super.visitAssertStatement(node);
  }

  @override
  visitAssignedVariablePattern(AssignedVariablePattern node) {
    printBlue('Assigned Variable Pattern: $node');
    return super.visitAssignedVariablePattern(node);
  }

  @override
  visitAssignmentExpression(AssignmentExpression node) {
    printMagenta('Assignment Expression: $node');
    return super.visitAssignmentExpression(node);
  }

  @override
  visitImplementsClause(ImplementsClause node) {
    printCyan('Implements Clause: $node');
    return super.visitImplementsClause(node);
  }

  @override
  visitAugmentationImportDirective(AugmentationImportDirective node) {
    printWhite('Augmentation Import Directive: $node');
    return super.visitAugmentationImportDirective(node);
  }

  @override
  visitAwaitExpression(AwaitExpression node) {
    printBlack('Await Expression: $node');
    return super.visitAwaitExpression(node);
  }

  @override
  visitBinaryExpression(BinaryExpression node) {
    printYellow('Binary Expression: $node');
    return super.visitBinaryExpression(node);
  }

  @override
  visitBooleanLiteral(BooleanLiteral node) {
    printRed('Boolean Literal: $node');
    return super.visitBooleanLiteral(node);
  }

  @override
  visitBreakStatement(BreakStatement node) {
    printBlue('Break Statement: $node');
    return super.visitBreakStatement(node);
  }

  @override
  visitCascadeExpression(CascadeExpression node) {
    printMagenta('Cascade Expression: $node');
    return super.visitCascadeExpression(node);
  }

  @override
  visitCaseClause(CaseClause node) {
    printCyan('Case Clause: $node');
    return super.visitCaseClause(node);
  }

  @override
  visitCastPattern(CastPattern node) {
    printWhite('Cast Pattern: $node');
    return super.visitCastPattern(node);
  }

  @override
  visitImplicitCallReference(ImplicitCallReference node) {
    printBlack('Implicit Call Reference: $node');
    return super.visitImplicitCallReference(node);
  }

  @override
  visitCatchClause(CatchClause node) {
    printYellow('Catch Clause: $node');
    return super.visitCatchClause(node);
  }

  @override
  visitCatchClauseParameter(CatchClauseParameter node) {
    printRed('Catch Clause Parameter: $node');
    return super.visitCatchClauseParameter(node);
  }

  @override
  visitClassTypeAlias(ClassTypeAlias node) {
    printBlue('Class Type Alias: $node');
    return super.visitClassTypeAlias(node);
  }

  @override
  visitComment(Comment node) {
    printMagenta('Comment: $node');
    return super.visitComment(node);
  }

  @override
  visitCommentReference(CommentReference node) {
    printCyan('Comment Reference: $node');
    return super.visitCommentReference(node);
  }

  @override
  visitCompilationUnit(CompilationUnit node) {
    printWhite('Compilation Unit: $node');
    return super.visitCompilationUnit(node);
  }

  @override
  visitConditionalExpression(ConditionalExpression node) {
    printBlack('Conditional Expression: $node');
    return super.visitConditionalExpression(node);
  }

  @override
  visitConfiguration(Configuration node) {
    printYellow('Configuration: $node');
    return super.visitConfiguration(node);
  }

  @override
  visitConstructorDeclaration(ConstructorDeclaration node) {
    printRed('Constructor Declaration: $node');
    return super.visitConstructorDeclaration(node);
  }

  @override
  visitConstructorFieldInitializer(ConstructorFieldInitializer node) {
    printBlue('Constructor Field Initializer: $node');
    return super.visitConstructorFieldInitializer(node);
  }

  @override
  visitConstructorName(ConstructorName node) {
    printMagenta('Constructor Name: $node');
    return super.visitConstructorName(node);
  }

  @override
  visitConstructorReference(ConstructorReference node) {
    printCyan('Constructor Reference: $node');
    return super.visitConstructorReference(node);
  }

  @override
  visitConstructorSelector(ConstructorSelector node) {
    printWhite('Constructor Selector: $node');
    return super.visitConstructorSelector(node);
  }

  @override
  visitContinueStatement(ContinueStatement node) {
    printBlack('Continue Statement: $node');
    return super.visitContinueStatement(node);
  }

  @override
  visitDeclaredIdentifier(DeclaredIdentifier node) {
    printYellow('Declared Identifier: $node');
    return super.visitDeclaredIdentifier(node);
  }

  @override
  visitDeclaredVariablePattern(DeclaredVariablePattern node) {
    printRed('Declared Variable Pattern: $node');
    return super.visitDeclaredVariablePattern(node);
  }

  @override
  visitDefaultFormalParameter(DefaultFormalParameter node) {
    printBlue('Default Formal Parameter: $node');
    return super.visitDefaultFormalParameter(node);
  }

  @override
  visitDoStatement(DoStatement node) {
    printMagenta('Do Statement: $node');
    return super.visitDoStatement(node);
  }

  @override
  visitDottedName(DottedName node) {
    printCyan('Dotted Name: $node');
    return super.visitDottedName(node);
  }

  @override
  visitDoubleLiteral(DoubleLiteral node) {
    printWhite('Double Literal: $node');
    return super.visitDoubleLiteral(node);
  }

  @override
  visitEmptyFunctionBody(EmptyFunctionBody node) {
    printBlack('Empty Function Body: $node');
    return super.visitEmptyFunctionBody(node);
  }

  @override
  visitEmptyStatement(EmptyStatement node) {
    printYellow('Empty Statement: $node');
    return super.visitEmptyStatement(node);
  }

  @override
  visitEnumConstantArguments(EnumConstantArguments node) {
    printRed('Enum Constant Arguments: $node');
    return super.visitEnumConstantArguments(node);
  }

  @override
  visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    printBlue('Enum Constant Declaration: $node');
    return super.visitEnumConstantDeclaration(node);
  }

  @override
  visitEnumDeclaration(EnumDeclaration node) {
    printMagenta('Enum Declaration: $node');
    return super.visitEnumDeclaration(node);
  }

  @override
  visitExportDirective(ExportDirective node) {
    printCyan('Export Directive: $node');
    return super.visitExportDirective(node);
  }

  @override
  visitExpressionFunctionBody(ExpressionFunctionBody node) {
    printWhite('Expression Function Body: $node');
    return super.visitExpressionFunctionBody(node);
  }

  @override
  visitExpressionStatement(ExpressionStatement node) {
    printBlack('Expression Statement: $node');
    return super.visitExpressionStatement(node);
  }

  @override
  visitExtendsClause(ExtendsClause node) {
    printYellow('Extends Clause: $node');
    return super.visitExtendsClause(node);
  }

  @override
  visitExtensionDeclaration(ExtensionDeclaration node) {
    printRed('Extension Declaration: $node');
    return super.visitExtensionDeclaration(node);
  }

  @override
  visitExtensionOverride(ExtensionOverride node) {
    printBlue('Extension Override: $node');
    return super.visitExtensionOverride(node);
  }

  @override
  visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) {
    printMagenta('Extension Type Declaration: $node');
    return super.visitExtensionTypeDeclaration(node);
  }

  @override
  visitFieldDeclaration(FieldDeclaration node) {
    printCyan('Field Declaration: $node');
    return super.visitFieldDeclaration(node);
  }

  @override
  visitImportDirective(ImportDirective node) {
    printWhite('Import Directive: $node');
    return super.visitImportDirective(node);
  }

  @override
  visitFieldFormalParameter(FieldFormalParameter node) {
    printBlack('Field Formal Parameter: $node');
    return super.visitFieldFormalParameter(node);
  }

  @override
  visitScriptTag(ScriptTag node) {
    printYellow('Script Tag: $node');
    return super.visitScriptTag(node);
  }

  @override
  visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) {
    printRed('For Each Parts With Declaration: $node');
    return super.visitForEachPartsWithDeclaration(node);
  }

  @override
  visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) {
    printBlue('For Each Parts With Identifier: $node');
    return super.visitForEachPartsWithIdentifier(node);
  }

  @override
  visitForEachPartsWithPattern(ForEachPartsWithPattern node) {
    printMagenta('For Each Parts With Pattern: $node');
    return super.visitForEachPartsWithPattern(node);
  }

  @override
  visitForElement(ForElement node) {
    printCyan('For Element: $node');
    return super.visitForElement(node);
  }

  @override
  visitForPartsWithDeclarations(ForPartsWithDeclarations node) {
    printWhite('For Parts With Declarations: $node');
    return super.visitForPartsWithDeclarations(node);
  }

  @override
  visitImportPrefixReference(ImportPrefixReference node) {
    printBlack('Import Prefix Reference: $node');
    return super.visitImportPrefixReference(node);
  }

  @override
  visitForPartsWithExpression(ForPartsWithExpression node) {
    printYellow('For Parts With Expression: $node');
    return super.visitForPartsWithExpression(node);
  }

  @override
  visitForPartsWithPattern(ForPartsWithPattern node) {
    printRed('For Parts With Pattern: $node');
    return super.visitForPartsWithPattern(node);
  }

  @override
  visitForStatement(ForStatement node) {
    printBlue('For Statement: $node');
    return super.visitForStatement(node);
  }

  @override
  visitFormalParameterList(FormalParameterList node) {
    printMagenta('Formal Parameter List: $node');
    return super.visitFormalParameterList(node);
  }

  @override
  visitIndexExpression(IndexExpression node) {
    printCyan('Index Expression: $node');
    return super.visitIndexExpression(node);
  }

  @override
  visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    printWhite('Function Declaration Statement: $node');
    return super.visitFunctionDeclarationStatement(node);
  }

  @override
  visitFunctionExpression(FunctionExpression node) {
    printBlack('Function Expression: $node');
    return super.visitFunctionExpression(node);
  }

  @override
  visitFunctionExpressionInvocation(FunctionExpressionInvocation node) {
    printYellow('Function Expression Invocation: $node');
    return super.visitFunctionExpressionInvocation(node);
  }

  @override
  visitFunctionReference(FunctionReference node) {
    printRed('Function Reference: $node');
    return super.visitFunctionReference(node);
  }

  @override
  visitFunctionTypeAlias(FunctionTypeAlias node) {
    printBlue('Function Type Alias: $node');
    return super.visitFunctionTypeAlias(node);
  }

  @override
  visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
    printMagenta('Function Typed Formal Parameter: $node');
    return super.visitFunctionTypedFormalParameter(node);
  }

  @override
  visitGenericFunctionType(GenericFunctionType node) {
    printCyan('Generic Function Type: $node');
    return super.visitGenericFunctionType(node);
  }

  @override
  visitGenericTypeAlias(GenericTypeAlias node) {
    printWhite('Generic Type Alias: $node');
    return super.visitGenericTypeAlias(node);
  }

  @override
  visitGuardedPattern(GuardedPattern node) {
    printBlack('Guarded Pattern: $node');
    return super.visitGuardedPattern(node);
  }

  @override
  visitHideCombinator(HideCombinator node) {
    printYellow('Hide Combinator: $node');
    return super.visitHideCombinator(node);
  }

  @override
  visitInstanceCreationExpression(InstanceCreationExpression node) {
    printRed('Instance Creation Expression: $node');
    return super.visitInstanceCreationExpression(node);
  }

  @override
  visitIntegerLiteral(IntegerLiteral node) {
    printBlue('Integer Literal: $node');
    return super.visitIntegerLiteral(node);
  }

  @override
  visitInterpolationExpression(InterpolationExpression node) {
    printMagenta('Interpolation Expression: $node');
    return super.visitInterpolationExpression(node);
  }

  @override
  visitInterpolationString(InterpolationString node) {
    printCyan('Interpolation String: $node');
    return super.visitInterpolationString(node);
  }

  @override
  visitIsExpression(IsExpression node) {
    printWhite('Is Expression: $node');
    return super.visitIsExpression(node);
  }

  @override
  visitLabel(Label node) {
    printBlack('Label: $node');
    return super.visitLabel(node);
  }

  @override
  visitLabeledStatement(LabeledStatement node) {
    printYellow('Labeled Statement: $node');
    return super.visitLabeledStatement(node);
  }

  @override
  visitLibraryAugmentationDirective(LibraryAugmentationDirective node) {
    printRed('Library Augmentation Directive: $node');
    return super.visitLibraryAugmentationDirective(node);
  }

  @override
  visitLibraryDirective(LibraryDirective node) {
    printBlue('Library Directive: $node');
    return super.visitLibraryDirective(node);
  }

  @override
  visitLibraryIdentifier(LibraryIdentifier node) {
    printMagenta('Library Identifier: $node');
    return super.visitLibraryIdentifier(node);
  }

  @override
  visitListLiteral(ListLiteral node) {
    printCyan('List Literal: $node');
    return super.visitListLiteral(node);
  }

  @override
  visitListPattern(ListPattern node) {
    printWhite('List Pattern: $node');
    return super.visitListPattern(node);
  }

  @override
  visitLogicalAndPattern(LogicalAndPattern node) {
    printBlack('Logical And Pattern: $node');
    return super.visitLogicalAndPattern(node);
  }

  @override
  visitLogicalOrPattern(LogicalOrPattern node) {
    printYellow('Logical Or Pattern: $node');
    return super.visitLogicalOrPattern(node);
  }

  @override
  visitMapLiteralEntry(MapLiteralEntry node) {
    printRed('Map Literal Entry: $node');
    return super.visitMapLiteralEntry(node);
  }

  @override
  visitMapPattern(MapPattern node) {
    printBlue('Map Pattern: $node');
    return super.visitMapPattern(node);
  }

  @override
  visitMapPatternEntry(MapPatternEntry node) {
    printMagenta('Map Pattern Entry: $node');
    return super.visitMapPatternEntry(node);
  }

  @override
  visitMixinDeclaration(MixinDeclaration node) {
    printCyan('Mixin Declaration: $node');
    return super.visitMixinDeclaration(node);
  }

  @override
  visitNamedExpression(NamedExpression node) {
    printWhite('Named Expression: $node');
    return super.visitNamedExpression(node);
  }

  @override
  visitNamedType(NamedType node) {
    printBlack('Named Type: $node');
    return super.visitNamedType(node);
  }

  @override
  visitNativeClause(NativeClause node) {
    printYellow('Native Clause: $node');
    return super.visitNativeClause(node);
  }

  @override
  visitNativeFunctionBody(NativeFunctionBody node) {
    printRed('Native Function Body: $node');
    return super.visitNativeFunctionBody(node);
  }

  @override
  visitNullAssertPattern(NullAssertPattern node) {
    printBlue('Null Assert Pattern: $node');
    return super.visitNullAssertPattern(node);
  }

  @override
  visitNullCheckPattern(NullCheckPattern node) {
    printMagenta('Null Check Pattern: $node');
    return super.visitNullCheckPattern(node);
  }

  @override
  visitNullLiteral(NullLiteral node) {
    printCyan('Null Literal: $node');
    return super.visitNullLiteral(node);
  }

  @override
  visitObjectPattern(ObjectPattern node) {
    printWhite('Object Pattern: $node');
    return super.visitObjectPattern(node);
  }

  @override
  visitOnClause(OnClause node) {
    printBlack('On Clause: $node');
    return super.visitOnClause(node);
  }

  @override
  visitParenthesizedExpression(ParenthesizedExpression node) {
    printYellow('Parenthesized Expression: $node');
    return super.visitParenthesizedExpression(node);
  }

  @override
  visitParenthesizedPattern(ParenthesizedPattern node) {
    printRed('Parenthesized Pattern: $node');
    return super.visitParenthesizedPattern(node);
  }

  @override
  visitPartDirective(PartDirective node) {
    printBlue('Part Directive: $node');
    return super.visitPartDirective(node);
  }

  @override
  visitPartOfDirective(PartOfDirective node) {
    printMagenta('Part Of Directive: $node');
    return super.visitPartOfDirective(node);
  }

  @override
  visitPatternAssignment(PatternAssignment node) {
    printCyan('Pattern Assignment: $node');
    return super.visitPatternAssignment(node);
  }

  @override
  visitPatternField(PatternField node) {
    printWhite('Pattern Field: $node');
    return super.visitPatternField(node);
  }

  @override
  visitPatternFieldName(PatternFieldName node) {
    printBlack('Pattern Field Name: $node');
    return super.visitPatternFieldName(node);
  }

  @override
  visitPatternVariableDeclaration(PatternVariableDeclaration node) {
    printYellow('Pattern Variable Declaration: $node');
    return super.visitPatternVariableDeclaration(node);
  }

  @override
  visitPatternVariableDeclarationStatement(PatternVariableDeclarationStatement node) {
    printRed('Pattern Variable Declaration Statement: $node');
    return super.visitPatternVariableDeclarationStatement(node);
  }

  @override
  visitPostfixExpression(PostfixExpression node) {
    printBlue('Postfix Expression: $node');
    return super.visitPostfixExpression(node);
  }

  @override
  visitPrefixExpression(PrefixExpression node) {
    printMagenta('Prefix Expression: $node');
    return super.visitPrefixExpression(node);
  }

  @override
  visitPrefixedIdentifier(PrefixedIdentifier node) {
    printCyan('Prefixed Identifier: $node');
    return super.visitPrefixedIdentifier(node);
  }

  @override
  visitPropertyAccess(PropertyAccess node) {
    printWhite('Property Access: $node');
    return super.visitPropertyAccess(node);
  }

  @override
  visitRecordLiteral(RecordLiteral node) {
    printBlack('Record Literal: $node');
    return super.visitRecordLiteral(node);
  }

  @override
  visitRecordPattern(RecordPattern node) {
    printYellow('Record Pattern: $node');
    return super.visitRecordPattern(node);
  }

  @override
  visitRecordTypeAnnotation(RecordTypeAnnotation node) {
    printRed('Record Type Annotation: $node');
    return super.visitRecordTypeAnnotation(node);
  }

  @override
  visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) {
    printBlue('Record Type Annotation Named Field: $node');
    return super.visitRecordTypeAnnotationNamedField(node);
  }

  @override
  visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) {
    printMagenta('Record Type Annotation Named Fields: $node');
    return super.visitRecordTypeAnnotationNamedFields(node);
  }

  @override
  visitRecordTypeAnnotationPositionalField(RecordTypeAnnotationPositionalField node) {
    printCyan('Record Type Annotation Positional Field: $node');
    return super.visitRecordTypeAnnotationPositionalField(node);
  }

  @override
  visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) {
    printWhite('Redirecting Constructor Invocation: $node');
    return super.visitRedirectingConstructorInvocation(node);
  }

  @override
  visitRelationalPattern(RelationalPattern node) {
    printBlack('Relational Pattern: $node');
    return super.visitRelationalPattern(node);
  }

  @override
  visitRepresentationConstructorName(RepresentationConstructorName node) {
    printYellow('Representation Constructor Name: $node');
    return super.visitRepresentationConstructorName(node);
  }

  @override
  visitRepresentationDeclaration(RepresentationDeclaration node) {
    printRed('Representation Declaration: $node');
    return super.visitRepresentationDeclaration(node);
  }

  @override
  visitRestPatternElement(RestPatternElement node) {
    printBlue('Rest Pattern Element: $node');
    return super.visitRestPatternElement(node);
  }

  @override
  visitRethrowExpression(RethrowExpression node) {
    printMagenta('Rethrow Expression: $node');
    return super.visitRethrowExpression(node);
  }

  @override
  visitSetOrMapLiteral(SetOrMapLiteral node) {
    printCyan('Set Or Map Literal: $node');
    return super.visitSetOrMapLiteral(node);
  }

  @override
  visitShowCombinator(ShowCombinator node) {
    printWhite('Show Combinator: $node');
    return super.visitShowCombinator(node);
  }

  @override
  visitSimpleFormalParameter(SimpleFormalParameter node) {
    printBlack('Simple Formal Parameter: $node');
    return super.visitSimpleFormalParameter(node);
  }

  @override
  visitSimpleIdentifier(SimpleIdentifier node) {
    printYellow('Simple Identifier: $node');
    return super.visitSimpleIdentifier(node);
  }

  @override
  visitSimpleStringLiteral(SimpleStringLiteral node) {
    printRed('Simple String Literal: $node');
    return super.visitSimpleStringLiteral(node);
  }

  @override
  visitSpreadElement(SpreadElement node) {
    printBlue('Spread Element: $node');
    return super.visitSpreadElement(node);
  }

  @override
  visitStringInterpolation(StringInterpolation node) {
    printMagenta('String Interpolation: $node');
    return super.visitStringInterpolation(node);
  }

  @override
  visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    printCyan('Super Constructor Invocation: $node');
    return super.visitSuperConstructorInvocation(node);
  }

  @override
  visitSuperExpression(SuperExpression node) {
    printWhite('Super Expression: $node');
    return super.visitSuperExpression(node);
  }

  @override
  visitSuperFormalParameter(SuperFormalParameter node) {
    printBlack('Super Formal Parameter: $node');
    return super.visitSuperFormalParameter(node);
  }

  @override
  visitSwitchCase(SwitchCase node) {
    printYellow('Switch Case: $node');
    return super.visitSwitchCase(node);
  }

  @override
  visitSwitchDefault(SwitchDefault node) {
    printRed('Switch Default: $node');
    return super.visitSwitchDefault(node);
  }

  @override
  visitSwitchExpression(SwitchExpression node) {
    printBlue('Switch Expression: $node');
    return super.visitSwitchExpression(node);
  }

  @override
  visitSwitchExpressionCase(SwitchExpressionCase node) {
    printMagenta('Switch Expression Case: $node');
    return super.visitSwitchExpressionCase(node);
  }

  @override
  visitSwitchPatternCase(SwitchPatternCase node) {
    printCyan('Switch Pattern Case: $node');
    return super.visitSwitchPatternCase(node);
  }

  @override
  visitSwitchStatement(SwitchStatement node) {
    printWhite('Switch Statement: $node');
    return super.visitSwitchStatement(node);
  }

  @override
  visitSymbolLiteral(SymbolLiteral node) {
    printBlack('Symbol Literal: $node');
    return super.visitSymbolLiteral(node);
  }

  @override
  visitThisExpression(ThisExpression node) {
    printYellow('This Expression: $node');
    return super.visitThisExpression(node);
  }

  @override
  visitThrowExpression(ThrowExpression node) {
    printRed('Throw Expression: $node');
    return super.visitThrowExpression(node);
  }

  @override
  visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    printBlue('Top Level Variable Declaration: $node');
    return super.visitTopLevelVariableDeclaration(node);
  }

  @override
  visitTryStatement(TryStatement node) {
    printMagenta('Try Statement: $node');
    return super.visitTryStatement(node);
  }

  @override
  visitTypeArgumentList(TypeArgumentList node) {
    printCyan('Type Argument List: $node');
    return super.visitTypeArgumentList(node);
  }

  @override
  visitTypeLiteral(TypeLiteral node) {
    printWhite('Type Literal: $node');
    return super.visitTypeLiteral(node);
  }

  @override
  visitTypeParameterList(TypeParameterList node) {
    printBlack('Type Parameter List: $node');
    return super.visitTypeParameterList(node);
  }

  @override
  visitVariableDeclaration(VariableDeclaration node) {
    printYellow('Variable Declaration: $node');
    return super.visitVariableDeclaration(node);
  }

  @override
  visitVariableDeclarationList(VariableDeclarationList node) {
    printRed('Variable Declaration List: $node');
    return super.visitVariableDeclarationList(node);
  }

  @override
  visitVariableDeclarationStatement(VariableDeclarationStatement node) {
    printBlue('Variable Declaration Statement: $node');
    return super.visitVariableDeclarationStatement(node);
  }

  @override
  visitWhenClause(WhenClause node) {
    printMagenta('When Clause: $node');
    return super.visitWhenClause(node);
  }

  @override
  visitWhileStatement(WhileStatement node) {
    printCyan('While Statement: $node');
    return super.visitWhileStatement(node);
  }

  @override
  visitWildcardPattern(WildcardPattern node) {
    printWhite('Wildcard Pattern: $node');
    return super.visitWildcardPattern(node);
  }

  @override
  visitWithClause(WithClause node) {
    printBlack('With Clause: $node');
    return super.visitWithClause(node);
  }

  @override
  visitYieldStatement(YieldStatement node) {
    printYellow('Yield Statement: $node');
    return super.visitYieldStatement(node);
  }

  void printBlack(String text) {
    print('\x1B[30m$text\x1B[0m');
    addAstNode(text);
  }

  void printYellow(String text) {
    print('\x1B[33m$text\x1B[0m');
    addAstNode(text);
  }

  void printRed(String text) {
    print('\x1B[31m$text\x1B[0m');
    addAstNode(text);
  }

  void printGreen(String text) {
    print('\x1B[32m$text\x1B[0m');
    addAstNode(text);
  }

  void printBlue(String text) {
    print('\x1B[34m$text\x1B[0m');
    addAstNode(text);
  }

  void printMagenta(String text) {
    print('\x1B[35m$text\x1B[0m');
    addAstNode(text);
  }

  void printCyan(String text) {
    print('\x1B[36m$text\x1B[0m');
    addAstNode(text);
  }

  void printWhite(String text) {
    print('\x1B[37m$text\x1B[0m');
    addAstNode(text);
  }

  void addAstNode(String text) {
    String value = text.split(':').first;
    String key = text.split(':').skip(1).join(':');
    astMap[key] = value;
  }
}
