.class public Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;
.super Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
    }
.end annotation


# instance fields
.field private consumed:Z

.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 64
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void
.end method

.method static synthetic access$002(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z

    return p1
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 77
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z

    if-nez v0, :cond_0

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

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;

    invoke-direct {v0, p0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;-><init>(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z

    return-void
.end method
