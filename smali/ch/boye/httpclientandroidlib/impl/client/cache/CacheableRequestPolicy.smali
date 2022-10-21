.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 9

    .line 57
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 60
    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "non-HTTP/1.1 request was not serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v1, "GET"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "non-GET request was not serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string v0, "Pragma"

    .line 70
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 71
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "request with Pragma header was not serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    :cond_2
    const-string v0, "Cache-Control"

    .line 75
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v3, p1, v1

    .line 77
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 78
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "no-store"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Request with no-store was not serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    .line 84
    :cond_3
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no-cache"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Request with no-cache was not serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_6
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Request was serveable from cache"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
