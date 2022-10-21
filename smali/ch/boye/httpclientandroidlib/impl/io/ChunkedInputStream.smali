.class public Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lch/boye/httpclientandroidlib/Header;

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 84
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    new-array v1, v0, [Lch/boye/httpclientandroidlib/Header;

    .line 86
    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;

    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 99
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 100
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/4 p1, 0x1

    .line 101
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session input buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getChunkSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 238
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v4}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v3

    .line 243
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 251
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_4

    return v3

    .line 255
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 257
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v0

    .line 260
    :cond_5
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1, v3, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 262
    :catch_0
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    .line 213
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v1, 0x0

    .line 214
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 217
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTrailerHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 281
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v1, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    .line 108
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_0

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 298
    :goto_0
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 303
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 302
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 303
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public getFooters()[Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .line 309
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->footers:[Lch/boye/httpclientandroidlib/Header;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_3

    .line 131
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 135
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V

    .line 136
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_1

    return v1

    .line 140
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 142
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 143
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    .line 144
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    :cond_2
    return v0

    .line 129
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

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_4

    .line 167
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 171
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->nextChunk()V

    .line 172
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_1

    return v1

    .line 176
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 177
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 179
    iget p2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    .line 180
    iget p3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt p2, p3, :cond_2

    const/4 p2, 0x3

    .line 181
    iput p2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->state:I

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->eof:Z

    .line 186
    new-instance p1, Lch/boye/httpclientandroidlib/TruncatedChunkException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Truncated chunk ( expected size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->chunkSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedInputStream;->pos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
