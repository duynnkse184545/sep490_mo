import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/database/daos/user_dao.dart';
import 'package:sep490_mo/features/user/data/datasources/local/user_local_datasource.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final UserDao _userDao;

  UserLocalDataSourceImpl(this._userDao);

  @override
  Future<void> cacheUser(User user) async {
    try {
      await _userDao.cacheUser(user);
    } catch (e) {
      throw CacheException('Failed to cache user: $e');
    }
  }

  @override
  Future<User?> getCachedUser() async {
    try {
      return await _userDao.getCachedUser();
    } catch (e) {
      throw CacheException('Failed to get cached user: $e');
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      await _userDao.clearCache();
    } catch (e) {
      throw CacheException('Failed to clear user cache: $e');
    }
  }
}
