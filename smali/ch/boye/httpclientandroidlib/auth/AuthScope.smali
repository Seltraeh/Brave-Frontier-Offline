.class public Lch/boye/httpclientandroidlib/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final ANY:Lch/boye/httpclientandroidlib/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String; = null

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthScope;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v1, v1}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY:Lch/boye/httpclientandroidlib/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2

    .line 124
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/auth/AuthScope;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    .line 170
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scope may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 157
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 142
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 107
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    if-gez p2, :cond_1

    const/4 p2, -0x1

    .line 108
    :cond_1
    iput p2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    if-nez p3, :cond_2

    .line 109
    sget-object p3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    :cond_2
    iput-object p3, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    if-nez p4, :cond_3

    .line 110
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 253
    :cond_1
    instance-of v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;

    if-nez v2, :cond_2

    .line 254
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 256
    :cond_2
    check-cast p1, Lch/boye/httpclientandroidlib/auth/AuthScope;

    .line 257
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    iget v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v2, p1}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 185
    iget v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 298
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 299
    iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 300
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 301
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public match(Lch/boye/httpclientandroidlib/auth/AuthScope;)I
    .locals 4

    .line 211
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v1, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v2, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 221
    :cond_2
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    return v1

    .line 225
    :cond_3
    :goto_1
    iget v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    iget v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    if-eq v2, v1, :cond_5

    if-eq v3, v1, :cond_5

    return v1

    .line 232
    :cond_5
    :goto_2
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 235
    :cond_6
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object p1, p1, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    if-eq p1, v3, :cond_7

    return v1

    :cond_7
    :goto_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 271
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x27

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "<any realm>"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    if-ltz v1, :cond_2

    const/16 v1, 0x3a

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    iget v1, p0, Lch/boye/httpclientandroidlib/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
