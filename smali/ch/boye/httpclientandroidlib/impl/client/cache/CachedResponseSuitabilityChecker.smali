.class Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 1

    .line 72
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 64
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    .line 65
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result p1

    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    .line 66
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    .line 67
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    .line 68
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide p1

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    return-void
.end method

.method private etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 8

    const-string v0, "ETag"

    .line 279
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 280
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "If-None-Match"

    .line 281
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 283
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 284
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 285
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    .line 286
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J
    .locals 16

    const-string v0, "Cache-Control"

    move-object/from16 v1, p1

    .line 95
    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    aget-object v8, v0, v5

    .line 96
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 97
    invoke-interface {v11}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "max-stale"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_4

    .line 98
    invoke-interface {v11}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v15, ""

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    cmp-long v12, v6, v3

    if-nez v12, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_3

    .line 103
    :cond_1
    :try_start_0
    invoke-interface {v11}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v15, v11, v13

    if-gez v15, :cond_2

    goto :goto_2

    :cond_2
    move-wide v13, v11

    :goto_2
    cmp-long v11, v6, v3

    if-eqz v11, :cond_3

    cmp-long v11, v13, v6

    if-gez v11, :cond_4

    :catch_0
    :cond_3
    move-wide v6, v13

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-wide v6
.end method

.method private hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    const-string v0, "If-None-Match"

    .line 265
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    .line 269
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    const-string v0, "If-Range"

    .line 259
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-Unmodified-Since"

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z
    .locals 3

    .line 333
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 335
    :try_start_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z
    .locals 8

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    iget v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v6, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 81
    :cond_2
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_3

    return v2

    .line 83
    :cond_3
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {p2, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide p1

    cmp-long p3, v3, p1

    if-lez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 5

    const-string v0, "Last-Modified"

    .line 305
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 309
    :try_start_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 p2, 0x0

    if-nez v0, :cond_1

    return p2

    :cond_1
    const-string v1, "If-Modified-Since"

    .line 319
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 321
    :try_start_1
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 322
    invoke-virtual {v3, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_3

    :cond_2
    return p2

    :catch_1
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 4

    .line 87
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 89
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    const-string v3, "s-maxage"

    invoke-virtual {v0, p1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 5

    .line 239
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    .line 240
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v3

    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public canCachedResponseBeUsed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 135
    invoke-direct {v1, v2, v0, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 136
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Cache entry was not fresh enough"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 140
    :cond_0
    iget-object v4, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v4, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Cache entry Content-Length and header information do not match"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 145
    :cond_1
    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Request contained conditional headers we don\'t handle"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 150
    :cond_2
    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p3 .. p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v4

    const/16 v6, 0x130

    if-ne v4, v6, :cond_3

    return v5

    .line 154
    :cond_3
    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v0, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_4

    return v5

    :cond_4
    const-string v4, "Cache-Control"

    .line 158
    invoke-interface {v0, v4}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    array-length v4, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_d

    aget-object v7, v0, v6

    .line 159
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_c

    aget-object v10, v7, v9

    .line 160
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no-cache"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 161
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response contained NO CACHE directive, cache was not suitable"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 165
    :cond_5
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no-store"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 166
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response contained NO STORE directive, cache was not suitable"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 170
    :cond_6
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "max-age"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 172
    :try_start_0
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 173
    iget-object v12, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v12, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v12

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-lez v11, :cond_7

    .line 174
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response from cache was NOT suitable due to max age"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 179
    iget-object v2, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from cache was malformed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 184
    :cond_7
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "max-stale"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Response from cache was malformed: "

    if-eqz v11, :cond_8

    .line 186
    :try_start_1
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 187
    iget-object v13, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v13, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v13

    move v15, v6

    int-to-long v5, v11

    cmp-long v11, v13, v5

    if-lez v11, :cond_9

    .line 188
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response from cache was not suitable due to Max stale freshness"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    return v2

    :catch_1
    move-exception v0

    .line 193
    iget-object v2, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 v2, 0x0

    return v2

    :cond_8
    move v15, v6

    .line 198
    :cond_9
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "min-fresh"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 200
    :try_start_2
    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v13, v5, v10

    if-gez v13, :cond_a

    const/4 v10, 0x0

    return v10

    .line 202
    :cond_a
    iget-object v10, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v10, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v10

    .line 203
    iget-object v13, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v13, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v13

    sub-long/2addr v13, v10

    cmp-long v10, v13, v5

    if-gez v10, :cond_b

    .line 205
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response from cache was not suitable due to min fresh freshness requirement"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    .line 211
    iget-object v2, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 v5, 0x0

    return v5

    :cond_b
    const/4 v5, 0x0

    add-int/lit8 v9, v9, 0x1

    move v6, v15

    goto/16 :goto_1

    :cond_c
    move v15, v6

    add-int/lit8 v6, v15, 0x1

    goto/16 :goto_0

    .line 218
    :cond_d
    iget-object v0, v1, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response from cache was suitable"

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
