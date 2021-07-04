mkdir $1
cd $1
mkdir widgets
cp ../../helpers/empty_view.dart $1_view.dart
touch ../../viewmodels/$1_viewmodel.dart
code $1_view.dart