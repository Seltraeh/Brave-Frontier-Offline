.class public Lch/boye/httpclientandroidlib/client/CircularRedirectException;
.super Lch/boye/httpclientandroidlib/client/RedirectException;
.source "CircularRedirectException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5ec9428de010dedbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
