#!/bin/bash

snake_to_camel() {
    local input="$1"
    # Convert to camelCase
    # First, capitalize the first letter of each word, then remove the underscores
    echo "$input" | awk -F'_' '{
        for (i=1; i<=NF; i++) {
            if (i == 1) {
                printf "%s", $i;  # Print the first word as is
            } else {
                printf "%s", toupper(substr($i, 1, 1)) substr($i, 2);  # Capitalize the first letter of subsequent words
            }
        }
        print "";  # New line at the end
    }'
}

# Check if the user provided an argument
if [ -z "$1" ]; then
  echo "Please provide a folder name."
  exit 1
fi

# Use the provided folder name
feature_name="$1"
base_folder="src"
subfolder_data="$base_folder/$feature_name/data"
subfolder_domain="$base_folder/$feature_name/domain"
subfolder_presentation="$base_folder/$feature_name/presentation"

# data layer
data_sources="$subfolder_data/data_sources"
models="$subfolder_data/models"
data_repositories="$subfolder_data/repositories"

# domain layer
domain_usecases="$subfolder_domain/usecases"
domain_repositories="$subfolder_domain/repositories"

# presentation layer
blocs="$subfolder_presentation/blocs"
cubits="$subfolder_presentation/cubits"
pages="$subfolder_presentation/pages"

# Create the main folder and subfolder
mkdir -p "$data_sources"
mkdir -p "$models"
mkdir -p "$data_repositories"
mkdir -p "$domain_usecases"
mkdir -p "$domain_repositories"
mkdir -p "$blocs"
mkdir -p "$cubits"
mkdir -p "$pages"

touch "$data_sources/${feature_name}_data_source.dart"
touch "$data_sources/${feature_name}_remote_data_source_impl.dart"
touch "$data_sources/${feature_name}_local_data_source_impl.dart"

touch "$data_repositories/${feature_name}_repository_impl.dart"

touch "$domain_repositories/${feature_name}_repository.dart"

capitalized=$(echo "$feature_name" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')
class_name=$(snake_to_camel "$capitalized")
data_source_class="${class_name}DataSource"
repository_class="${class_name}Repository"

# datasource file creations

echo "abstract class ${data_source_class} {
  void getData();
}" > "$data_sources/${feature_name}_data_source.dart"

# local data source code
echo -e "import '${feature_name}_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class ${class_name}LocalDataSourceImpl extends ${data_source_class}{
  @override
  void getData() {
    // TODO: implement getData
  }
}" > "$data_sources/${feature_name}_local_data_source_impl.dart"

# remote data source code
echo -e "import '${feature_name}_data_source.dart';

/// This class is responsible for retrieving data from remote 
/// sources like REST APIs, Amplify, Firebase etc.
class ${class_name}RemoteDataSourceImpl extends ${data_source_class}{
  @override
  void getData() {
    // TODO: implement getData
  }
}" > "$data_sources/${feature_name}_remote_data_source_impl.dart"

# repository file creations
echo "import '../../data/data_sources/${feature_name}_data_source.dart';

abstract class ${repository_class} {
  final ${data_source_class} dataSource;

  ${repository_class}({required this.dataSource});
}" > "$domain_repositories/${feature_name}_repository.dart"

echo -e "import '../../domain/repositories/${feature_name}_repository.dart';

class ${class_name}RepositoryImpl extends ${repository_class}{
  ${class_name}RepositoryImpl({required super.dataSource});

}" > "$data_repositories/${feature_name}_repository_impl.dart"

echo "Folders and Dart files created for feature $class_name."
