import 'package:drift/drift.dart';
import 'package:sep490_mo/core/database/app_database.dart';

part 'post_dao.g.dart';

@DriftAccessor(tables: [PostTbl])
class PostDao extends DatabaseAccessor<AppDatabase> with _$PostDaoMixin {
  PostDao(super.attachedDatabase);

  /// Insert or update postTbls in cache (batched)
  Future<void> cachePosts(List<PostEntity> posts) async {
    await batch((b) {
      b.insertAllOnConflictUpdate(postTbl, posts);
    });
  }

  /// Get cached postTbls, ordered by cache time (newest first)
  // May not be used
  Future<List<PostEntity>> getCachedPosts({required int limit}) {
    return (select(postTbl)
          ..orderBy([(t) => OrderingTerm.desc(t.cachedAt)])
          ..limit(limit))
        .get();
  }

  /// Get cached postTbls for a specific hub with pagination
  // May not be used
  Future<List<PostEntity>> getCachedPostsByHub({
    required int hubId,
    required int limit,
  }) {
    return (select(postTbl)
          ..where((tbl) => tbl.fanHubId.equals(hubId))
          ..orderBy([(t) => OrderingTerm.desc(t.cachedAt)])
          ..limit(limit))
        .get();
  }

  /// Get a single cached postTbl by ID
  Future<PostEntity?> getCachedPostById(int postTblId) {
    return (select(
      postTbl,
    )..where((tbl) => tbl.postId.equals(postTblId))).getSingleOrNull();
  }

  // #Watch for constant update and ui rebuild

  /// Watch all cached postTbls reactively
  Stream<List<PostEntity>> watchCachedPosts({
    required int limit,
    required int offset,
  }) {
    return (select(postTbl)
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
          ..limit(limit, offset: offset))
        .watch();
  }

  /// Watch cached postTbls for a specific hub
  Stream<List<PostEntity>> watchCachedPostsByHub({
    required int hubId,
    required int limit,
    required int offset,
  }) {
    return (select(postTbl)
          ..where((tbl) => tbl.fanHubId.equals(hubId))
          ..orderBy([(t) => OrderingTerm.desc(t.cachedAt)])
          ..limit(limit, offset: offset))
        .watch();
  }

  /// Watch a single postTbl by ID
  // May not be used
  Stream<PostEntity?> watchCachedPostById(int postTblId) {
    return (select(
      postTbl,
    )..where((tbl) => tbl.postId.equals(postTblId))).watchSingleOrNull();
  }

  /// Delete postTbls for a specific hub
  Future<void> deleteHubPosts(int hubId) {
    return (delete(postTbl)..where((tbl) => tbl.fanHubId.equals(hubId))).go();
  }

  /// Delete a single postTbl
  Future<void> deletePost(int postTblId) {
    return (delete(postTbl)..where((tbl) => tbl.postId.equals(postTblId))).go();
  }

  /// Evict oldest postTbls beyond the cache limit
  Future<void> evictOldPosts(int maxCacheSize) async {
    final currentCount = await getPostCount();
    if (currentCount <= maxCacheSize) return;

    final allPosts = await (select(
      postTbl,
    )..orderBy([(t) => OrderingTerm.desc(t.cachedAt)])).get();

    final toDeleteIds = allPosts
        .skip(maxCacheSize)
        .map((p) => p.postId)
        .toList();

    await (delete(postTbl)..where((tbl) => tbl.postId.isIn(toDeleteIds))).go();
  }

  /// Clear all cached postTbls
  Future<void> clearAllPosts() async {
    await delete(postTbl).go();
  }

  /// Get total count of cached postTbls
  Future<int> getPostCount() async {
    final countExp = postTbl.postId.count();

    /// AddColumn = Add .. in "Select .. from PostCacheTable", very misdirecting name
    /// Select = select *, selectOnly without chain = empty
    final query = selectOnly(postTbl)..addColumns([countExp]);
    final result = await query.getSingle();
    return result.read(countExp) ?? 0;
  }
}
