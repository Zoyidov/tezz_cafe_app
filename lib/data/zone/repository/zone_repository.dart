import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/zone/data_source/zone_service_repo.dart';
import 'package:tezz_cafe_app/data/zone/models/zone_model.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class ZoneRepository {
  final ZoneService zoneService;

  ZoneRepository(this.zoneService);

  Future<Either<Failure, List<ZoneModel>>> getAllZones() async {
    try {
      final zones = await zoneService.getAllZones();
      return Right(zones);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
