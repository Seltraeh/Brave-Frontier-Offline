.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 72
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    const/16 v0, 0x200

    .line 86
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    return-void
.end method

.method private appendDecoded(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 359
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 361
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 362
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 364
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_2

    const/16 v0, 0x400

    .line 365
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    .line 367
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 369
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 371
    invoke-direct {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 374
    invoke-direct {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    .line 375
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 384
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 386
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 387
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    .line 388
    :goto_0
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 389
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p3

    invoke-virtual {p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return p1
.end method

.method private lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 315
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-lez v0, :cond_1

    .line 320
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 325
    :cond_1
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;II)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 331
    :goto_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V

    return v0
.end method

.method private lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v1, p2, 0x1

    .line 339
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-le p2, v0, :cond_0

    .line 340
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sub-int/2addr p2, v0

    .line 345
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v1, v0, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 349
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private locateLF()I
    .locals 3

    .line 232
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    :goto_0
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 150
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 136
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .line 129
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected fillBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v0, :cond_1

    .line 156
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 158
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_0
    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 161
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 164
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 165
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 166
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v1

    .line 170
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 171
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    return v1
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .line 406
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .locals 2

    .line 177
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    .line 110
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 111
    new-array p1, p2, [B

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 113
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 114
    new-instance p1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 115
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    .line 116
    sget-object p2, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 p1, -0x1

    const-string p2, "http.connection.max-line-length"

    .line 118
    invoke-interface {p3, p2, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    const/16 p1, 0x200

    const-string p2, "http.connection.min-chunk-limit"

    .line 119
    invoke-interface {p3, p2, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    .line 120
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    .line 121
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getMalformedInputAction(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 122
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getUnmappableInputAction(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()I
    .locals 2

    .line 143
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 188
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 228
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 197
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    return p3

    .line 203
    :cond_1
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    if-le p3, v0, :cond_3

    .line 204
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 206
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_2
    return p1

    .line 211
    :cond_3
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v1

    .line 217
    :cond_4
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 218
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    return p3
.end method

.method public readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 263
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 266
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, p1, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 271
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v3, v4, v0

    .line 272
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v5, v6, v0, v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 273
    iput v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v4

    .line 278
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v5, v6, v4, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    .line 279
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 281
    :cond_3
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v2

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 286
    :cond_4
    :goto_2
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v3

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-ge v3, v4, :cond_5

    goto :goto_0

    .line 287
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Maximum line length limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-ne v2, v3, :cond_7

    .line 290
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->linebuffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    .line 294
    :cond_7
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result p1

    return p1

    .line 257
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Char array buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 397
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 399
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
