.class public Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;
.super Ljava/lang/Object;
.source "BasicHttpCacheStorage.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result p1

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    .line 94
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;->entries:Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;->update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
