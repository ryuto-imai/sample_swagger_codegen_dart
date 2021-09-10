@Grab('io.swagger:swagger-codegen-cli:2.4.21')
import io.swagger.codegen.*
import io.swagger.codegen.languages.*
import io.swagger.codegen.mustache.*
import io.swagger.models.properties.ArrayProperty
import io.swagger.models.properties.MapProperty
import io.swagger.models.properties.Property

import java.io.File
import java.util.ArrayList
import java.util.Arrays
import java.util.HashMap
import java.util.HashSet
import java.util.List
import java.util.Map

class DartRetrofitClientCodegen extends DefaultCodegen implements CodegenConfig  {

  public static final String BROWSER_CLIENT = 'browserClient'
  public static final String USE_ENUM_EXTENSION = 'useEnumExtension'
  public static final String PUB_NAME = "pubName";
  protected boolean browserClient = true
  protected boolean useEnumExtension = false
  protected String pubName = "swagger";

  DartRetrofitClientCodegen() {
    super()
    this.modelTemplateFiles['model.mustache'] = '.dart'
    this.apiTemplateFiles['api.mustache'] = '.dart'
    this.apiTemplateFiles['api_repository.mustache'] = '.dart'
    this.apiTemplateFiles['api_repository_impl.mustache'] = '.dart'
    
    this.apiPackage = 'api'
    this.modelPackage = 'model'
    supportingFiles.add(new SupportingFile('README.mustache', '', 'README.md'))

    setReservedWordsLowerCase(
                Arrays.asList(
                        'abstract', 'as', 'assert', 'async', 'async*', 'await',
                        'break', 'case', 'catch', 'class', 'const', 'continue',
                        'default', 'deferred', 'do', 'dynamic', 'else', 'enum',
                        'export', 'external', 'extends', 'factory', 'false', 'final',
                        'finally', 'for', 'get', 'if', 'implements', 'import', 'in',
                        'is', 'library', 'new', 'null', 'operator', 'part', 'rethrow',
                        'return', 'set', 'static', 'super', 'switch', 'sync*', 'this',
                        'throw', 'true', 'try', 'typedef', 'var', 'void', 'while',
                        'with', 'yield', 'yield*' )
        )

    languageSpecificPrimitives = new HashSet<String>(
                Arrays.asList(
                        'String',
                        'bool',
                        'int',
                        'num',
                        'double')
        )
    instantiationTypes.put('array', 'List')
    instantiationTypes.put('map', 'Map')

    typeMapping = new HashMap<String, String>()
    typeMapping.put('Array', 'List')
    typeMapping.put('array', 'List')
    typeMapping.put('List', 'List')
    typeMapping.put('boolean', 'bool')
    typeMapping.put('string', 'String')
    typeMapping.put('char', 'String')
    typeMapping.put('int', 'int')
    typeMapping.put('long', 'int')
    typeMapping.put('short', 'int')
    typeMapping.put('number', 'num')
    typeMapping.put('float', 'double')
    typeMapping.put('double', 'double')
    typeMapping.put('object', 'Object')
    typeMapping.put('integer', 'int')
    typeMapping.put('Date', 'DateTime')
    typeMapping.put('date', 'DateTime')
    typeMapping.put('File', 'MultipartFile')
    typeMapping.put('UUID', 'String')
    //TODO binary should be mapped to byte array
    // mapped to String as a workaround
    typeMapping.put('binary', 'String')
    typeMapping.put('ByteArray', 'String')

    cliOptions.add(new CliOption(BROWSER_CLIENT, 'Is the client browser based'))
    cliOptions.add(new CliOption(USE_ENUM_EXTENSION, "Allow the 'x-enum-values' extension for enums"))
    cliOptions.add(new CliOption(CodegenConstants.SOURCE_FOLDER, 'source folder for generated code'))

    additionalProperties.put('camelcase', new CamelCaseLambda().generator(this))

    supportingFiles.add(new SupportingFile("models.mustache", outputFolder, "models.dart"))
    supportingFiles.add(new SupportingFile("apis.mustache", outputFolder, "apis.dart"))
    supportingFiles.add(new SupportingFile("result.mustache", outputFolder, "result.dart"))

    String repositoryFolder = outputFolder + File.separator + "repository";
    supportingFiles.add(new SupportingFile("api_auth_repository.mustache", repositoryFolder, "api_auth_repository.dart"))
  }

  @Override
  public void processOpts() {
    super.processOpts()

    if (additionalProperties.containsKey(BROWSER_CLIENT)) {
      this.setBrowserClient(convertPropertyToBooleanAndWriteBack(BROWSER_CLIENT))
    } else {
      //not set, use to be passed to template
      additionalProperties.put(BROWSER_CLIENT, browserClient)
    }

    if (additionalProperties.containsKey(USE_ENUM_EXTENSION)) {
      this.setUseEnumExtension(convertPropertyToBooleanAndWriteBack(USE_ENUM_EXTENSION))
    } else {
      // Not set, use to be passed to template.
      additionalProperties.put(USE_ENUM_EXTENSION, useEnumExtension)
    }

    if (additionalProperties.containsKey(PUB_NAME)) {
        this.setPubName((String) additionalProperties.get(PUB_NAME));
    } else {
        //not set, use to be passed to template
        additionalProperties.put(PUB_NAME, pubName);
    }
  }

  @Override
  public CodegenType getTag() {
    return CodegenType.CLIENT
  }

  @Override
  public String getName() {
    return 'dart-retrofit'
  }

  @Override
  public String getHelp() {
    return 'Generates a Dart client library.'
  }

  // CLIへのkick
  public static main(String[] args) {
    SwaggerCodegen.main(args)
  }

  @Override
  public String escapeReservedWord(String name) {
    return name + '_'
  }

  @Override
  public String toVarName(String name) {
    // replace - with _ e.g. created-at => created_at
    name = name.replaceAll('-', '_') // FIXME: a parameter should not be assigned. Also declare the methods parameters as 'final'.

    // if it's all uppper case, do nothing
    if (name.matches("^[A-Z_]*\$")) {
      return name
    }

    // camelize (lower first character) the variable name
    // pet_id => petId
    name = camelize(name, true)

    if (name.matches("^\\d.*")) {
      name = 'n' + name
    }

    if (isReservedWord(name)) {
      name = escapeReservedWord(name)
    }

    return name
  }

  @Override
  public String toParamName(String name) {
    // should be the same as variable name
    return toVarName(name)
  }

  @Override
  public String toModelName(String name) {
    // model name cannot use reserved keyword, e.g. return
    if (isReservedWord(name)) {
      LOGGER.warn(name + ' (reserved word) cannot be used as model filename. Renamed to ' + camelize('model_' + name))
      name = 'model_' + name // e.g. return => ModelReturn (after camelize)
    }

    // camelize the model name
    // phone_number => PhoneNumber
    return camelize(name)
  }

  @Override
  public String toModelFilename(String name) {
    return underscore(toModelName(name))
  }

  @Override
  public String toApiFilename(String name) {
    return underscore(toApiName(name))
  }

  @Override
  public String apiFilename(String templateName, String tag) {
      String result = super.apiFilename(templateName, tag)
      String apiFolder = outputFolder + File.separator + "api"
      String repositoryFolder = outputFolder + File.separator + "repository";
      if ( templateName.endsWith("repository.mustache") ) {
          int ix = result.lastIndexOf('/')
          result = result.substring(0, ix) + result.substring(ix, result.length() - 5) + "_repository.dart"
          result = result.replace(apiFolder, repositoryFolder)
      } else if ( templateName.endsWith("repository_impl.mustache") ) {
          int ix = result.lastIndexOf('/')
          result = result.substring(0, ix) + result.substring(ix, result.length() - 5) + "_repository_impl.dart"
          result = result.replace(apiFolder, repositoryFolder)
      }
      return result
  }

  @Override
  public String toDefaultValue(Property p) {
    if (p instanceof MapProperty) {
      return '{}'
      } else if (p instanceof ArrayProperty) {
      return '[]'
    }
    return super.toDefaultValue(p)
  }

  @Override
  public String getTypeDeclaration(Property p) {
    if (p instanceof ArrayProperty) {
      ArrayProperty ap = (ArrayProperty) p
      Property inner = ap.getItems()
      return getSwaggerType(p) + '<' + getTypeDeclaration(inner) + '>'
      } else if (p instanceof MapProperty) {
      MapProperty mp = (MapProperty) p
      Property inner = mp.getAdditionalProperties()

      return getSwaggerType(p) + '<String, ' + getTypeDeclaration(inner) + '>'
    }
    return super.getTypeDeclaration(p)
  }

  @Override
  public String getSwaggerType(Property p) {
    String swaggerType = super.getSwaggerType(p)
    String type = null
    if (typeMapping.containsKey(swaggerType)) {
      type = typeMapping.get(swaggerType)
      if (languageSpecificPrimitives.contains(type)) {
        return type
      }
      } else {
      type = swaggerType
    }
    return toModelName(type)
  }

  @Override
  public Map<String, Object> postProcessModels(Map<String, Object> objs) {
    return postProcessModelsEnum(objs)
  }

  @Override
  public Map<String, Object> postProcessModelsEnum(Map<String, Object> objs) {
    List<Object> models = (List<Object>) objs.get('models')
    for (Object _mo : models) {
      Map<String, Object> mo = (Map<String, Object>) _mo
      CodegenModel cm = (CodegenModel) mo.get('model')
      boolean succes = buildEnumFromVendorExtension(cm) ||
                  buildEnumFromValues(cm)
      for (CodegenProperty var : cm.vars) {
        updateCodegenPropertyEnum(var)
      }
    }
    return objs
  }

  /**
    * Builds the set of enum members from their declared value.
    *
    * @return {@code true} if the enum was built
    */
  private boolean buildEnumFromValues(CodegenModel cm) {
    if (!cm.isEnum || cm.allowableValues == null) {
      return false
    }
    Map<String, Object> allowableValues = cm.allowableValues
    List<Object> values = (List<Object>) allowableValues.get('values')
    List<Map<String, String>> enumVars =
              new ArrayList<Map<String, String>>()
    String commonPrefix = findCommonPrefixOfVars(values)
    int truncateIdx = commonPrefix.length()
    for (Object value : values) {
      Map<String, String> enumVar = new HashMap<String, String>()
      String enumName
      if (truncateIdx == 0) {
        enumName = value.toString()
      } else {
        enumName = value.toString().substring(truncateIdx)
        if (''.equals(enumName)) {
          enumName = value.toString()
        }
      }
      enumVar.put('name', toEnumVarName(enumName, cm.dataType))
      enumVar.put('value', toEnumValue(value.toString(), cm.dataType))
      enumVars.add(enumVar)
    }
    cm.allowableValues.put('enumVars', enumVars)
    return true
  }

  /**
    * Builds the set of enum members from a vendor extension.
    *
    * @return {@code true} if the enum was built
    */
  private boolean buildEnumFromVendorExtension(CodegenModel cm) {
    if (!cm.isEnum || cm.allowableValues == null ||
              !useEnumExtension ||
              !cm.vendorExtensions.containsKey('x-enum-values')) {
      return false
              }
    Object extension = cm.vendorExtensions.get('x-enum-values')
    List<Map<String, Object>> values =
              (List<Map<String, Object>>) extension
    List<Map<String, String>> enumVars =
              new ArrayList<Map<String, String>>()
    for (Map<String, Object> value : values) {
      Map<String, String> enumVar = new HashMap<String, String>()
      String name = camelize((String) value.get('identifier'), true)
      if (name.matches("^\\d.*")) {
        name = 'n' + name
      }
      if (isReservedWord(name)) {
        name = escapeReservedWord(name)
      }
      enumVar.put('name', name)
      enumVar.put('value', toEnumValue(
                  value.get('numericValue').toString(), cm.dataType))
      if (value.containsKey('description')) {
        enumVar.put('description', value.get('description').toString())
      }
      enumVars.add(enumVar)
    }
    cm.allowableValues.put('enumVars', enumVars)
    return true
  }

  @Override
  public String toEnumVarName(String value, String datatype) {
    if (value.length() == 0) {
      return 'empty'
    }
    String var = value.replaceAll("\\W+", '_')
    if ('number'.equalsIgnoreCase(datatype) ||
              'int'.equalsIgnoreCase(datatype)) {
      var = 'Number' + var
    }
    var = camelize(var, true)
    if (var.matches("^\\d.*")) {
        var = 'n' + var
    }
    if (isReservedWord(var)) {
      var = escapeReservedWord(var)
    }
    return var
  }

  @Override
  public String toEnumValue(String value, String datatype) {
    if ('number'.equalsIgnoreCase(datatype) ||
          'int'.equalsIgnoreCase(datatype)) {
      return value
    } else {
      return "\'" + escapeText(value) + "\'"
    }
  }

  @Override
  public String toOperationId(String operationId) {
    // method name cannot use reserved keyword, e.g. return
    if (isReservedWord(operationId)) {
      String newOperationId = camelize('call_' + operationId, true)
      LOGGER.warn(operationId + ' (reserved word) cannot be used as method name. Renamed to ' + newOperationId)
      return newOperationId
    }

    return camelize(operationId, true)
  }

  public void setBrowserClient(boolean browserClient) {
    this.browserClient = browserClient
  }

  public void setPubName(String pubName) {
    this.pubName = pubName
  }

  public void setPubVersion(String pubVersion) {
    this.pubVersion = pubVersion
  }

  public void setPubDescription(String pubDescription) {
    this.pubDescription = pubDescription
  }

  public void setUseEnumExtension(boolean useEnumExtension) {
    this.useEnumExtension = useEnumExtension
  }

  @Override
  public String escapeQuotationMark(String input) {
    // remove " to avoid code injection
    return input.replace("\'", '')
  }

  @Override
  public String escapeUnsafeCharacters(String input) {
    return input.replace('*/', '*_/').replace('/*', '/_*')
  }

}
