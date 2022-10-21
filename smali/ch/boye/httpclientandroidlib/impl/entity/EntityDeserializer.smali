.class public Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content length strategy may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP message may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session input buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doDeserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;-><init>()V

    .line 94
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x2

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 97
    invoke-virtual {v0, v3, v4}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 98
    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 100
    invoke-virtual {v0, v5}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 101
    invoke-virtual {v0, v3, v4}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 102
    new-instance v1, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0, v5}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 105
    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContentLength(J)V

    .line 106
    new-instance v3, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    :goto_0
    const-string p1, "Content-Type"

    .line 109
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 111
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    :cond_2
    const-string p1, "Content-Encoding"

    .line 113
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    :cond_3
    return-object v0
.end method
