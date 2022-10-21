.class public Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content length strategy may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->lenStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    return-object p2

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 92
    new-instance p2, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V

    return-object p2

    .line 94
    :cond_1
    new-instance p2, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;

    invoke-direct {p2, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V

    return-object p2
.end method

.method public serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->doSerialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/io/OutputStream;

    move-result-object p1

    .line 122
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 123
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP entity may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP message may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session output buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
