import 'package:drift/drift.dart';
import '../../../../../core/database/app_database.dart';

part 'workspace_dao.g.dart';

@DriftAccessor(tables: [Workspaces])
class WorkspaceDao extends DatabaseAccessor<AppDatabase> with _$WorkspaceDaoMixin {
  WorkspaceDao(super.attachedDatabase);
}
