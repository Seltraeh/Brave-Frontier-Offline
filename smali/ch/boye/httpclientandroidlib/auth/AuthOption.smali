.class public final Lch/boye/httpclientandroidlib/auth/AuthOption;
.super Ljava/lang/Object;
.source "AuthOption.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

.field private final creds:Lch/boye/httpclientandroidlib/auth/Credentials;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/Credentials;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 48
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthOption;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    .line 49
    iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/AuthOption;->creds:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User credentials may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Auth scheme may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;
    .locals 1

    .line 53
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthOption;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    return-object v0
.end method

.method public getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;
    .locals 1

    .line 57
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthOption;->creds:Lch/boye/httpclientandroidlib/auth/Credentials;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthOption;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
