import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

import 'app_header.dart';
import 'src/services/database_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives,
    materialDirectives,
    NgIf,
    AppHeader,
    NgModel,
    MaterialRadioComponent
  ],
  providers: const [materialProviders, DatabaseService],
)
class AppComponent {
  final DatabaseService dbService;

  AppComponent(DatabaseService this.dbService);
// Nothing here yet. All logic is in TodoListComponent.
}
