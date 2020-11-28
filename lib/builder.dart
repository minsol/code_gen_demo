import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';
import 'mark_generator.dart';

Builder markBuilder(BuilderOptions options) => LibraryBuilder(MarkGenerator(), 
  generatedExtension: '.mark.dart');

Builder markExportBuilder(BuilderOptions options) => LibraryBuilder(MarkGeneratorExport(),
    generatedExtension: '.mark_export.dart');