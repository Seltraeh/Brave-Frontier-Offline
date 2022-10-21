.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    const/4 v2, 0x0

    .line 68
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    const/4 v2, 0x0

    .line 73
    iput-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    if-eqz p1, :cond_1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 91
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 92
    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v1, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    .line 123
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :try_start_0
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 108
    :goto_0
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_3

    .line 141
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    .line 144
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 146
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :goto_0
    return v0

    .line 138
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 175
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    :cond_0
    int-to-long v5, p3

    add-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    sub-long/2addr v2, v0

    long-to-int p3, v2

    .line 182
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 183
    iget-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    new-instance p1, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-lez p1, :cond_4

    .line 189
    iget-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :cond_4
    return p1

    .line 172
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 223
    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v5, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, v0

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_2

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    .line 227
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {p0, v2, v5, v7}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v3
.end method
