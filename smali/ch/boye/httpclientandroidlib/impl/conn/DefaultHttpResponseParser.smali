.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser<",
        "Lch/boye/httpclientandroidlib/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 64
    new-instance p1, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class p2, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p3, :cond_0

    .line 79
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 80
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response factory may not be null"

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

    .line 61
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 92
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    :goto_1
    new-instance v4, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 98
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v5, v6, v4}, Lch/boye/httpclientandroidlib/message/LineParser;->hasProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0, v4}, Lch/boye/httpclientandroidlib/message/LineParser;->parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_4

    .line 101
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p0, v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->reject(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 106
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_4
    new-instance p1, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v0, "The server failed to respond with a valid HTTP response"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected reject(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
