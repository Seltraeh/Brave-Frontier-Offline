.class Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;


# instance fields
.field private final cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

.field private final responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 66
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    .line 67
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    .line 68
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    .line 69
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    .line 70
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    .line 71
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    .line 72
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {p1, p3, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2

    .line 76
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;)Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
    .locals 0

    .line 53
    iget-object p0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    return-object p0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ETag"

    .line 313
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 315
    :cond_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;

    invoke-direct {v2, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cacheAndReturnResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v0

    .line 248
    :try_start_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    .line 250
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    .line 255
    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    new-instance v6, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    move-object v0, v6

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    .line 265
    invoke-virtual {p0, p1, p2, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 266
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {p1, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 271
    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p2

    invoke-static {p2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consumeQuietly(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 272
    throw p1

    :catch_1
    move-exception p1

    .line 268
    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p2

    invoke-static {p2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 269
    throw p1
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    move-object p2, p3

    .line 199
    :cond_0
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 202
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v1

    .line 203
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V

    :cond_1
    move-object v7, v1

    .line 205
    new-instance v8, Ljava/util/HashMap;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 206
    invoke-interface {v8, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p1, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v5

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/util/Map;)V

    return-object p1
.end method

.method public flushCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 5

    const-string v0, "Content-Length"

    .line 175
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 176
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "text/plain;charset=UTF-8"

    .line 178
    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "Received incomplete response with Content-Length %d but actual body length %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 183
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance p2, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-object v1
.end method

.method public getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 285
    :cond_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object v0

    .line 287
    :cond_2
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p1

    return-object p1
.end method

.method getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;
    .locals 7

    .line 277
    new-instance v6, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;JLch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-object v6
.end method

.method public getVariantCacheEntriesWithEtags(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 303
    invoke-direct {p0, v1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z
    .locals 4

    .line 157
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xce

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "Content-Length"

    .line 162
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 166
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v2

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    return v1
.end method

.method public reuseVariantEntryFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 138
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance p3, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 152
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not update key ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    :goto_0
    return-void
.end method

.method storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p2, p1, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-void
.end method

.method storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, p1, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 116
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not update key ["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p3

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-object p3
.end method

.method public updateVariantCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {p2, p7, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-object p1
.end method
