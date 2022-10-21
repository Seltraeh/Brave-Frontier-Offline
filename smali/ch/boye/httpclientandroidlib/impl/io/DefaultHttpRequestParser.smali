.class public Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "DefaultHttpRequestParser.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser<",
        "Lch/boye/httpclientandroidlib/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private final requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    if-eqz p3, :cond_0

    .line 82
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;

    .line 83
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 96
    new-instance p1, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v0, 0x0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/LineParser;->parseRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpRequestParser;->requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpRequestFactory;->newHttpRequest(Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    const-string v0, "Client closed connection"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
