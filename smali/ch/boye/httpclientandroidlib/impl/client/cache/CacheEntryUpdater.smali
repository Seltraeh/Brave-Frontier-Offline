.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;
.super Ljava/lang/Object;
.source "CacheEntryUpdater.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    return-void
.end method

.method private entryAndResponseHaveDateHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 1

    const-string v0, "Date"

    .line 170
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private entryDateHeaderNewerThenResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 2

    const-string v0, "Date"

    const/4 v1, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 156
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p2

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private removeCacheEntry1xxWarnings(Ljava/util/List;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 139
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 144
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeCacheHeadersThatMatchResponse(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 126
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected mergeHeaders(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)[Lch/boye/httpclientandroidlib/Header;
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->entryAndResponseHaveDateHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->entryDateHeaderNewerThenResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-direct {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->removeCacheHeadersThatMatchResponse(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 115
    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->removeCacheEntry1xxWarnings(Ljava/util/List;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 116
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lch/boye/httpclientandroidlib/Header;

    return-object p1
.end method

.method public updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p5}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->mergeHeaders(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v6

    .line 90
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 93
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object p1

    .line 94
    invoke-interface {p5}, Lch/boye/httpclientandroidlib/client/cache/Resource;->dispose()V

    move-object v7, p1

    goto :goto_0

    :cond_0
    move-object v7, v0

    .line 96
    :goto_0
    new-instance p1, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v5

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    return-object p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response must have 304 status code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
