.class public Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;-><init>()V

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    const/16 p2, 0x400

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;->init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method