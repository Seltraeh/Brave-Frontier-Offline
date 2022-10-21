.class public final Lch/boye/httpclientandroidlib/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public static consumeQuietly(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0

    .line 66
    :try_start_0
    invoke-static {p0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getContentCharSet(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 145
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object p0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object p0

    .line 147
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 148
    aget-object p0, p0, v1

    const-string v1, "charset"

    invoke-interface {p0, v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getContentMimeType(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 175
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object p0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object p0

    .line 177
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 178
    aget-object p0, p0, v0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 105
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 113
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p0, v1

    const/16 v1, 0x1000

    if-gez p0, :cond_1

    const/16 p0, 0x1000

    .line 117
    :cond_1
    new-instance v2, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;

    invoke-direct {v2, p0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V

    new-array p0, v1, [B

    .line 120
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v2, p0, v3, v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    .line 111
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    .line 255
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/ParseException;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 202
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_5

    .line 210
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v2, v1

    if-gez v2, :cond_1

    const/16 v2, 0x1000

    .line 216
    :cond_1
    :try_start_1
    invoke-static {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->getOrDefault(Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/entity/ContentType;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    if-nez p1, :cond_3

    .line 225
    :try_start_2
    sget-object p1, Lch/boye/httpclientandroidlib/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    .line 227
    :cond_3
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 228
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 231
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p1, v1, v3, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catch_0
    move-exception p0

    .line 219
    :try_start_3
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP entity too large to be buffered in memory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 236
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    .line 200
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP entity may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
