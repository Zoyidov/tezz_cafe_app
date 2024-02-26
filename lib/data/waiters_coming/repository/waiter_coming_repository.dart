import 'package:tezz_cafe_app/data/waiters_coming/data_source/waiter_coming_serice_repo.dart';
import 'package:tezz_cafe_app/data/waiters_coming/model/waiter_coming_model.dart';

class WaiterComingRepository {
  final WaiterComingService waiterComingService;

  WaiterComingRepository(this.waiterComingService);

  Future<List<WaiterComingModel>> fetchWaiterComing() async {
    try {
      return await waiterComingService.fetchWaiterComing();
    } catch (e) {
      throw Exception('Failed to fetch waiter coming models: $e');
    }
  }

  Future<void> updateWaiterComing(String id) async {
    try {
      await waiterComingService.updateWaiterComing(id);
    } catch (e) {
      throw Exception('Failed to update waiter coming: $e');
    }
  }

  Future<void> deleteWaiterComing(String id) async {
    try {
      await waiterComingService.deleteWaiterComing(id);
    } catch (e) {
      throw Exception('Failed to delete waiter coming: $e');
    }
  }
}
