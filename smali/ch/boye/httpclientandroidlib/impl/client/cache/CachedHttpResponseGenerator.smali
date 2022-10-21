.class Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
.super Ljava/lang/Object;
.source "CachedHttpResponseGenerator.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    return-void
.end method

.method private addMissingContentLengthHeader(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 4

    .line 152
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->transferEncodingIsPresent(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Content-Length"

    .line 155
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_1
    return-void
.end method

.method private transferEncodingIsPresent(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 1

    const-string v0, "Transfer-Encoding"

    .line 164
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4

    .line 105
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v2, 0x130

    const-string v3, "Not Modified"

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    const-string v1, "Date"

    .line 112
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    const-string v1, "ETag"

    .line 120
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_1
    const-string v1, "Content-Location"

    .line 125
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 127
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_2
    const-string v1, "Expires"

    .line 133
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_3
    const-string v1, "Cache-Control"

    .line 138
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 140
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_4
    const-string v1, "Vary"

    .line 143
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 145
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_5
    return-object v0
.end method

.method generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 73
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 78
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;

    invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;-><init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 80
    invoke-direct {p0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->addMissingContentLengthHeader(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 81
    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 84
    :cond_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    const-wide/32 v4, 0x7fffffff

    const-string p1, "Age"

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const-string v0, "2147483648"

    .line 87
    invoke-interface {v1, p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method
