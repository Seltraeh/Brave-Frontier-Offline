.class public Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "URIBuilder.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method private buildString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 114
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    const-string v2, "//"

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    const-string v2, "@"

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 121
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_4
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "["

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :cond_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_1
    iget v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    if-ltz v1, :cond_6

    const-string v1, ":"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    :goto_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 133
    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    :cond_7
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 135
    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_8
    :goto_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_9

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 139
    :cond_9
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodeQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_a
    :goto_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    const-string v2, "#"

    if-eqz v1, :cond_b

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 145
    :cond_b
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodeFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private digestURI(Ljava/net/URI;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    .line 157
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->path:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 163
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-void
.end method

.method private encodeFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->encFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeQuery(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 176
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    sub-int/2addr v0, v1

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-static {p1, p2}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 2

    .line 268
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 271
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public build()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 322
    iget v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public removeQuery()Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 246
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    .line 304
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    .line 215
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->host:Ljava/lang/String;

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 2

    .line 282
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 285
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/NameValuePair;

    .line 288
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    .line 235
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 225
    :cond_0
    iput p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->port:I

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 1

    .line 257
    sget-object v0, Lch/boye/httpclientandroidlib/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    .line 187
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 0

    .line 196
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;
    .locals 1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/utils/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 343
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
