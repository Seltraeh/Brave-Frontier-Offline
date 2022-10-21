.class public Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    return-void
.end method

.method private isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z
    .locals 5

    .line 100
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_0
    invoke-static {p1}, Lch/boye/httpclientandroidlib/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 110
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    if-nez v0, :cond_2

    return v2

    .line 113
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "*."

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/16 v0, 0x2e

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 118
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return v2
.end method


# virtual methods
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    return-void
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    return-void
.end method
