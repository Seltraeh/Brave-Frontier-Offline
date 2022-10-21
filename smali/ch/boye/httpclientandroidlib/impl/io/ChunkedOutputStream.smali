.class public Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    .line 87
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 58
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 61
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    .line 74
    new-array p2, p2, [B

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    .line 75
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    .line 188
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->finish()V

    .line 189
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    .line 130
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    .line 178
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method protected flushCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_0

    .line 96
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 98
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 99
    iput v3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    :cond_0
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 111
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string p2, ""

    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 112
    iput v3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 143
    array-length p1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v0

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeClosingChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    return-void
.end method
