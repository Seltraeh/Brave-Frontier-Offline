.class public Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/EofSensor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private eof:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;-><init>()V

    if-eqz p1, :cond_2

    .line 77
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    if-gez p2, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    const/16 p2, 0x400

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected fillBuffer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method

.method public isDataAvailable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 102
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1

    :cond_0
    :goto_1
    return v0
.end method

.method public isEof()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method
