.class Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final sharedCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/16 v2, 0x19a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/Integer;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 79
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    .line 80
    iput-boolean p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    return-void
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 3

    const-string v0, "Cache-Control"

    .line 245
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Expires"

    .line 246
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    const-string v2, "Date"

    .line 247
    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 251
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method private from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 2

    const-string v0, "Via"

    .line 259
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 p1, 0x0

    aget-object v0, v0, p1

    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    const-string v0, "/"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTTP/1.0"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "1.0"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 270
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    .line 274
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object p1

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private unknownStatusCode(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    const/16 v1, 0x65

    if-gt p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_1

    const/16 v1, 0xce

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x12c

    if-lt p1, v1, :cond_2

    const/16 v1, 0x133

    if-gt p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x190

    if-lt p1, v1, :cond_3

    const/16 v1, 0x1a1

    if-gt p1, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1f9

    if-gt p1, v1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
    .locals 11

    const-string v0, "Cache-Control"

    .line 176
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 178
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 179
    array-length v7, p2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, p2, v8

    .line 180
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 4

    const-string v0, "Expires"

    .line 190
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v0, v2

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "public"

    aput-object v2, v0, v1

    .line 197
    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 9

    const-string v0, "Cache-Control"

    .line 162
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 164
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 165
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "no-store"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "no-cache"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v7, :cond_0

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "private"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isResponseCacheable(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 5

    .line 209
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    const-string v1, "Response was not cacheable."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "no-store"

    aput-object v4, v3, v2

    .line 215
    invoke-virtual {p0, p1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 219
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    :cond_2
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v2

    .line 225
    :cond_3
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 229
    :cond_4
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v1, :cond_5

    const-string v1, "Authorization"

    .line 230
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 231
    array-length v1, v1

    if-lez v1, :cond_5

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "s-maxage"

    aput-object v1, p1, v2

    const-string v1, "must-revalidate"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "public"

    aput-object v1, p1, v0

    .line 235
    invoke-virtual {p0, p2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 239
    :cond_5
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result p1

    return p1
.end method

.method public isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 10

    const-string v0, "GET"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Response was not cacheable."

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v0

    .line 98
    :cond_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    .line 99
    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Content-Length"

    .line 110
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    .line 113
    iget-wide v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    return v0

    :cond_4
    const-string v1, "Age"

    .line 117
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 119
    array-length v1, v1

    if-le v1, v2, :cond_5

    return v0

    :cond_5
    const-string v1, "Expires"

    .line 122
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 124
    array-length v1, v1

    if-le v1, v2, :cond_6

    return v0

    :cond_6
    const-string v1, "Date"

    .line 127
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 129
    array-length v3, v1

    if-eq v3, v2, :cond_7

    return v0

    .line 133
    :cond_7
    :try_start_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Vary"

    .line 138
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v5, v1, v4

    .line 139
    invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    .line 140
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    return v0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    :cond_a
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    if-nez p1, :cond_c

    .line 149
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :catch_0
    :cond_d
    return v0
.end method
