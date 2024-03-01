import 'package:tezz_cafe_app/data/activate_table/data_source/activate_serice_repo.dart';

class ActivateTableRepository {
  final ActivateTableService activateTableService;

  ActivateTableRepository(this.activateTableService);

  Future<void> activateTable(String tableId) async {
    try {
      await activateTableService.activateTable(tableId);
    } catch (e) {
      throw 'Failed to activate table: $e';
    }
  }
}