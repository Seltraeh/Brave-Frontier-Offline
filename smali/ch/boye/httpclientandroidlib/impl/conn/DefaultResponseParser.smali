.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser<",
        "Lch/boye/httpclientandroidlib/HttpMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxGarbageLines:I

.field private final responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 67
    new-instance p1, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class p2, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-eqz p3, :cond_0

    .line 83
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 84
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 85
    invoke-virtual {p0, p4}, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->getMaxGarbageLines(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getMaxGarbageLines(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .locals 2

    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    .line 89
    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 103
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    :goto_1
    new-instance v4, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 109
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v5, v6, v4}, Lch/boye/httpclientandroidlib/message/LineParser;->hasProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0, v4}, Lch/boye/httpclientandroidlib/message/LineParser;->parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_4

    .line 112
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-ge v1, v2, :cond_4

    .line 117
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
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
