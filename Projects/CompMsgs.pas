unit CompMsgs;

{
  Inno Setup
  Copyright (C) 1997-2012 Jordan Russell
  Portions by Martijn Laan
  For conditions of distribution and use, see LICENSE.TXT.

  Compiler Messages

  All language-specific text used by the compiler is in here. If you want to
  translate it into another language, all you need to change is this unit.
}

interface

const
  SNewLine = #13#10;  { line break }
  SNewLine2 = #13#10#13#10;  { double line break }

  { Compiler form labels }
  SCompilerFormCaption = 'Inno Setup Compiler';
  SCompilerScriptFileLabel = 'Script &File:';
  SCompilerStatusLabel = 'Status &Messages:';
  SCompilerScriptBrowseButton = '&Browse...';
  SCompilerStartButton = '&Start';
  SCompilerExitButton = 'E&xit';
  SCompilerOpenFilter = 'Inno Setup Scripts (*.iss)|*.iss|All Files|*.*';
  SCompilerExampleScripts = 'Example scripts...';
  SCompilerMoreFiles = 'More files...';

  { Compiler Script Wizard }
  SWizardDefaultName = 'Inno Setup Script Wizard';
  SWizardWelcome = 'Welcome';
  SWizardAppInfo = 'Application Information';
  SWizardAppInfo2 = 'Please specify some basic information about your application.';
  SWizardAppDir = 'Application Folder';
  SWizardAppDir2 = 'Please specify folder information about your application.';
  SWizardAppFiles = 'Application Files';
  SWizardAppFiles2 = 'Please specify the files that are part of your application.';
  SWizardAppFiles3 = 'Please specify the source folder.';
  SWizardAppFilesSubDirsMessage = 'Should files in subfolders of "%s" also be included?';
  SWizardAppExeFilter = 'Application files (*.exe)|*.exe|All Files|*.*';
  SWizardAppExeDefaultExt = 'exe';
  SWizardAppIcons = 'Application Icons';
  SWizardAppIcons2 = 'Please specify which icons should be created for your application.';
  SWizardAppDocs = 'Application Documentation';
  SWizardAppDocs2 = 'Please specify which documentation files should be shown by Setup during installation.';
  SWizardAppDocsFilter = 'Documentation files (*.rtf,*.txt)|*.rtf;*.txt|All Files|*.*';
  SWizardAppDocsDefaultExt = 'rtf';
  SWizardLanguages = 'Setup Languages';
  SWizardLanguages2 = 'Please specify which Setup languages should be included.';
  SWizardCompiler = 'Compiler Settings';
  SWizardCompiler2 = 'Please specify some basic compiler settings.';
  SWizardCompilerSetupIconFileFilter = 'Icon files (*.ico)|*.ico|All Files|*.*';
  SWizardCompilerSetupIconFileDefaultExt = 'ico';
  SWizardCompilerOutputDir = 'Please specify the folder.';
  SWizardISPP = 'Inno Setup Preprocessor';
  SWizardISPP2 = 'Please specify whether Inno Setup Preprocessor should be used.';
  SWizardISPPLabel = 'The [name] has detected the presence of Inno Setup Preprocessor (ISPP) and can therefore use #define compiler directives to simplify your script. Although this is not necessary, it will make it easier to manually change the script later.' + SNewLine2 + 'Do you want the [name] to use #define compiler directives?';
  SWizardISPPCheck = '&Yes, use #define compiler directives';
  SWizardFinished = 'Finished';

  SWizardNextButton = '&Next >';
  SWizardFinishButton = '&Finish';
  SWizardCancelMessage = 'The [name] is not complete. If you quit now, the new script file will not be generated.'#13#13'Exit the [name]?';

  SWizardAllFilesFilter = 'All Files|*.*';

  SWizardAppNameError = 'Please specify the application name.';
  SWizardAppVersionError = 'Please specify the application version.';
  SWizardAppRootDirError = 'Please specify the application destination base folder.';
  SWizardAppDirNameError = 'Please specify the application folder name.';
  SWizardAppExeError = 'Please specify the application main executable file.';
  SWizardAppGroupNameError = 'Please specify the application Start Menu group name.';
  SWizardFileDestRootDirError = 'Please specify the destination base folder.';
  SWizardFileAppDestRootDirError = 'Please specify a destination base folder other than the application folder';
  SWizardLanguagesSelError = 'Please select at least one language.';

  SWizardScriptHeader = '; Script generated by the [name].' + SNewLine  + '; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!';

  { Compiler-specific messages }
  SCompilerVersion = 'version %s';

  SCompilerNotOnWin32s = 'The 32-bit compiler will not run on Win32s.';
  SCompilerCommandLineHelp3 = 'Command line usage:' + SNewLine +
    SNewLine +
    'compil32 /cc <script file>' + SNewLine +
    'compil32 /wizard <wizard name> <script file>' + SNewLine +
    SNewLine +
    'Examples:' + SNewLine +
    'compil32 /cc c:\isetup\sample32\sample1.iss' + SNewLine +
    'compil32 /cc "C:\Inno Setup\Sample32\My script.iss"' + SNewLine +
    'compil32 /wizard "My Script Wizard" c:\temp.iss';

  { Status messages }
  SCompilerStatusStarting = '*** Starting compile.  [%s]';
  SCompilerStatusCreatingOutputDir = 'Creating output directory: %s';
  SCompilerStatusCreatingSignedUninstallerDir = 'Creating signed uninstaller directory: %s';
  SCompilerStatusDeletingPrevious = 'Deleting %s from output directory';
  SCompilerStatusParsingSectionLine = 'Parsing [%s] section, line %d';
  SCompilerStatusParsingSectionLineFile = 'Parsing [%s] section, line %d of %s';
  SCompilerStatusFilesVerInfo = '   Reading version info: %s';
  SCompilerStatusReadingFile = 'Reading file (%s)';
  SCompilerStatusPreparingSetupExe = 'Preparing Setup program executable';
  SCompilerStatusSkippingPreparingSetupExe = 'Skipping preparing Setup program executable, output is disabled';
  SCompilerStatusSignedUninstallerNew = '   Creating new signed uninstaller file: %s';
  SCompilerStatusSignedUninstallerExisting = '   Using existing signed uninstaller file: %s';
  SCompilerStatusDeterminingCodePages = 'Determining language code pages';
  SCompilerStatusConvertCodePage = '   Conversion code page: %d';
  SCompilerStatusReadingDefaultMessages = 'Reading default messages from Default.isl';
  SCompilerStatusParsingMessages = 'Parsing [LangOptions], [Messages], and [CustomMessages] sections';
  SCompilerStatusReadingCode = 'Reading [Code] section';
  SCompilerStatusCompilingCode = 'Compiling [Code] section';
  SCompilerStatusReadingInFile = '   File: %s';
  SCompilerStatusReadingInScriptMsgs = '   Messages in script file';
  SCompilerStatusCreateSetupFiles = 'Creating setup files';
  SCompilerStatusSkippingCreateSetupFiles = 'Skipping creating setup files, output is disabled';
  SCompilerStatusCreateManifestFile = 'Creating manifest file';
  SCompilerStatusFilesInitEncryption = '   Initializing encryption';
  SCompilerStatusFilesCompressing = '   Compressing: %s';
  SCompilerStatusFilesCompressingVersion = '   Compressing: %s   (%u.%u.%u.%u)';
  SCompilerStatusCompressingSetupExe = '   Compressing Setup program executable';
  SCompilerStatusUpdatingVersionInfo = '   Updating version info';
  SCompilerStatusUpdatingIcons = '   Updating icons (%s)';
  SCompilerStatusCreatingDisk = '   Creating disk %d';
  SCompilerStatusFinished = '*** Finished.  [%s, %s elapsed]';
  SCompilerStatusError = 'ERROR:';
  SCompilerStatusErrorAborted = '*** Compile aborted.';
  SCompilerStatusReset = '*** Log size limit reached, list reset.';
  SCompilerStatusWarning = 'Warning: ';
  SCompilerStatusSigningSetup = '   Signing Setup program executable';
  SCompilerStatusSigning = '   Running Sign Tool command: %s';
  SCompilerStatusWillRetrySigning = '   Sign Tool command failed (%s). Will retry (%d tries left).';

  SCompilerSuccessfulMessage2 = 'The setup images were successfully created ' +
    'in the output directory:' + SNewLine +
    '%s' + SNewLine +
    SNewLine +
    'Would you like to test the installation now?';
  SCompilerSuccessfulTitle = 'Compile Successful';
  SCompilerNeedCompiledExe = 'Cannot run Setup at this time. Please compile Setup successfully to completion first, with output enabled';
  SCompilerNeedUninstExe = 'Cannot run Uninstall at this time. Please run Setup successfully to completion first';
  SCompilerExecuteSetupError2 = 'Error executing "%s":' + SNewLine2 + '%d: %s';

  SCompilerAborted = 'Compile aborted. Please correct the problem and try again.';

  { Fatal errors }
  SCompilerScriptMissing2 = 'Specified script file does not exist';
  SCompilerOutputNotEmpty2 = 'Output directory must be empty prior to ' +
    'compilation of any non-Setup files. Files named SETUP.* are ' +
    'automatically deleted at the start of compilation.';
  SCompilerUnknownFilenamePrefix = 'Unknown filename prefix "%s"';
  SCompilerSourceFileDoesntExist = 'Source file "%s" does not exist';
  SCompilerCopyError3 = 'Could not copy "%s" to "%s".' + SNewLine2 + 'Error %d: %s';
  SCompilerReadError = 'Could not read "%s".' + SNewLine2 + 'Error: %s';
  SCompilerCompressError2 = 'An internal error occurred while trying to compress "%s"';
  SCompilerNotEnoughSpaceOnFirstDisk = 'There is not enough space on the first disk to copy all of the required files';
  SCompilerSetup0Mismatch = 'Internal error SC1';
  SCompilerMustUseDiskSpanning = 'Disk spanning must be enabled in order to create an installation larger than %d bytes in size';
  SCompilerCompileCodeError = 'An error occurred while trying to compile the [Code] section:' + SNewLine2 + '%s';
  SCompilerISCryptMissing = 'Cannot use encryption because ISCrypt.dll is missing.' + SNewLine2 +
    'Note: This file is not installed with Inno Setup. A link to obtain it can be found on the Inno Setup web site';

  { [Setup] }
  SCompilerUnknownDirective = 'Unrecognized [%s] section directive "%s"';
  SCompilerEntryObsolete = 'The [%s] section directive "%s" is obsolete and ignored in this version of Inno Setup.';
  SCompilerEntrySuperseded2 = 'The [%s] section directive "%s" has been superseded by "%s" in this version of Inno Setup.';
  SCompilerEntryMissing2 = 'Required [%s] section directive "%s" not specified';
  SCompilerEntryInvalid2 = 'Value of [%s] section directive "%s" is invalid';
  SCompilerEntryAlreadySpecified = '[%s] section directive "%s" already specified';
  SCompilerAppVersionOrAppVerNameRequired = 'The [Setup] section must include an AppVersion or AppVerName directive';
  SCompilerMinVersionWinMustBeZero = 'Minimum Windows version specified by MinVersion must be 0. (Windows 95/98/Me are no longer supported.)';
  SCompilerMinVersionNTTooLow = 'Minimum NT version specified by MinVersion must be at least %s';
  SCompilerDiskSliceSizeInvalid = 'DiskSliceSize must be between %d and %d, or "max"';
  SCompilerDiskClusterSizeInvalid = 'DiskClusterSize must be between 1 and 32768';
  SCompilerInstallModeObsolete = 'The [%s] section directive "%s" is obsolete and ignored in this version of Inno Setup. Use command line parameters instead.';
  SCompilerMessagesFileObsolete = 'The MessagesFile directive is obsolete and no longer supported. Use the [Languages] section instead.';
  SCompilerDirectiveIsNTOnly = 'The [%s] section directive "%s" may not be used when compiling on Windows 95/98/Me';
  SCompilerDirectiveRequiresWindows2000 = 'The [%s] section directive "%s" may not be used when compiling on Windows 95/98/Me/NT4';
  SCompilerMustUseDisableStartupPrompt = 'DisableStartupPrompt must be set to "yes" when AppName includes constants';
  SCompilerMustNotUsePreviousLanguage = 'UsePreviousLanguage must be set to "no" when AppId includes constants';
  SCompilerDirectiveNotUsingDefault = 'The [Setup] section directive "%s" is not assuming a default value because %s includes constants.';
  SCompilerDirectiveNotUsingPreferredDefault = 'The [Setup] section directive "%s" is defaulting to %s because %s includes constants.';
  SCompilerDirectiveCloseApplicationsFilterTooLong = 'The [Setup] section directive "CloseApplicationsFilter" contains a pattern that is too long';

  { Signing }
  SCompilerSignatureNeeded = 'Signed uninstaller mode is enabled. Using ' +
    'an external code-signing tool, please attach your digital signature ' +
    'to the following executable file:' + SNewLine2 + '%s' + SNewLine2 +
    'and compile again';
  SCompilerSignatureInvalid = 'Digital signature appears to be invalid';
  SCompilerSignedFileContentsMismatchRetry = 'The contents of the signed file:' +
    SNewLine2 + '%s' + SNewLine2 + 'differ unexpectedly from the original ' +
    'file. Try deleting the signed file and compiling again. If this error ' +
    'persists, please report the problem';
  SCompilerSignedFileContentsMismatch = 'The contents of the signed file:' +
    SNewLine2 + '%s' + SNewLine2 + 'differ unexpectedly from the original ' +
    'file';
  SCompilerNoSetupLdrSignError = 'The SignTool and SignedUninstaller directives may not be set when UseSetupLdr is set to "no"';
  SCompilerSignToolCreateProcessFailed = 'Failed to execute Sign Tool.' +
    SNewLine2 + 'Error %d: %s'; 
  SCompilerSignToolNonZeroExitCode = 'Sign Tool failed with exit code 0x%x';
  SCompilerSignToolSucceededButNoSignature = 'The Sign Tool returned an ' +
    'exit code of 0, but the file does not have a digital signature';

  { Line parsing }
  SCompilerLineTooLong = 'Line too long';
  SCompilerSectionTagInvalid = 'Invalid section tag';
  SCompilerSectionBadEndTag = 'Not inside "%s" section, but an end tag for ' +
    'it was encountered';
  SCompilerTextNotInSection = 'Text is not inside a section';
  SCompilerInvalidDirective = 'Invalid compiler directive' +
    SNewLine2 + 'To be able to use compiler directives other than ''#include'', you need Inno Setup Preprocessor (ISPP) which is currently not installed.' +
    SNewLine2 + 'To install ISPP, reinstall Inno Setup and enable the ISPP option.';
  SCompilerErrorOpeningIncludeFile = 'Couldn''t open include file "%s": %s';
  SCompilerRecursiveInclude = 'Recursive include of "%s"';
  SCompilerIllegalNullChar = 'Illegal null character on line %d';
  SCompilerISPPMissing = 'ISPP.dll is missing';

  { Constant checks }
  SCompilerTwoBraces = 'Use two consecutive "{" characters if you are trying ' +
    'to embed a single "{" and not a constant';
  SCompilerUnknownConst = 'Unknown constant "%s".' +
    SNewLine2 + SCompilerTwoBraces;
  SCompilerUnterminatedConst = 'A "}" is missing at the end of the constant "%s".' +
    SNewLine2 + SCompilerTwoBraces;
  SCompilerConstCannotUse = 'The constant "%s" cannot be used here';
  SCompilerBadEnvConst = 'Invalid environment constant "%s"';
  SCompilerBadRegConst = 'Invalid registry constant "%s"';
  SCompilerBadIniConst = 'Invalid INI constant "%s"';
  SCompilerBadParamConst = 'Invalid command line parameter constant "%s"';
  SCompilerBadCodeConst = 'Invalid code constant "%s"';
  SCompilerBadDriveConst = 'Invalid drive constant "%s"';
  SCompilerBadCustomMessageConst = 'Invalid custom message constant "%s"';
  SCompilerBadBoolConst = 'Invalid boolean constant "%s"';

  { Directive parsing }
  SCompilerDirectiveNameMissing = 'Missing directive name';
  SCompilerDirectiveHasNoValue = 'Directive "%s" has no value';

  { Parameter parsing }
  SCompilerParamHasNoValue = 'Specified parameter "%s" has no value';
  SCompilerParamQuoteError = 'Mismatched or misplaced quotes on parameter "%s"';
  SCompilerParamMissingClosingQuote = 'Missing closing quote on parameter "%s"';
  SCompilerParamDataTooLong = 'Data on parameter "%s" is too long';
  SCompilerParamUnknownParam = 'Unrecognized parameter name "%s"';
  SCompilerParamDuplicated = 'Cannot have multiple "%s" parameters';
  SCompilerParamEmpty2 = 'Parameter "%s" is empty';
  SCompilerParamNotSpecified = 'Required parameter "%s" not specified';
  SCompilerParamNoQuotes2 = 'Parameter "%s" cannot include quotes (")';
  SCompilerParamNoBackslash = 'Parameter "%s" cannot include backslashes (\)';
  SCompilerParamNoPrecedingBackslash = 'Parameter "%s" cannot begin with a backslash (\)';
  SCompilerParamInvalid2 = 'Parameter "%s" is not a valid value';

  { Flags }
  SCompilerParamUnknownFlag2 = 'Parameter "%s" includes an unknown flag';
  SCompilerParamErrorBadCombo2 = 'Parameter "%s" cannot have both the "%s" and "%s" flags';
  SCompilerParamUnsupportedFlag = 'Parameter "%s" includes a flag that is not supported in this section';
  SCompilerParamFlagMissing = 'Flag "%s" must be used if flag "%s" is used';
  SCompilerParamFlagMissing2 = 'Flag "%s" must be used if parameter "%s" is used';

  { Types, components, tasks, check, beforeinstall, afterinstall }
  SCompilerParamUnknownType = 'Parameter "%s" includes an unknown type';
  SCompilerParamUnknownComponent = 'Parameter "%s" includes an unknown component';
  SCompilerParamUnknownTask = 'Parameter "%s" includes an unknown task';
  SCompilerExpressionError = 'Directive or parameter "%s" expression error: %s';
  SCompilerBadCheckOrInstall = 'Invalid Check, BeforeInstall or AfterInstall parameter "%s"';

  { Permissions }
  SCompilerPermissionsInvalidValue = 'Parameter "Permissions" includes a malformed value: "%s"';
  SCompilerPermissionsUnknownSid = 'Parameter "Permissions" includes an unknown SID: "%s"';
  SCompilerPermissionsUnknownMask = 'Parameter "Permissions" includes an unknown access type: "%s"';
  SCompilerPermissionsValueLimitExceeded = 'Parameter "Permissions" cannot include more than %d values';
  SCompilerPermissionsTooMany = 'Too many unique "Permissions" parameter values';

  { [Code] }
  SCompilerCodeUnsupportedEventFunction = 'Event function named "%s" is no longer supported. Create a "%s" function instead';

  { [Types] }
  SCompilerTypesCustomTypeAlreadyDefined = 'A custom type has already been defined';

  { [Components], [Tasks], [Languages] }
  SCompilerComponentsOrTasksBadName = 'Parameter "Name" includes invalid characters.' + SNewLine2 +
    'It may only include alphanumeric characters, underscores, slashes (/), and/or backslashes (\), may not start with a number and may not start or end with a slash or a backslash. Names ''not'', ''and'' and ''or'' are reserved';
  SCompilerComponentsInvalidLevel = 'Component cannot be more than one level below the preceding component';
  SCompilerTasksInvalidLevel = 'Task cannot be more than one level below the preceding task'; 
  SCompilerLanguagesBadName = 'Parameter "Name" includes invalid characters.' + SNewLine2 + 'It may only include alphanumeric characters and/or underscores, and may not start with a number. Names ''not'', ''and'' and ''or'' are reserved';

  { [Languages] }
  SCompilerParamUnknownLanguage = 'Parameter "%s" includes an unknown language';

  { [Messages] }
  SCompilerMessagesMissingEquals = 'Missing "=" separator between message name and text';
  SCompilerMessagesNotRecognizedDefault = 'Message name "%s" in Default.isl is not recognized by this version of Inno Setup';
  SCompilerMessagesNotRecognizedWarning = 'Message name "%s" is not recognized by this version of Inno Setup. Ignoring.';
  SCompilerMessagesNotRecognizedInFileWarning = 'Message name "%s" in "%s" is not recognized by this version of Inno Setup. Ignoring.';
  SCompilerMessagesMissingDefaultMessage = 'A message named "%s" has not been defined in Default.isl. It is required by this version of Inno Setup';
  SCompilerMessagesMissingMessageWarning = 'A message named "%s" has not been defined for the "%s" language. Will use the English message from Default.isl.';

  { [CustomMessages] }
  SCompilerCustomMessageBadName = 'Custom message name may only include alphanumeric characters and/or underscores, and cannot begin with a number';
  SCompilerCustomMessagesMissingLangWarning = 'Custom message "%s" has not been defined for the "%s" language. Will use the custom message from the first language in which it was defined: "%s".';
  SCompilerCustomMessagesMissingName = 'A custom message named "%s" has not been defined';

  { [Messages] & [LangOptions] }
  SCompilerUnknownLanguage = 'Unknown language name "%s"';
  SCompilerCantSpecifyLanguage = 'A language name may not be specified in a messages file';
  SCompilerCantSpecifyLangOption = 'Language option "%s" cannot be applied to all languages';
  SCompilerLanguageNameNotAscii = 'LanguageName should not contain non-ASCII characters; ' +
    'such characters will be interpreted as being from the ISO-8859-1 character set by a non Unicode Setup. ' +
    'Use "<nnnn>" to embed Unicode characters, where "nnnn" is the 4-digit hexadecimal Unicode character code.';

  { [Files] }
  SCompilerFilesTmpBadFlag = 'Parameter "Flags" cannot have the "%s" flag on ' +
    'a file copied to the {tmp} directory, or when the "deleteafterinstall" or ' +
    '"dontcopy" flag is used';
  SCompilerFilesWildcardNotMatched = 'No files found matching "%s"';
  SCompilerFilesDestNameCantBeSpecified = 'Parameter "DestName" cannot be specified if ' +
    'the "Source" parameter contains wildcards';
  SCompilerFilesStrongAssemblyNameMustBeSpecified = 'Parameter "StrongAssemblyName" must be specified if ' +
    'the flag "gacinstall" is used';
  SCompilerFilesCantHaveExternalExclude = 'Parameter "Excludes" may not be used when ' +
    'the "external" flag is used';
  SCompilerFilesCantHaveNonExternalExternalSize = 'Parameter "ExternalSize" may only be used when ' +
    'the "external" flag is used';
  SCompilerFilesExcludeTooLong = 'Parameter "Excludes" contains a pattern that is too long';
  SCompilerFilesCantReadVersionInfoOn64BitImage = 'In order for it to be able to read version info on 64-bit images, ' +
    'the compiler must be run under Windows 2000 or later';
  SCompilerFilesUnsafeFile = 'Unsafe file detected: %s.' + SNewLine2 +
    'See the "Unsafe Files" topic in the help file for more information';
  SCompilerFilesSystemDirUsed = 'Attempt to deploy DLL file from own Windows System directory.' + SNewLine2 +
    'See the "Unsafe Files" topic in the help file for more information on why this is dangerous and should be avoided';
  SCompilerFilesSystemDirNotUsed = 'Attempt to deploy registered file %s to a location other than {sys}.' + SNewLine2 +
    'See the "Unsafe Files" topic in the help file for more information on why this is dangerous and should be avoided';
  SCompilerFilesIgnoreVersionUsedUnsafely =
    'Unsafe flag usage on file "%s": The "ignoreversion" flag should not be ' +
    'used on files installed to the Windows System directory ("{sys}").';
  SCompilerFilesWarningCopyMode = '"CopyMode: %s" has been superseded by "Flags: %s" in ' +
    'this version of Inno Setup. Behaving as if "Flags: %s" were specified.';
  SCompilerFilesWarningASISOO = '"CopyMode: alwaysskipifsameorolder" is deprecated and ' +
    'ignored in this version of Inno Setup. It is now the default behavior.';
  SCompilerFilesWarningSharedFileSysWow64 = 'DestDir should not be set to ' +
    '"{syswow64}" when the "sharedfile" flag is used. See the "sharedfile" ' +
    'documentation in the help file for details.';

  { [Icons] }
  SCompilerIconsNamePathNotSpecified = 'Parameter "Name" must include a path for the icon, ' +
    'for example, "{group}\My Icon"';
  SCompilerIconsIconIndexInvalid = 'Parameter "IconIndex" is not a valid integer';

  { [Registry] }
  SCompilerRegistryDeleteKeyProhibited = 'The "uninsdeletekey" and ' +
    '"deletekey" flags are prohibited on the specified key because the ' +
    'results would be disastrous. (You probably mean to delete a value instead.)';

  { [Run] }
  SCompilerRunCantUseRunOnceId = 'Parameter "RunOnceId" can only be used in ' +
    'an [UninstallRun] section';
  SCompilerRunFlagObsolete = 'Flag "%s" is obsolete. Use "%s" instead.';
  SCompilerRunMultipleWaitFlags = 'Parameter "Flags" cannot include multiple "wait" flags';

  { [UninstallRun] }
  SCompilerUninstallRunCantUseDescription = 'Parameter "Description" can only be used in ' +
    'a [Run] section';

implementation

end.
