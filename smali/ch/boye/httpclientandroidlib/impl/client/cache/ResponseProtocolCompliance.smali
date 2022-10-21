.class Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 1

    .line 210
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x130

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1

    .line 184
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const-string p1, "Content-Length"

    .line 192
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 193
    invoke-interface {p2, p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2

    const-string v0, "Date"

    .line 166
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Allow"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content-Encoding"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "Content-Language"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "Content-Length"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "Content-MD5"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "Content-Range"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "Content-Type"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "Last-Modified"

    aput-object v4, v1, v2

    .line 202
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0x130

    if-ne v2, v4, :cond_0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 203
    aget-object v2, v1, v3

    .line 204
    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Range"

    .line 174
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 179
    new-instance p1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    const-string p2, "partial content was returned for a request that did not ask for it"

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 0

    .line 251
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object p1

    return-object p1
.end method

.method private identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Content-Encoding"

    .line 137
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 138
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 139
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v8, v2, v6

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_1
    if-ge v12, v10, :cond_3

    aget-object v14, v8, v12

    .line 145
    invoke-interface {v14}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v5, "identity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    if-nez v13, :cond_2

    const-string v5, ","

    .line 148
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    .line 154
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 155
    new-instance v8, Lch/boye/httpclientandroidlib/message/BasicHeader;

    invoke-direct {v8, v1, v5}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    return-void

    .line 159
    :cond_6
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    .line 160
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/Header;

    .line 161
    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1

    const-string v0, "TE"

    .line 246
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    .line 247
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method private requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    .line 224
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_2

    .line 225
    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 227
    :cond_2
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 228
    new-instance p1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    const-string p2, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 0

    .line 255
    instance-of p1, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    return p1
.end method

.method private transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object p1

    .line 238
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method private warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 13

    :try_start_0
    const-string v0, "Date"

    .line 105
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Warning"

    .line 112
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 114
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_6

    .line 116
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    aget-object v8, v2, v6

    .line 119
    invoke-static {v8}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarningValues(Lch/boye/httpclientandroidlib/Header;)[Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 120
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 121
    invoke-virtual {v12, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_4

    .line 122
    :cond_3
    :goto_3
    new-instance v12, Lch/boye/httpclientandroidlib/message/BasicHeader;

    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v1, v11}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    .line 129
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    .line 130
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/Header;

    .line 131
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_5

    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public ensureProtocolCompliance(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    const/4 v0, 0x0

    .line 76
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 87
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 89
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 91
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 93
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method
