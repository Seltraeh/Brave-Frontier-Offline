.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
.implements Lch/boye/httpclientandroidlib/io/BufferInfo;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final CRLF:[B


# instance fields
.field private ascii:Z

.field private bbuf:Ljava/nio/ByteBuffer;

.field private buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

.field private charset:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 71
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ASCII:Ljava/nio/charset/Charset;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    const/16 v0, 0x200

    .line 81
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    return-void
.end method

.method private handleEncodingResult(Ljava/nio/charset/CoderResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 284
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 285
    :goto_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write(I)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeEncoded(Ljava/nio/CharBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 264
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 265
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 267
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/16 v0, 0x400

    .line 268
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    .line 270
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 271
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 273
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    .line 277
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 141
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 127
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method protected createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .line 120
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 155
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->clear()V

    .line 149
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_0
    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .line 292
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    .line 105
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    .line 106
    new-instance p1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    .line 107
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/nio/charset/Charset;

    .line 108
    sget-object p2, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->encoder:Ljava/nio/charset/CharsetEncoder;

    const/16 p1, 0x200

    const-string p2, "http.connection.min-chunk-limit"

    .line 110
    invoke-interface {p3, p2, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    .line 111
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->createTransportMetrics()Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    .line 112
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getMalformedInputAction(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->onMalformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 113
    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getUnmappableInputAction(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->onUnMappableInputAction:Ljava/nio/charset/CodingErrorAction;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()I
    .locals 1

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 194
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 187
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->minChunkLimit:I

    if-gt p3, v0, :cond_3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 179
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    goto :goto_1

    .line 167
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    .line 169
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->metrics:Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :goto_1
    return-void
.end method

.method public writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    .line 240
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 241
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 243
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    .line 245
    :cond_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->buffer:Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_2
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 255
    :cond_4
    sget-object p1, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 211
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 220
    :cond_2
    sget-object p1, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->write([B)V

    return-void
.end method
