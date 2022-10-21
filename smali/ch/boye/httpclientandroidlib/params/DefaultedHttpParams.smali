.class public final Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private final local:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 60
    iput-object p2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNames(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/params/HttpParams;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    instance-of v0, p1, Lch/boye/httpclientandroidlib/params/HttpParamsNames;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lch/boye/httpclientandroidlib/params/HttpParamsNames;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/params/HttpParamsNames;->getNames()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "HttpParams instance does not implement HttpParamsNames"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copy()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->copy()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    .line 71
    new-instance v1, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v1
.end method

.method public getDefaultNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->getNames(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaults()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public getLocalNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->getNames(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->getNames(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->getNames(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 80
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p1

    return-object p1
.end method
