.class public Lch/boye/httpclientandroidlib/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private authOptions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/auth/AuthOption;",
            ">;"
        }
    .end annotation
.end field

.field private authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

.field private authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;

.field private credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

.field private state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-void
.end method


# virtual methods
.method public getAuthOptions()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authOptions:Ljava/util/Queue;

    return-object v0
.end method

.method public getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;
    .locals 1

    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    return-object v0
.end method

.method public getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;

    return-object v0
.end method

.method public getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-object v0
.end method

.method public getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;
    .locals 1

    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-object v0
.end method

.method public hasAuthOptions()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authOptions:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    return-void
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 67
    sget-object v0, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authOptions:Ljava/util/Queue;

    .line 69
    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    .line 70
    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;

    .line 71
    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-void
.end method

.method public setAuthScheme(Lch/boye/httpclientandroidlib/auth/AuthScheme;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    return-void

    .line 188
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    return-void
.end method

.method public setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;

    return-void
.end method

.method public setCredentials(Lch/boye/httpclientandroidlib/auth/Credentials;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-void
.end method

.method public setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    :goto_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state:"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->state:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    if-eqz v2, :cond_0

    const-string v2, "auth scheme:"

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    if-eqz v1, :cond_1

    const-string v1, "credentials present"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/Credentials;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 117
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    .line 118
    iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authOptions:Ljava/util/Queue;

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials may not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Auth scheme may not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/auth/AuthOption;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 149
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authOptions:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    .line 154
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Queue of auth options may not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
