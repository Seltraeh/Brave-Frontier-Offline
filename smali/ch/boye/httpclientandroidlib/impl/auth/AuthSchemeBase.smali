.class public abstract Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;-><init>(Lch/boye/httpclientandroidlib/auth/ChallengeState;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/auth/ChallengeState;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    return-void
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/AuthenticationException;
        }
    .end annotation

    .line 135
    invoke-interface {p0, p1, p2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    return-object p1
.end method

.method public getChallengeState()Lch/boye/httpclientandroidlib/auth/ChallengeState;
    .locals 1

    .line 155
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    return-object v0
.end method

.method public isProxy()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    if-eqz v0, :cond_0

    sget-object v1, Lch/boye/httpclientandroidlib/auth/ChallengeState;->PROXY:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lch/boye/httpclientandroidlib/Header;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 90
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;->TARGET:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    goto :goto_0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    sget-object v0, Lch/boye/httpclientandroidlib/auth/ChallengeState;->PROXY:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->challengeState:Lch/boye/httpclientandroidlib/auth/ChallengeState;

    .line 101
    :goto_0
    instance-of v0, p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    .line 103
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result p1

    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 109
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 110
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 113
    :goto_1
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move v1, p1

    .line 117
    :goto_2
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v0, p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V

    return-void

    .line 123
    :cond_4
    new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scheme identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_5
    new-instance p1, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;

    const-string v0, "Header value is null"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_6
    new-instance p1, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
