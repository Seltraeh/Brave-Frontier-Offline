.class public Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpec;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

.field private final oneHeader:Z

.field private strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    return-void
.end method

.method private getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;
    .locals 2

    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    .line 91
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method

.method private getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;
    .locals 3

    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    .line 84
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;
    .locals 3

    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    .line 77
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 190
    instance-of v4, v3, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 193
    :cond_1
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 194
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 201
    :cond_3
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 204
    :cond_4
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 185
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List of cookies may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getVersion()I
    .locals 1

    .line 209
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .line 213
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getVersionHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 172
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 173
    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    .line 176
    :cond_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    .line 179
    :cond_1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    .line 170
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cookie origin may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cookie may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/Header;",
            "Lch/boye/httpclientandroidlib/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 103
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    .line 106
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    const-string v8, "version"

    .line 107
    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    const-string v8, "expires"

    .line 110
    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_5

    if-nez v5, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Set-Cookie2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 140
    :cond_4
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_5
    :goto_1
    sget-object v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;

    .line 120
    instance-of v1, p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v1, :cond_6

    .line 121
    check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v1

    .line 122
    new-instance v3, Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result p1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    goto :goto_2

    .line 126
    :cond_6
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 130
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 131
    invoke-virtual {v1, p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 132
    new-instance v3, Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    :goto_2
    new-array p1, v6, [Lch/boye/httpclientandroidlib/HeaderElement;

    .line 134
    invoke-virtual {v0, v1, v3}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    .line 135
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 128
    :cond_7
    new-instance p1, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cookie origin may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "best-match"

    return-object v0
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 154
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    :goto_0
    return-void

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cookie origin may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cookie may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
