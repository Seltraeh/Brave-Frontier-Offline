.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private total:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    const/4 v2, 0x0

    .line 67
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-eqz p1, :cond_1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 87
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 88
    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session output buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

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

    .line 106
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 134
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 135
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    .line 136
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    :cond_0
    return-void

    .line 132
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

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_2

    .line 114
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sub-long/2addr v2, v0

    int-to-long v0, p3

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-int p3, v2

    .line 119
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 120
    iget-wide p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J

    :cond_1
    return-void

    .line 112
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
