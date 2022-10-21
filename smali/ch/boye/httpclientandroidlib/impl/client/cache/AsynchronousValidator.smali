.class Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
.super Ljava/lang/Object;
.source "AsynchronousValidator.java"


# instance fields
.field private final cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

.field private final cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final queued:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 8

    .line 71
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersCore()I

    move-result v1

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v2

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkerIdleLifetimeSecs()I

    move-result v0

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getRevalidationQueueSize()I

    move-result p2

    invoke-direct {v6, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, p1, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 89
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    .line 90
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    .line 91
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    .line 92
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    return-void
.end method


# virtual methods
.method getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 138
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method getScheduledIdentifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized markComplete(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 10

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v9, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->queued:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    :try_start_2
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Revalidation for ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "] not scheduled: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
