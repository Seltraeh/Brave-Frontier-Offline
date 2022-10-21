.class public Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
    }
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

.field private state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;-><init>()V

    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    .line 72
    sget-object p1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NTLM engine may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/AuthenticationException;
        }
    .end annotation

    .line 117
    :try_start_0
    check-cast p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-eq p2, v0, :cond_2

    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_1

    .line 130
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object p2, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    goto :goto_1

    .line 138
    :cond_1
    new-instance p1, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_2
    :goto_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    sget-object p2, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 140
    :goto_1
    new-instance p2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 141
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Proxy-Authorization"

    .line 142
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "Authorization"

    .line 144
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_2
    const-string v0, ": NTLM "

    .line 146
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    new-instance p1, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-object p1

    .line 119
    :catch_0
    new-instance p2, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 100
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object p2, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_0

    .line 101
    sget-object p1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 103
    :cond_0
    sget-object p1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    :goto_0
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_1
    sget-object p2, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 108
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    :goto_1
    return-void
.end method
