.class public Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;-><init>(Lch/boye/httpclientandroidlib/auth/ChallengeState;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/auth/ChallengeState;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;-><init>(Lch/boye/httpclientandroidlib/auth/ChallengeState;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return-void
.end method

.method public static authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/Header;
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/androidextra/Base64;->encode([BI)[B

    move-result-object p0

    .line 189
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    if-eqz p2, :cond_1

    const-string p2, "Proxy-Authorization"

    .line 191
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "Authorization"

    .line 193
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_1
    const-string p2, ": Basic "

    .line 195
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 196
    array-length v0, p0

    invoke-virtual {p1, p0, p2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V

    .line 198
    new-instance p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-object p0

    .line 178
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credentials may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/AuthenticationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 157
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p2

    invoke-static {p2}, Lch/boye/httpclientandroidlib/auth/params/AuthParams;->getCredentialCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return-void
.end method
