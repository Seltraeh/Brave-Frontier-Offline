.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/HttpMessageParser;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lch/boye/httpclientandroidlib/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/io/HttpMessageParser<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


# instance fields
.field private final headerLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private message:Lch/boye/httpclientandroidlib/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private state:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 94
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const-string p1, "http.connection.max-header-count"

    const/4 v0, -0x1

    .line 95
    invoke-interface {p3, p1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I

    const-string p1, "http.connection.max-line-length"

    .line 97
    invoke-interface {p3, p1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;

    :goto_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session input buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 130
    sget-object p3, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object p0

    return-object p0
.end method

.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/io/SessionInputBuffer;",
            "II",
            "Lch/boye/httpclientandroidlib/message/LineParser;",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/util/CharArrayBuffer;",
            ">;)[",
            "Lch/boye/httpclientandroidlib/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_e

    if-eqz p3, :cond_d

    if-eqz p4, :cond_c

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 182
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 186
    :goto_1
    invoke-interface {p0, v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_a

    .line 187
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_6

    .line 194
    :cond_2
    invoke-virtual {v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    const/16 v7, 0x20

    if-eq v3, v7, :cond_3

    invoke-virtual {v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_8

    :cond_3
    if-eqz v2, :cond_8

    .line 198
    :goto_2
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 199
    invoke-virtual {v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-lez p2, :cond_7

    .line 205
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    if-gt v3, p2, :cond_6

    goto :goto_4

    .line 207
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Maximum line length limit exceeded"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_7
    :goto_4
    invoke-virtual {v2, v7}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 210
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v1, v5, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    goto :goto_5

    .line 212
    :cond_8
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move-object v1, v0

    :goto_5
    if-lez p1, :cond_0

    .line 216
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_9

    goto :goto_0

    .line 217
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Maximum header count exceeded"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_a
    :goto_6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lch/boye/httpclientandroidlib/Header;

    .line 221
    :goto_7
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_b

    .line 222
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 224
    :try_start_0
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/message/LineParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    aput-object p1, p0, v5
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-object p0

    .line 175
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Header line list may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Line parser may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session input buffer may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public parse()Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    .line 250
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent parser state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    .line 261
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 268
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;

    .line 270
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 271
    iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I

    return-object v0

    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/io/SessionInputBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation
.end method
