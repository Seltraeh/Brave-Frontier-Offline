.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/HttpMessageWriter;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lch/boye/httpclientandroidlib/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/io/HttpMessageWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field protected final lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

.field protected final sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 71
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 72
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 p3, 0x80

    invoke-direct {p1, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    :goto_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    return-void

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session input buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public write(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V

    .line 91
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->headerIterator()Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v2, v3, v0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 97
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-void

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP message may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
