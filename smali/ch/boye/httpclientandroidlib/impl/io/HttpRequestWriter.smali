.class public Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter<",
        "Lch/boye/httpclientandroidlib/HttpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    check-cast p1, Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;->writeHeadLine(Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method protected writeHeadLine(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 56
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-void
.end method
